.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

.field public static final ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final CALENDAR_PERMISSIONS:Ljava/util/Set;

.field public static final CALL_LOG_PERMISSIONS:Ljava/util/Set;

.field public static final CAMERA_PERMISSIONS:Ljava/util/Set;

.field public static final COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final CONTACTS_PERMISSIONS:Ljava/util/Set;

.field public static final FINE_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final MICROPHONE_PERMISSIONS:Ljava/util/Set;

.field public static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

.field public static final NOTIFICATION_PERMISSIONS:Ljava/util/Set;

.field public static final PHONE_PERMISSIONS:Ljava/util/Set;

.field public static final SENSORS_PERMISSIONS:Ljava/util/Set;

.field public static final SMS_PERMISSIONS:Ljava/util/Set;

.field public static final STORAGE_PERMISSIONS:Ljava/util/Set;


# instance fields
.field public final NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

.field public final mContext:Landroid/content/Context;

.field public mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mGrantExceptions:Landroid/util/ArrayMap;

.field public final mHandler:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

.field public mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public final mLock:Ljava/lang/Object;

.field public final mNotiBlockableDataByUid:Ljava/util/Map;

.field public final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mSyncAdapterPackagesProvider:Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

.field public mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 7
    .line 8
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string v1, "android.permission.CALL_PHONE"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v2, "android.permission.WRITE_CALL_LOG"

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v3, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 29
    .line 30
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v3, "android.permission.USE_SIP"

    .line 34
    .line 35
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 39
    .line 40
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 49
    .line 50
    const-string v3, "android.permission.READ_CONTACTS"

    .line 51
    .line 52
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const-string v3, "android.permission.WRITE_CONTACTS"

    .line 56
    .line 57
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const-string v3, "android.permission.GET_ACCOUNTS"

    .line 61
    .line 62
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALL_LOG_PERMISSIONS:Ljava/util/Set;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v0, Landroid/util/ArraySet;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 84
    .line 85
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 91
    .line 92
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 96
    .line 97
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v0, Landroid/util/ArraySet;

    .line 101
    .line 102
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 106
    .line 107
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v0, Landroid/util/ArraySet;

    .line 114
    .line 115
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 119
    .line 120
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v0, Landroid/util/ArraySet;

    .line 127
    .line 128
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FINE_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 132
    .line 133
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v0, Landroid/util/ArraySet;

    .line 137
    .line 138
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 142
    .line 143
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    .line 144
    .line 145
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v0, Landroid/util/ArraySet;

    .line 149
    .line 150
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 154
    .line 155
    const-string v1, "android.permission.READ_CALENDAR"

    .line 156
    .line 157
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 161
    .line 162
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    new-instance v0, Landroid/util/ArraySet;

    .line 166
    .line 167
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 171
    .line 172
    const-string v1, "android.permission.SEND_SMS"

    .line 173
    .line 174
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    const-string v1, "android.permission.RECEIVE_SMS"

    .line 178
    .line 179
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    const-string v1, "android.permission.READ_SMS"

    .line 183
    .line 184
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    .line 188
    .line 189
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    const-string v1, "android.permission.RECEIVE_MMS"

    .line 193
    .line 194
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    .line 198
    .line 199
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance v0, Landroid/util/ArraySet;

    .line 203
    .line 204
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 205
    .line 206
    .line 207
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 208
    .line 209
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 210
    .line 211
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance v0, Landroid/util/ArraySet;

    .line 215
    .line 216
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 217
    .line 218
    .line 219
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 220
    .line 221
    const-string v1, "android.permission.CAMERA"

    .line 222
    .line 223
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    new-instance v0, Landroid/util/ArraySet;

    .line 227
    .line 228
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 229
    .line 230
    .line 231
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 232
    .line 233
    const-string v1, "android.permission.BODY_SENSORS"

    .line 234
    .line 235
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 239
    .line 240
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    new-instance v0, Landroid/util/ArraySet;

    .line 244
    .line 245
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 246
    .line 247
    .line 248
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 249
    .line 250
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 251
    .line 252
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 256
    .line 257
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 261
    .line 262
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 266
    .line 267
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 271
    .line 272
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 276
    .line 277
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 281
    .line 282
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    new-instance v0, Landroid/util/ArraySet;

    .line 286
    .line 287
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 288
    .line 289
    .line 290
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 291
    .line 292
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 293
    .line 294
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 298
    .line 299
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 303
    .line 304
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    const-string v1, "android.permission.UWB_RANGING"

    .line 308
    .line 309
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 313
    .line 314
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    new-instance v0, Landroid/util/ArraySet;

    .line 318
    .line 319
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 320
    .line 321
    .line 322
    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 323
    .line 324
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 325
    .line 326
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    const-string v0, "DefaultPermGrantPolicy"

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-static {v1, v0, p1}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    .line 46
    .line 47
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 56
    .line 57
    return-void
.end method

.method public static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6
    .line 7
    const/16 v0, 0x16

    .line 8
    .line 9
    if-le p0, v0, :cond_0

    .line 10
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

.method public static revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    if-eqz v6, :cond_5

    .line 6
    .line 7
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v7, Landroid/util/ArraySet;

    .line 17
    .line 18
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v7, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    check-cast p2, Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    and-int/lit8 v2, v0, 0x20

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    and-int/lit8 v2, v0, 0x4

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    and-int/lit8 v0, v0, 0x10

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    if-nez p3, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p0, v1, v6, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 83
    .line 84
    .line 85
    const/16 v3, 0x20

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    .line 89
    move-object v2, v6

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final getDefaultProviderAuthorityPackage(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0xc2000

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p3

    .line 8
    :cond_1
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p3, p0

    :cond_2
    :goto_0
    return-object p3
.end method

.method public final getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0xc2000

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 p2, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-ge v0, p3, :cond_2

    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 30
    .line 31
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 32
    .line 33
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-object p2
.end method

.method public final getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;[Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v2, "android.intent.action.MAIN"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "android.intent.category.LAUNCHER"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    array-length v2, p2

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_2

    .line 22
    .line 23
    aget-object v4, p2, v3

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const v6, 0xc2000

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v1, v6, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method

.method public final grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "Granting permissions to sim call manager for user:"

    .line 5
    .line 6
    const-string v1, "DefaultPermGrantPolicy"

    .line 7
    .line 8
    invoke-static {p3, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v7, v0, [Ljava/util/Set;

    .line 13
    .line 14
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object v0, v7, v1

    .line 18
    .line 19
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aput-object v0, v7, v1

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v1, p0

    .line 31
    move-object v2, p1

    .line 32
    move v4, p3

    .line 33
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZ[Ljava/util/Set;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)V
    .locals 9

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.hardware.type.watch"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v7, 0x2

    .line 18
    const/4 v8, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-array v5, v7, [Ljava/util/Set;

    .line 22
    .line 23
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 24
    .line 25
    aput-object v0, v5, v6

    .line 26
    .line 27
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 28
    .line 29
    aput-object v0, v5, v8

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    move-object v0, p0

    .line 33
    move-object v1, p1

    .line 34
    move-object v2, p2

    .line 35
    move v3, p3

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-array v5, v8, [Ljava/util/Set;

    .line 41
    .line 42
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 43
    .line 44
    aput-object v0, v5, v6

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v0, p0

    .line 48
    move-object v1, p1

    .line 49
    move-object v2, p2

    .line 50
    move v3, p3

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    const/4 v0, 0x5

    .line 55
    new-array v5, v0, [Ljava/util/Set;

    .line 56
    .line 57
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 58
    .line 59
    aput-object v0, v5, v6

    .line 60
    .line 61
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 62
    .line 63
    aput-object v0, v5, v8

    .line 64
    .line 65
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 66
    .line 67
    aput-object v0, v5, v7

    .line 68
    .line 69
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    aput-object v0, v5, v1

    .line 73
    .line 74
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 75
    .line 76
    const/4 v1, 0x4

    .line 77
    aput-object v0, v5, v1

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    move-object v0, p0

    .line 81
    move-object v1, p1

    .line 82
    move-object v2, p2

    .line 83
    move v3, p3

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "android.hardware.type.automotive"

    .line 94
    .line 95
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    new-array v5, v8, [Ljava/util/Set;

    .line 102
    .line 103
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 104
    .line 105
    aput-object v0, v5, v6

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    move-object v0, p0

    .line 109
    move-object v1, p1

    .line 110
    move-object v2, p2

    .line 111
    move v3, p3

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v6, v0, [Ljava/util/Set;

    .line 3
    .line 4
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object v0, v6, v1

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object v0, v6, v1

    .line 13
    .line 14
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aput-object v0, v6, v1

    .line 18
    .line 19
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    aput-object v0, v6, v1

    .line 23
    .line 24
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    aput-object v0, v6, v1

    .line 28
    .line 29
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    aput-object v0, v6, v1

    .line 33
    .line 34
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    aput-object v0, v6, v1

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v1, p0

    .line 41
    move-object v2, p1

    .line 42
    move-object v3, p2

    .line 43
    move v4, p3

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    const-string v1, "DefaultPermGrantPolicy"

    .line 8
    .line 9
    const-string v2, "Granting permissions to default platform handlers for user "

    .line 10
    .line 11
    invoke-static {v9, v2, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 18
    .line 19
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 20
    .line 21
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 24
    .line 25
    iget-object v6, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 26
    .line 27
    iget-object v7, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 28
    .line 29
    iget-object v10, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 30
    .line 31
    iget-object v11, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {v4, v9}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v13, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v13, 0x0

    .line 43
    :goto_0
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v2, v9}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v14, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v14, 0x0

    .line 52
    :goto_1
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {v3, v9}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v15, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 v15, 0x0

    .line 61
    :goto_2
    if-eqz v5, :cond_3

    .line 62
    .line 63
    invoke-interface {v5, v9}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v5, v1

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/4 v5, 0x0

    .line 70
    :goto_3
    if-eqz v6, :cond_4

    .line 71
    .line 72
    invoke-interface {v6, v9}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v6, v1

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const/4 v6, 0x0

    .line 79
    :goto_4
    if-eqz v7, :cond_5

    .line 80
    .line 81
    invoke-interface {v7, v9}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move-object v7, v1

    .line 86
    goto :goto_5

    .line 87
    :cond_5
    const/4 v7, 0x0

    .line 88
    :goto_5
    if-eqz v10, :cond_6

    .line 89
    .line 90
    invoke-interface {v10, v9}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v10, v1

    .line 95
    goto :goto_6

    .line 96
    :cond_6
    const/4 v10, 0x0

    .line 97
    :goto_6
    if-eqz v11, :cond_7

    .line 98
    .line 99
    const-string v1, "com.android.contacts"

    .line 100
    .line 101
    iget-object v2, v11, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService;

    .line 102
    .line 103
    invoke-virtual {v2, v1, v9}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object v4, v1

    .line 108
    goto :goto_7

    .line 109
    :cond_7
    const/4 v4, 0x0

    .line 110
    :goto_7
    if-eqz v11, :cond_8

    .line 111
    .line 112
    const-string v1, "com.android.calendar"

    .line 113
    .line 114
    iget-object v2, v11, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService;

    .line 115
    .line 116
    invoke-virtual {v2, v1, v9}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v11, v1

    .line 121
    goto :goto_8

    .line 122
    :cond_8
    const/4 v11, 0x0

    .line 123
    :goto_8
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const/4 v2, 0x1

    .line 134
    new-array v1, v2, [Ljava/util/Set;

    .line 135
    .line 136
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 137
    .line 138
    const/4 v12, 0x0

    .line 139
    aput-object v16, v1, v12

    .line 140
    .line 141
    const/16 v18, 0x1

    .line 142
    .line 143
    move-object/from16 v19, v1

    .line 144
    .line 145
    move-object/from16 v1, p0

    .line 146
    .line 147
    move-object/from16 v2, p1

    .line 148
    .line 149
    move-object/from16 v20, v4

    .line 150
    .line 151
    move/from16 v4, p2

    .line 152
    .line 153
    move-object/from16 v21, v5

    .line 154
    .line 155
    move/from16 v5, v18

    .line 156
    .line 157
    move-object/from16 v22, v6

    .line 158
    .line 159
    move-object/from16 v6, v19

    .line 160
    .line 161
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 165
    .line 166
    const/4 v6, 0x2

    .line 167
    invoke-virtual {v1, v6, v9}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object v3, v1

    .line 176
    check-cast v3, Ljava/lang/String;

    .line 177
    .line 178
    new-array v5, v6, [Ljava/util/Set;

    .line 179
    .line 180
    sget-object v18, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 181
    .line 182
    aput-object v18, v5, v12

    .line 183
    .line 184
    const/4 v4, 0x1

    .line 185
    aput-object v16, v5, v4

    .line 186
    .line 187
    const/16 v19, 0x1

    .line 188
    .line 189
    move-object/from16 v1, p0

    .line 190
    .line 191
    move-object/from16 v2, p1

    .line 192
    .line 193
    move v12, v4

    .line 194
    move/from16 v4, p2

    .line 195
    .line 196
    move-object/from16 v23, v5

    .line 197
    .line 198
    move/from16 v5, v19

    .line 199
    .line 200
    move-object/from16 v6, v23

    .line 201
    .line 202
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 206
    .line 207
    const/4 v6, 0x4

    .line 208
    invoke-virtual {v1, v6, v9}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    move-object/from16 v19, v1

    .line 217
    .line 218
    check-cast v19, Ljava/lang/String;

    .line 219
    .line 220
    new-array v5, v12, [Ljava/util/Set;

    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    aput-object v18, v5, v1

    .line 224
    .line 225
    const/16 v23, 0x1

    .line 226
    .line 227
    move-object/from16 v1, p0

    .line 228
    .line 229
    move-object/from16 v2, p1

    .line 230
    .line 231
    move-object/from16 v3, v19

    .line 232
    .line 233
    move/from16 v4, p2

    .line 234
    .line 235
    move-object/from16 v25, v5

    .line 236
    .line 237
    move/from16 v5, v23

    .line 238
    .line 239
    move/from16 v23, v6

    .line 240
    .line 241
    move-object/from16 v6, v25

    .line 242
    .line 243
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 244
    .line 245
    .line 246
    const/4 v6, 0x3

    .line 247
    new-array v5, v6, [Ljava/util/Set;

    .line 248
    .line 249
    sget-object v25, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 250
    .line 251
    const/4 v1, 0x0

    .line 252
    aput-object v25, v5, v1

    .line 253
    .line 254
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 255
    .line 256
    aput-object v1, v5, v12

    .line 257
    .line 258
    const/4 v4, 0x2

    .line 259
    aput-object v16, v5, v4

    .line 260
    .line 261
    const/16 v24, 0x0

    .line 262
    .line 263
    move-object/from16 v1, p0

    .line 264
    .line 265
    move-object/from16 v2, p1

    .line 266
    .line 267
    move-object/from16 v3, v19

    .line 268
    .line 269
    move/from16 v4, p2

    .line 270
    .line 271
    move-object/from16 v19, v5

    .line 272
    .line 273
    move/from16 v5, v24

    .line 274
    .line 275
    move-object/from16 v6, v19

    .line 276
    .line 277
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 281
    .line 282
    invoke-virtual {v1, v12, v9}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    move-object/from16 v19, v1

    .line 291
    .line 292
    check-cast v19, Ljava/lang/String;

    .line 293
    .line 294
    const/4 v6, 0x5

    .line 295
    new-array v5, v6, [Ljava/util/Set;

    .line 296
    .line 297
    const/4 v1, 0x0

    .line 298
    aput-object v25, v5, v1

    .line 299
    .line 300
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 301
    .line 302
    aput-object v1, v5, v12

    .line 303
    .line 304
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 305
    .line 306
    const/4 v4, 0x2

    .line 307
    aput-object v1, v5, v4

    .line 308
    .line 309
    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 310
    .line 311
    const/4 v3, 0x3

    .line 312
    aput-object v24, v5, v3

    .line 313
    .line 314
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 315
    .line 316
    aput-object v1, v5, v23

    .line 317
    .line 318
    const/16 v25, 0x0

    .line 319
    .line 320
    move-object/from16 v1, p0

    .line 321
    .line 322
    move-object/from16 v2, p1

    .line 323
    .line 324
    move-object/from16 v3, v19

    .line 325
    .line 326
    move/from16 v4, p2

    .line 327
    .line 328
    move-object/from16 v26, v5

    .line 329
    .line 330
    move/from16 v5, v25

    .line 331
    .line 332
    move-object/from16 v6, v26

    .line 333
    .line 334
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 335
    .line 336
    .line 337
    new-array v6, v12, [Ljava/util/Set;

    .line 338
    .line 339
    const/4 v1, 0x0

    .line 340
    aput-object v16, v6, v1

    .line 341
    .line 342
    const/4 v5, 0x1

    .line 343
    move-object/from16 v1, p0

    .line 344
    .line 345
    move-object/from16 v2, p1

    .line 346
    .line 347
    move-object/from16 v3, v19

    .line 348
    .line 349
    move/from16 v4, p2

    .line 350
    .line 351
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 355
    .line 356
    const v2, 0x104032f

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    new-array v6, v12, [Ljava/util/Set;

    .line 364
    .line 365
    const/4 v1, 0x0

    .line 366
    aput-object v16, v6, v1

    .line 367
    .line 368
    const/4 v5, 0x0

    .line 369
    move-object/from16 v1, p0

    .line 370
    .line 371
    move-object/from16 v2, p1

    .line 372
    .line 373
    move/from16 v4, p2

    .line 374
    .line 375
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 379
    .line 380
    const v2, 0x104030e

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    new-array v6, v12, [Ljava/util/Set;

    .line 388
    .line 389
    const/4 v1, 0x0

    .line 390
    aput-object v16, v6, v1

    .line 391
    .line 392
    const/4 v5, 0x0

    .line 393
    move-object/from16 v1, p0

    .line 394
    .line 395
    move-object/from16 v2, p1

    .line 396
    .line 397
    move/from16 v4, p2

    .line 398
    .line 399
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 400
    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 403
    .line 404
    const v2, 0x104031b

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    new-array v6, v12, [Ljava/util/Set;

    .line 412
    .line 413
    const/4 v1, 0x0

    .line 414
    aput-object v16, v6, v1

    .line 415
    .line 416
    const/4 v5, 0x0

    .line 417
    move-object/from16 v1, p0

    .line 418
    .line 419
    move-object/from16 v2, p1

    .line 420
    .line 421
    move/from16 v4, p2

    .line 422
    .line 423
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 424
    .line 425
    .line 426
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 427
    .line 428
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    const/4 v6, 0x3

    .line 433
    new-array v5, v6, [Ljava/util/Set;

    .line 434
    .line 435
    const/4 v1, 0x0

    .line 436
    aput-object v24, v5, v1

    .line 437
    .line 438
    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 439
    .line 440
    aput-object v19, v5, v12

    .line 441
    .line 442
    const/4 v4, 0x2

    .line 443
    aput-object v18, v5, v4

    .line 444
    .line 445
    const/16 v24, 0x0

    .line 446
    .line 447
    move-object/from16 v1, p0

    .line 448
    .line 449
    move-object/from16 v2, p1

    .line 450
    .line 451
    move/from16 v4, p2

    .line 452
    .line 453
    move-object/from16 v25, v5

    .line 454
    .line 455
    move/from16 v5, v24

    .line 456
    .line 457
    move-object/from16 v6, v25

    .line 458
    .line 459
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 460
    .line 461
    .line 462
    const-string v1, "com.samsung.android.fast"

    .line 463
    .line 464
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    if-eqz v3, :cond_9

    .line 469
    .line 470
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_9

    .line 475
    .line 476
    const-string v1, "KOREA"

    .line 477
    .line 478
    const-string/jumbo v2, "ro.csc.country_code"

    .line 479
    .line 480
    .line 481
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eqz v1, :cond_a

    .line 490
    .line 491
    :cond_9
    move-object/from16 v27, v7

    .line 492
    .line 493
    goto :goto_9

    .line 494
    :cond_a
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 495
    .line 496
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    if-eqz v1, :cond_9

    .line 501
    .line 502
    const-string v2, "com.samsung.android.fast"

    .line 503
    .line 504
    const-string v4, "android"

    .line 505
    .line 506
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-nez v1, :cond_9

    .line 511
    .line 512
    new-instance v4, Landroid/util/ArraySet;

    .line 513
    .line 514
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 515
    .line 516
    .line 517
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 518
    .line 519
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 523
    .line 524
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    const/4 v6, 0x0

    .line 528
    const/4 v5, 0x0

    .line 529
    move-object/from16 v1, p0

    .line 530
    .line 531
    move-object/from16 v2, p1

    .line 532
    .line 533
    move-object/from16 v27, v7

    .line 534
    .line 535
    move/from16 v7, p2

    .line 536
    .line 537
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 538
    .line 539
    .line 540
    :goto_9
    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    .line 541
    .line 542
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    new-array v6, v12, [Ljava/util/Set;

    .line 547
    .line 548
    const/4 v1, 0x0

    .line 549
    aput-object v19, v6, v1

    .line 550
    .line 551
    const/4 v5, 0x0

    .line 552
    move-object/from16 v1, p0

    .line 553
    .line 554
    move-object/from16 v2, p1

    .line 555
    .line 556
    move/from16 v4, p2

    .line 557
    .line 558
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 559
    .line 560
    .line 561
    const-string/jumbo v1, "media"

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    const/4 v7, 0x2

    .line 569
    new-array v6, v7, [Ljava/util/Set;

    .line 570
    .line 571
    const/4 v1, 0x0

    .line 572
    aput-object v18, v6, v1

    .line 573
    .line 574
    aput-object v16, v6, v12

    .line 575
    .line 576
    const/4 v5, 0x1

    .line 577
    move-object/from16 v1, p0

    .line 578
    .line 579
    move-object/from16 v2, p1

    .line 580
    .line 581
    move/from16 v4, p2

    .line 582
    .line 583
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 584
    .line 585
    .line 586
    const-string v1, "downloads"

    .line 587
    .line 588
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    new-array v6, v7, [Ljava/util/Set;

    .line 593
    .line 594
    const/4 v1, 0x0

    .line 595
    aput-object v18, v6, v1

    .line 596
    .line 597
    aput-object v16, v6, v12

    .line 598
    .line 599
    const/4 v5, 0x1

    .line 600
    move-object/from16 v1, p0

    .line 601
    .line 602
    move-object/from16 v2, p1

    .line 603
    .line 604
    move/from16 v4, p2

    .line 605
    .line 606
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 607
    .line 608
    .line 609
    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    .line 610
    .line 611
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    new-array v6, v12, [Ljava/util/Set;

    .line 616
    .line 617
    const/4 v1, 0x0

    .line 618
    aput-object v18, v6, v1

    .line 619
    .line 620
    const/4 v5, 0x1

    .line 621
    move-object/from16 v1, p0

    .line 622
    .line 623
    move-object/from16 v2, p1

    .line 624
    .line 625
    move/from16 v4, p2

    .line 626
    .line 627
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 628
    .line 629
    .line 630
    const-string v1, "com.android.externalstorage.documents"

    .line 631
    .line 632
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    new-array v6, v12, [Ljava/util/Set;

    .line 637
    .line 638
    const/4 v1, 0x0

    .line 639
    aput-object v18, v6, v1

    .line 640
    .line 641
    const/4 v5, 0x1

    .line 642
    move-object/from16 v1, p0

    .line 643
    .line 644
    move-object/from16 v2, p1

    .line 645
    .line 646
    move/from16 v4, p2

    .line 647
    .line 648
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 649
    .line 650
    .line 651
    const-string v1, "android.credentials.INSTALL"

    .line 652
    .line 653
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    new-array v6, v12, [Ljava/util/Set;

    .line 658
    .line 659
    const/4 v1, 0x0

    .line 660
    aput-object v18, v6, v1

    .line 661
    .line 662
    const/4 v5, 0x1

    .line 663
    move-object/from16 v1, p0

    .line 664
    .line 665
    move-object/from16 v2, p1

    .line 666
    .line 667
    move/from16 v4, p2

    .line 668
    .line 669
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 670
    .line 671
    .line 672
    move-object/from16 v1, v22

    .line 673
    .line 674
    if-nez v1, :cond_c

    .line 675
    .line 676
    const-string v1, "android.intent.action.DIAL"

    .line 677
    .line 678
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)V

    .line 683
    .line 684
    .line 685
    :cond_b
    move-object/from16 v1, v27

    .line 686
    .line 687
    goto :goto_b

    .line 688
    :cond_c
    array-length v2, v1

    .line 689
    const/4 v3, 0x0

    .line 690
    :goto_a
    if-ge v3, v2, :cond_b

    .line 691
    .line 692
    aget-object v4, v1, v3

    .line 693
    .line 694
    invoke-virtual {v0, v8, v4, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)V

    .line 695
    .line 696
    .line 697
    add-int/lit8 v3, v3, 0x1

    .line 698
    .line 699
    goto :goto_a

    .line 700
    :goto_b
    if-eqz v1, :cond_e

    .line 701
    .line 702
    array-length v2, v1

    .line 703
    const/4 v3, 0x0

    .line 704
    :goto_c
    if-ge v3, v2, :cond_e

    .line 705
    .line 706
    aget-object v4, v1, v3

    .line 707
    .line 708
    invoke-virtual {v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    if-eqz v5, :cond_d

    .line 713
    .line 714
    invoke-virtual {v0, v8, v4, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 715
    .line 716
    .line 717
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 718
    .line 719
    goto :goto_c

    .line 720
    :cond_e
    if-eqz v10, :cond_f

    .line 721
    .line 722
    array-length v6, v10

    .line 723
    const/4 v5, 0x0

    .line 724
    :goto_d
    if-ge v5, v6, :cond_f

    .line 725
    .line 726
    aget-object v3, v10, v5

    .line 727
    .line 728
    new-array v4, v12, [Ljava/util/Set;

    .line 729
    .line 730
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 731
    .line 732
    const/4 v2, 0x0

    .line 733
    aput-object v1, v4, v2

    .line 734
    .line 735
    const/16 v16, 0x0

    .line 736
    .line 737
    move-object/from16 v1, p0

    .line 738
    .line 739
    move-object/from16 v2, p1

    .line 740
    .line 741
    move-object/from16 v18, v4

    .line 742
    .line 743
    move/from16 v4, p2

    .line 744
    .line 745
    move/from16 v19, v5

    .line 746
    .line 747
    move/from16 v5, v16

    .line 748
    .line 749
    move/from16 v16, v6

    .line 750
    .line 751
    move-object/from16 v6, v18

    .line 752
    .line 753
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 754
    .line 755
    .line 756
    add-int/lit8 v5, v19, 0x1

    .line 757
    .line 758
    move/from16 v6, v16

    .line 759
    .line 760
    goto :goto_d

    .line 761
    :cond_f
    move-object/from16 v1, v21

    .line 762
    .line 763
    if-nez v1, :cond_10

    .line 764
    .line 765
    const-string v1, "android.intent.category.APP_MESSAGING"

    .line 766
    .line 767
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)V

    .line 772
    .line 773
    .line 774
    goto :goto_f

    .line 775
    :cond_10
    array-length v2, v1

    .line 776
    const/4 v3, 0x0

    .line 777
    :goto_e
    if-ge v3, v2, :cond_11

    .line 778
    .line 779
    aget-object v4, v1, v3

    .line 780
    .line 781
    invoke-virtual {v0, v8, v4, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)V

    .line 782
    .line 783
    .line 784
    add-int/lit8 v3, v3, 0x1

    .line 785
    .line 786
    goto :goto_e

    .line 787
    :cond_11
    :goto_f
    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    .line 788
    .line 789
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    const/4 v10, 0x3

    .line 794
    new-array v6, v10, [Ljava/util/Set;

    .line 795
    .line 796
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 797
    .line 798
    const/4 v1, 0x0

    .line 799
    aput-object v16, v6, v1

    .line 800
    .line 801
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 802
    .line 803
    aput-object v1, v6, v12

    .line 804
    .line 805
    sget-object v18, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 806
    .line 807
    aput-object v18, v6, v7

    .line 808
    .line 809
    const/4 v5, 0x1

    .line 810
    move-object/from16 v1, p0

    .line 811
    .line 812
    move-object/from16 v2, p1

    .line 813
    .line 814
    move/from16 v4, p2

    .line 815
    .line 816
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 817
    .line 818
    .line 819
    const-string v1, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    .line 820
    .line 821
    new-instance v2, Landroid/content/Intent;

    .line 822
    .line 823
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    new-array v6, v12, [Ljava/util/Set;

    .line 831
    .line 832
    const/4 v1, 0x0

    .line 833
    aput-object v16, v6, v1

    .line 834
    .line 835
    const/4 v5, 0x0

    .line 836
    move-object/from16 v1, p0

    .line 837
    .line 838
    move-object/from16 v2, p1

    .line 839
    .line 840
    move/from16 v4, p2

    .line 841
    .line 842
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 843
    .line 844
    .line 845
    const-string v1, "android.intent.category.APP_CALENDAR"

    .line 846
    .line 847
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    new-array v6, v10, [Ljava/util/Set;

    .line 852
    .line 853
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 854
    .line 855
    const/4 v1, 0x0

    .line 856
    aput-object v16, v6, v1

    .line 857
    .line 858
    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 859
    .line 860
    aput-object v19, v6, v12

    .line 861
    .line 862
    aput-object v18, v6, v7

    .line 863
    .line 864
    const/4 v5, 0x0

    .line 865
    move-object/from16 v1, p0

    .line 866
    .line 867
    move-object/from16 v2, p1

    .line 868
    .line 869
    move/from16 v4, p2

    .line 870
    .line 871
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 872
    .line 873
    .line 874
    const-string v1, "com.android.calendar"

    .line 875
    .line 876
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v21

    .line 880
    new-array v6, v7, [Ljava/util/Set;

    .line 881
    .line 882
    const/4 v1, 0x0

    .line 883
    aput-object v19, v6, v1

    .line 884
    .line 885
    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 886
    .line 887
    aput-object v22, v6, v12

    .line 888
    .line 889
    const/4 v5, 0x0

    .line 890
    move-object/from16 v1, p0

    .line 891
    .line 892
    move-object/from16 v2, p1

    .line 893
    .line 894
    move-object/from16 v3, v21

    .line 895
    .line 896
    move/from16 v4, p2

    .line 897
    .line 898
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 899
    .line 900
    .line 901
    new-array v6, v12, [Ljava/util/Set;

    .line 902
    .line 903
    const/4 v1, 0x0

    .line 904
    aput-object v16, v6, v1

    .line 905
    .line 906
    const/4 v5, 0x1

    .line 907
    move-object/from16 v1, p0

    .line 908
    .line 909
    move-object/from16 v2, p1

    .line 910
    .line 911
    move-object/from16 v3, v21

    .line 912
    .line 913
    move/from16 v4, p2

    .line 914
    .line 915
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 916
    .line 917
    .line 918
    if-eqz v11, :cond_12

    .line 919
    .line 920
    invoke-virtual {v0, v8, v11, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;[Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 921
    .line 922
    .line 923
    move-result-object v11

    .line 924
    new-array v6, v12, [Ljava/util/Set;

    .line 925
    .line 926
    const/4 v1, 0x0

    .line 927
    aput-object v16, v6, v1

    .line 928
    .line 929
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 930
    .line 931
    .line 932
    move-result v5

    .line 933
    const/4 v4, 0x0

    .line 934
    :goto_10
    if-ge v4, v5, :cond_12

    .line 935
    .line 936
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    move-object v3, v1

    .line 941
    check-cast v3, Ljava/lang/String;

    .line 942
    .line 943
    const/16 v21, 0x0

    .line 944
    .line 945
    move-object/from16 v1, p0

    .line 946
    .line 947
    move-object/from16 v2, p1

    .line 948
    .line 949
    move/from16 v24, v4

    .line 950
    .line 951
    move/from16 v4, p2

    .line 952
    .line 953
    move/from16 v25, v5

    .line 954
    .line 955
    move/from16 v5, v21

    .line 956
    .line 957
    move-object/from16 v21, v6

    .line 958
    .line 959
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 960
    .line 961
    .line 962
    add-int/lit8 v4, v24, 0x1

    .line 963
    .line 964
    move-object/from16 v6, v21

    .line 965
    .line 966
    move/from16 v5, v25

    .line 967
    .line 968
    goto :goto_10

    .line 969
    :cond_12
    const-string v1, "com.samsung.android.scs"

    .line 970
    .line 971
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    if-eqz v3, :cond_13

    .line 976
    .line 977
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 978
    .line 979
    .line 980
    move-result v1

    .line 981
    if-eqz v1, :cond_13

    .line 982
    .line 983
    new-instance v4, Landroid/util/ArraySet;

    .line 984
    .line 985
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 986
    .line 987
    .line 988
    const-string v1, "android.permission.READ_CONTACTS"

    .line 989
    .line 990
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    const-string v1, "android.permission.READ_CALENDAR"

    .line 994
    .line 995
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 999
    .line 1000
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    const-string v1, "android.permission.READ_SMS"

    .line 1004
    .line 1005
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1006
    .line 1007
    .line 1008
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1009
    .line 1010
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    const/4 v6, 0x0

    .line 1014
    const/4 v5, 0x0

    .line 1015
    move-object/from16 v1, p0

    .line 1016
    .line 1017
    move-object/from16 v2, p1

    .line 1018
    .line 1019
    move v11, v7

    .line 1020
    move/from16 v7, p2

    .line 1021
    .line 1022
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_11

    .line 1026
    :cond_13
    move v11, v7

    .line 1027
    :goto_11
    const-string v1, "android.intent.category.APP_CONTACTS"

    .line 1028
    .line 1029
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    new-array v6, v11, [Ljava/util/Set;

    .line 1034
    .line 1035
    const/4 v1, 0x0

    .line 1036
    aput-object v19, v6, v1

    .line 1037
    .line 1038
    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 1039
    .line 1040
    aput-object v7, v6, v12

    .line 1041
    .line 1042
    const/4 v5, 0x0

    .line 1043
    move-object/from16 v1, p0

    .line 1044
    .line 1045
    move-object/from16 v2, p1

    .line 1046
    .line 1047
    move/from16 v4, p2

    .line 1048
    .line 1049
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1050
    .line 1051
    .line 1052
    move-object/from16 v1, v20

    .line 1053
    .line 1054
    if-eqz v1, :cond_14

    .line 1055
    .line 1056
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;[Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v6

    .line 1060
    new-array v5, v12, [Ljava/util/Set;

    .line 1061
    .line 1062
    const/4 v1, 0x0

    .line 1063
    aput-object v19, v5, v1

    .line 1064
    .line 1065
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1066
    .line 1067
    .line 1068
    move-result v4

    .line 1069
    const/4 v3, 0x0

    .line 1070
    :goto_12
    if-ge v3, v4, :cond_14

    .line 1071
    .line 1072
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    move-object/from16 v20, v1

    .line 1077
    .line 1078
    check-cast v20, Ljava/lang/String;

    .line 1079
    .line 1080
    const/16 v21, 0x0

    .line 1081
    .line 1082
    move-object/from16 v1, p0

    .line 1083
    .line 1084
    move-object/from16 v2, p1

    .line 1085
    .line 1086
    move/from16 v24, v3

    .line 1087
    .line 1088
    move-object/from16 v3, v20

    .line 1089
    .line 1090
    move/from16 v20, v4

    .line 1091
    .line 1092
    move/from16 v4, p2

    .line 1093
    .line 1094
    move-object/from16 v25, v5

    .line 1095
    .line 1096
    move/from16 v5, v21

    .line 1097
    .line 1098
    move-object/from16 v21, v6

    .line 1099
    .line 1100
    move-object/from16 v6, v25

    .line 1101
    .line 1102
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1103
    .line 1104
    .line 1105
    add-int/lit8 v3, v24, 0x1

    .line 1106
    .line 1107
    move/from16 v4, v20

    .line 1108
    .line 1109
    move-object/from16 v6, v21

    .line 1110
    .line 1111
    move-object/from16 v5, v25

    .line 1112
    .line 1113
    goto :goto_12

    .line 1114
    :cond_14
    const-string v1, "com.android.contacts"

    .line 1115
    .line 1116
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v20

    .line 1120
    new-array v6, v10, [Ljava/util/Set;

    .line 1121
    .line 1122
    const/4 v1, 0x0

    .line 1123
    aput-object v19, v6, v1

    .line 1124
    .line 1125
    aput-object v7, v6, v12

    .line 1126
    .line 1127
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALL_LOG_PERMISSIONS:Ljava/util/Set;

    .line 1128
    .line 1129
    aput-object v1, v6, v11

    .line 1130
    .line 1131
    const/4 v5, 0x1

    .line 1132
    move-object/from16 v1, p0

    .line 1133
    .line 1134
    move-object/from16 v2, p1

    .line 1135
    .line 1136
    move-object/from16 v3, v20

    .line 1137
    .line 1138
    move/from16 v4, p2

    .line 1139
    .line 1140
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1141
    .line 1142
    .line 1143
    new-array v6, v12, [Ljava/util/Set;

    .line 1144
    .line 1145
    const/4 v1, 0x0

    .line 1146
    aput-object v22, v6, v1

    .line 1147
    .line 1148
    const/4 v5, 0x0

    .line 1149
    move-object/from16 v1, p0

    .line 1150
    .line 1151
    move-object/from16 v2, p1

    .line 1152
    .line 1153
    move-object/from16 v3, v20

    .line 1154
    .line 1155
    move/from16 v4, p2

    .line 1156
    .line 1157
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1158
    .line 1159
    .line 1160
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 1161
    .line 1162
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v3

    .line 1166
    new-array v6, v11, [Ljava/util/Set;

    .line 1167
    .line 1168
    const/4 v1, 0x0

    .line 1169
    aput-object v19, v6, v1

    .line 1170
    .line 1171
    aput-object v18, v6, v12

    .line 1172
    .line 1173
    const/4 v5, 0x0

    .line 1174
    move-object/from16 v1, p0

    .line 1175
    .line 1176
    move-object/from16 v2, p1

    .line 1177
    .line 1178
    move/from16 v4, p2

    .line 1179
    .line 1180
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1181
    .line 1182
    .line 1183
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1184
    .line 1185
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    const-string v2, "android.hardware.type.automotive"

    .line 1190
    .line 1191
    const/4 v3, 0x0

    .line 1192
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v1

    .line 1196
    if-eqz v1, :cond_15

    .line 1197
    .line 1198
    const-string v1, "android.intent.category.APP_MAPS"

    .line 1199
    .line 1200
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v4

    .line 1204
    new-array v6, v12, [Ljava/util/Set;

    .line 1205
    .line 1206
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1207
    .line 1208
    aput-object v1, v6, v3

    .line 1209
    .line 1210
    const/4 v5, 0x0

    .line 1211
    move-object/from16 v1, p0

    .line 1212
    .line 1213
    move-object/from16 v2, p1

    .line 1214
    .line 1215
    move-object v3, v4

    .line 1216
    move/from16 v4, p2

    .line 1217
    .line 1218
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1219
    .line 1220
    .line 1221
    :cond_15
    const-string v1, "android.intent.category.APP_EMAIL"

    .line 1222
    .line 1223
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v3

    .line 1227
    new-array v6, v11, [Ljava/util/Set;

    .line 1228
    .line 1229
    const/4 v1, 0x0

    .line 1230
    aput-object v19, v6, v1

    .line 1231
    .line 1232
    aput-object v16, v6, v12

    .line 1233
    .line 1234
    const/4 v5, 0x0

    .line 1235
    move-object/from16 v1, p0

    .line 1236
    .line 1237
    move-object/from16 v2, p1

    .line 1238
    .line 1239
    move/from16 v4, p2

    .line 1240
    .line 1241
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1242
    .line 1243
    .line 1244
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1245
    .line 1246
    const/4 v7, 0x5

    .line 1247
    invoke-virtual {v1, v7, v9}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v1

    .line 1255
    check-cast v1, Ljava/lang/String;

    .line 1256
    .line 1257
    if-nez v1, :cond_16

    .line 1258
    .line 1259
    const-string v1, "android.intent.category.APP_BROWSER"

    .line 1260
    .line 1261
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v2

    .line 1269
    if-nez v2, :cond_16

    .line 1270
    .line 1271
    const/4 v1, 0x0

    .line 1272
    :cond_16
    new-array v6, v12, [Ljava/util/Set;

    .line 1273
    .line 1274
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1275
    .line 1276
    const/4 v3, 0x0

    .line 1277
    aput-object v2, v6, v3

    .line 1278
    .line 1279
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    const/4 v5, 0x0

    .line 1284
    const/16 v16, 0x0

    .line 1285
    .line 1286
    move-object/from16 v1, p0

    .line 1287
    .line 1288
    move-object/from16 v2, p1

    .line 1289
    .line 1290
    move/from16 v4, p2

    .line 1291
    .line 1292
    move-object/from16 v17, v6

    .line 1293
    .line 1294
    move/from16 v6, v16

    .line 1295
    .line 1296
    move-object/from16 v7, v17

    .line 1297
    .line 1298
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZ[Ljava/util/Set;)V

    .line 1299
    .line 1300
    .line 1301
    const/4 v7, 0x7

    .line 1302
    const/16 v6, 0x8

    .line 1303
    .line 1304
    const/4 v5, 0x6

    .line 1305
    if-eqz v13, :cond_17

    .line 1306
    .line 1307
    array-length v4, v13

    .line 1308
    const/4 v3, 0x0

    .line 1309
    :goto_13
    if-ge v3, v4, :cond_17

    .line 1310
    .line 1311
    aget-object v2, v13, v3

    .line 1312
    .line 1313
    new-array v1, v6, [Ljava/util/Set;

    .line 1314
    .line 1315
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 1316
    .line 1317
    const/16 v17, 0x0

    .line 1318
    .line 1319
    aput-object v16, v1, v17

    .line 1320
    .line 1321
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 1322
    .line 1323
    aput-object v16, v1, v12

    .line 1324
    .line 1325
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 1326
    .line 1327
    aput-object v16, v1, v11

    .line 1328
    .line 1329
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 1330
    .line 1331
    aput-object v16, v1, v10

    .line 1332
    .line 1333
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 1334
    .line 1335
    aput-object v16, v1, v23

    .line 1336
    .line 1337
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1338
    .line 1339
    const/4 v10, 0x5

    .line 1340
    aput-object v16, v1, v10

    .line 1341
    .line 1342
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 1343
    .line 1344
    aput-object v16, v1, v5

    .line 1345
    .line 1346
    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 1347
    .line 1348
    aput-object v16, v1, v7

    .line 1349
    .line 1350
    const/16 v16, 0x0

    .line 1351
    .line 1352
    move-object/from16 v17, v1

    .line 1353
    .line 1354
    move-object/from16 v1, p0

    .line 1355
    .line 1356
    move-object/from16 v18, v2

    .line 1357
    .line 1358
    move-object/from16 v2, p1

    .line 1359
    .line 1360
    move/from16 v19, v3

    .line 1361
    .line 1362
    move-object/from16 v3, v18

    .line 1363
    .line 1364
    move/from16 v20, v4

    .line 1365
    .line 1366
    move/from16 v4, p2

    .line 1367
    .line 1368
    move v7, v5

    .line 1369
    move/from16 v5, v16

    .line 1370
    .line 1371
    move/from16 v16, v6

    .line 1372
    .line 1373
    move-object/from16 v6, v17

    .line 1374
    .line 1375
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1376
    .line 1377
    .line 1378
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FINE_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1379
    .line 1380
    move-object/from16 v3, v18

    .line 1381
    .line 1382
    const/4 v2, 0x0

    .line 1383
    invoke-static {v8, v3, v1, v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1384
    .line 1385
    .line 1386
    add-int/lit8 v3, v19, 0x1

    .line 1387
    .line 1388
    move v5, v7

    .line 1389
    move/from16 v6, v16

    .line 1390
    .line 1391
    move/from16 v4, v20

    .line 1392
    .line 1393
    const/4 v7, 0x7

    .line 1394
    const/4 v10, 0x3

    .line 1395
    goto :goto_13

    .line 1396
    :cond_17
    move v7, v5

    .line 1397
    move/from16 v16, v6

    .line 1398
    .line 1399
    const/4 v10, 0x5

    .line 1400
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 1401
    .line 1402
    .line 1403
    move-result v1

    .line 1404
    if-eqz v1, :cond_18

    .line 1405
    .line 1406
    const-string v1, "android.search.action.GLOBAL_SEARCH"

    .line 1407
    .line 1408
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v3

    .line 1412
    new-array v6, v10, [Ljava/util/Set;

    .line 1413
    .line 1414
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 1415
    .line 1416
    const/4 v2, 0x0

    .line 1417
    aput-object v1, v6, v2

    .line 1418
    .line 1419
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1420
    .line 1421
    aput-object v1, v6, v12

    .line 1422
    .line 1423
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 1424
    .line 1425
    aput-object v1, v6, v11

    .line 1426
    .line 1427
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 1428
    .line 1429
    const/4 v2, 0x3

    .line 1430
    aput-object v1, v6, v2

    .line 1431
    .line 1432
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 1433
    .line 1434
    aput-object v1, v6, v23

    .line 1435
    .line 1436
    const/4 v5, 0x0

    .line 1437
    move-object/from16 v1, p0

    .line 1438
    .line 1439
    move-object/from16 v2, p1

    .line 1440
    .line 1441
    move/from16 v4, p2

    .line 1442
    .line 1443
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1444
    .line 1445
    .line 1446
    :cond_18
    new-instance v1, Landroid/content/Intent;

    .line 1447
    .line 1448
    const-string v2, "android.speech.RecognitionService"

    .line 1449
    .line 1450
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    const-string v2, "android.intent.category.DEFAULT"

    .line 1454
    .line 1455
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v1

    .line 1459
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v3

    .line 1463
    new-array v6, v12, [Ljava/util/Set;

    .line 1464
    .line 1465
    sget-object v13, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 1466
    .line 1467
    const/4 v1, 0x0

    .line 1468
    aput-object v13, v6, v1

    .line 1469
    .line 1470
    const/4 v5, 0x0

    .line 1471
    move-object/from16 v1, p0

    .line 1472
    .line 1473
    move-object/from16 v2, p1

    .line 1474
    .line 1475
    move/from16 v4, p2

    .line 1476
    .line 1477
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1478
    .line 1479
    .line 1480
    const-string v1, "CHINA"

    .line 1481
    .line 1482
    const-string/jumbo v2, "ro.csc.country_code"

    .line 1483
    .line 1484
    .line 1485
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v2

    .line 1489
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1490
    .line 1491
    .line 1492
    move-result v1

    .line 1493
    const/16 v6, 0x9

    .line 1494
    .line 1495
    if-eqz v1, :cond_19

    .line 1496
    .line 1497
    const-string v3, "com.google.android.gms"

    .line 1498
    .line 1499
    new-array v5, v6, [Ljava/util/Set;

    .line 1500
    .line 1501
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 1502
    .line 1503
    const/4 v2, 0x0

    .line 1504
    aput-object v1, v5, v2

    .line 1505
    .line 1506
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 1507
    .line 1508
    aput-object v1, v5, v12

    .line 1509
    .line 1510
    aput-object v13, v5, v11

    .line 1511
    .line 1512
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 1513
    .line 1514
    const/4 v2, 0x3

    .line 1515
    aput-object v1, v5, v2

    .line 1516
    .line 1517
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 1518
    .line 1519
    aput-object v1, v5, v23

    .line 1520
    .line 1521
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 1522
    .line 1523
    aput-object v1, v5, v10

    .line 1524
    .line 1525
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 1526
    .line 1527
    aput-object v1, v5, v7

    .line 1528
    .line 1529
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 1530
    .line 1531
    const/4 v2, 0x7

    .line 1532
    aput-object v1, v5, v2

    .line 1533
    .line 1534
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 1535
    .line 1536
    aput-object v1, v5, v16

    .line 1537
    .line 1538
    const/4 v13, 0x0

    .line 1539
    move-object/from16 v1, p0

    .line 1540
    .line 1541
    move-object/from16 v2, p1

    .line 1542
    .line 1543
    move/from16 v4, p2

    .line 1544
    .line 1545
    move-object/from16 v17, v5

    .line 1546
    .line 1547
    move v5, v13

    .line 1548
    move v13, v6

    .line 1549
    move-object/from16 v6, v17

    .line 1550
    .line 1551
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1552
    .line 1553
    .line 1554
    const-string v3, "com.google.android.gms"

    .line 1555
    .line 1556
    new-array v6, v11, [Ljava/util/Set;

    .line 1557
    .line 1558
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1559
    .line 1560
    const/4 v2, 0x0

    .line 1561
    aput-object v1, v6, v2

    .line 1562
    .line 1563
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 1564
    .line 1565
    aput-object v1, v6, v12

    .line 1566
    .line 1567
    const/4 v5, 0x1

    .line 1568
    move-object/from16 v1, p0

    .line 1569
    .line 1570
    move-object/from16 v2, p1

    .line 1571
    .line 1572
    move/from16 v4, p2

    .line 1573
    .line 1574
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1575
    .line 1576
    .line 1577
    goto :goto_14

    .line 1578
    :cond_19
    move v13, v6

    .line 1579
    :goto_14
    if-eqz v14, :cond_1a

    .line 1580
    .line 1581
    array-length v6, v14

    .line 1582
    const/4 v5, 0x0

    .line 1583
    :goto_15
    if-ge v5, v6, :cond_1a

    .line 1584
    .line 1585
    aget-object v17, v14, v5

    .line 1586
    .line 1587
    const/16 v1, 0xa

    .line 1588
    .line 1589
    new-array v4, v1, [Ljava/util/Set;

    .line 1590
    .line 1591
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 1592
    .line 1593
    const/4 v2, 0x0

    .line 1594
    aput-object v1, v4, v2

    .line 1595
    .line 1596
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 1597
    .line 1598
    aput-object v1, v4, v12

    .line 1599
    .line 1600
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 1601
    .line 1602
    aput-object v1, v4, v11

    .line 1603
    .line 1604
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 1605
    .line 1606
    const/4 v2, 0x3

    .line 1607
    aput-object v1, v4, v2

    .line 1608
    .line 1609
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 1610
    .line 1611
    aput-object v1, v4, v23

    .line 1612
    .line 1613
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 1614
    .line 1615
    aput-object v1, v4, v10

    .line 1616
    .line 1617
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 1618
    .line 1619
    aput-object v1, v4, v7

    .line 1620
    .line 1621
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 1622
    .line 1623
    const/16 v18, 0x7

    .line 1624
    .line 1625
    aput-object v1, v4, v18

    .line 1626
    .line 1627
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 1628
    .line 1629
    aput-object v1, v4, v16

    .line 1630
    .line 1631
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 1632
    .line 1633
    aput-object v1, v4, v13

    .line 1634
    .line 1635
    const/16 v19, 0x0

    .line 1636
    .line 1637
    move-object/from16 v1, p0

    .line 1638
    .line 1639
    move-object/from16 v2, p1

    .line 1640
    .line 1641
    move-object/from16 v3, v17

    .line 1642
    .line 1643
    move-object/from16 v20, v4

    .line 1644
    .line 1645
    move/from16 v4, p2

    .line 1646
    .line 1647
    move/from16 v21, v5

    .line 1648
    .line 1649
    move/from16 v5, v19

    .line 1650
    .line 1651
    move/from16 v19, v6

    .line 1652
    .line 1653
    move-object/from16 v6, v20

    .line 1654
    .line 1655
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1656
    .line 1657
    .line 1658
    new-array v6, v11, [Ljava/util/Set;

    .line 1659
    .line 1660
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1661
    .line 1662
    const/4 v2, 0x0

    .line 1663
    aput-object v1, v6, v2

    .line 1664
    .line 1665
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 1666
    .line 1667
    aput-object v1, v6, v12

    .line 1668
    .line 1669
    const/4 v5, 0x1

    .line 1670
    move-object/from16 v1, p0

    .line 1671
    .line 1672
    move-object/from16 v2, p1

    .line 1673
    .line 1674
    move-object/from16 v3, v17

    .line 1675
    .line 1676
    move/from16 v4, p2

    .line 1677
    .line 1678
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1679
    .line 1680
    .line 1681
    add-int/lit8 v5, v21, 0x1

    .line 1682
    .line 1683
    move/from16 v6, v19

    .line 1684
    .line 1685
    goto :goto_15

    .line 1686
    :cond_1a
    if-eqz v15, :cond_1b

    .line 1687
    .line 1688
    array-length v10, v15

    .line 1689
    const/4 v13, 0x0

    .line 1690
    :goto_16
    if-ge v13, v10, :cond_1b

    .line 1691
    .line 1692
    aget-object v14, v15, v13

    .line 1693
    .line 1694
    new-array v6, v11, [Ljava/util/Set;

    .line 1695
    .line 1696
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1697
    .line 1698
    const/4 v2, 0x0

    .line 1699
    aput-object v1, v6, v2

    .line 1700
    .line 1701
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 1702
    .line 1703
    aput-object v1, v6, v12

    .line 1704
    .line 1705
    const/4 v5, 0x0

    .line 1706
    move-object/from16 v1, p0

    .line 1707
    .line 1708
    move-object/from16 v2, p1

    .line 1709
    .line 1710
    move-object v3, v14

    .line 1711
    move/from16 v4, p2

    .line 1712
    .line 1713
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1714
    .line 1715
    .line 1716
    new-array v6, v12, [Ljava/util/Set;

    .line 1717
    .line 1718
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 1719
    .line 1720
    const/4 v2, 0x0

    .line 1721
    aput-object v1, v6, v2

    .line 1722
    .line 1723
    const/4 v5, 0x1

    .line 1724
    move-object/from16 v1, p0

    .line 1725
    .line 1726
    move-object/from16 v2, p1

    .line 1727
    .line 1728
    move-object v3, v14

    .line 1729
    move/from16 v4, p2

    .line 1730
    .line 1731
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1732
    .line 1733
    .line 1734
    add-int/lit8 v13, v13, 0x1

    .line 1735
    .line 1736
    goto :goto_16

    .line 1737
    :cond_1b
    new-instance v1, Landroid/content/Intent;

    .line 1738
    .line 1739
    const-string v2, "android.intent.action.VIEW"

    .line 1740
    .line 1741
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    .line 1743
    .line 1744
    const-string v2, "android.intent.category.DEFAULT"

    .line 1745
    .line 1746
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v1

    .line 1750
    new-instance v2, Ljava/io/File;

    .line 1751
    .line 1752
    const-string v3, "foo.mp3"

    .line 1753
    .line 1754
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1755
    .line 1756
    .line 1757
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v2

    .line 1761
    const-string v3, "audio/mpeg"

    .line 1762
    .line 1763
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v1

    .line 1767
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v3

    .line 1771
    new-array v6, v12, [Ljava/util/Set;

    .line 1772
    .line 1773
    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 1774
    .line 1775
    const/4 v1, 0x0

    .line 1776
    aput-object v10, v6, v1

    .line 1777
    .line 1778
    const/4 v5, 0x0

    .line 1779
    move-object/from16 v1, p0

    .line 1780
    .line 1781
    move-object/from16 v2, p1

    .line 1782
    .line 1783
    move/from16 v4, p2

    .line 1784
    .line 1785
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1786
    .line 1787
    .line 1788
    new-instance v1, Landroid/content/Intent;

    .line 1789
    .line 1790
    const-string v2, "android.intent.action.MAIN"

    .line 1791
    .line 1792
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    const-string v2, "android.intent.category.HOME"

    .line 1796
    .line 1797
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v1

    .line 1801
    const-string v2, "android.intent.category.LAUNCHER_APP"

    .line 1802
    .line 1803
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v1

    .line 1807
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v3

    .line 1811
    new-array v6, v11, [Ljava/util/Set;

    .line 1812
    .line 1813
    sget-object v13, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 1814
    .line 1815
    const/4 v1, 0x0

    .line 1816
    aput-object v13, v6, v1

    .line 1817
    .line 1818
    sget-object v14, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 1819
    .line 1820
    aput-object v14, v6, v12

    .line 1821
    .line 1822
    const/4 v5, 0x0

    .line 1823
    move-object/from16 v1, p0

    .line 1824
    .line 1825
    move-object/from16 v2, p1

    .line 1826
    .line 1827
    move/from16 v4, p2

    .line 1828
    .line 1829
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1830
    .line 1831
    .line 1832
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1833
    .line 1834
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v1

    .line 1838
    const-string v2, "android.hardware.type.watch"

    .line 1839
    .line 1840
    const/4 v3, 0x0

    .line 1841
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 1842
    .line 1843
    .line 1844
    move-result v1

    .line 1845
    if-eqz v1, :cond_1d

    .line 1846
    .line 1847
    const-string v1, "android.intent.category.HOME_MAIN"

    .line 1848
    .line 1849
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v15

    .line 1853
    const/4 v1, 0x3

    .line 1854
    new-array v6, v1, [Ljava/util/Set;

    .line 1855
    .line 1856
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 1857
    .line 1858
    aput-object v1, v6, v3

    .line 1859
    .line 1860
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 1861
    .line 1862
    aput-object v1, v6, v12

    .line 1863
    .line 1864
    aput-object v13, v6, v11

    .line 1865
    .line 1866
    const/4 v5, 0x0

    .line 1867
    move-object/from16 v1, p0

    .line 1868
    .line 1869
    move-object/from16 v2, p1

    .line 1870
    .line 1871
    move-object v3, v15

    .line 1872
    move/from16 v4, p2

    .line 1873
    .line 1874
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1875
    .line 1876
    .line 1877
    new-array v6, v11, [Ljava/util/Set;

    .line 1878
    .line 1879
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 1880
    .line 1881
    const/4 v2, 0x0

    .line 1882
    aput-object v1, v6, v2

    .line 1883
    .line 1884
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 1885
    .line 1886
    aput-object v1, v6, v12

    .line 1887
    .line 1888
    const/4 v5, 0x1

    .line 1889
    move-object/from16 v1, p0

    .line 1890
    .line 1891
    move-object/from16 v2, p1

    .line 1892
    .line 1893
    move-object v3, v15

    .line 1894
    move/from16 v4, p2

    .line 1895
    .line 1896
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1897
    .line 1898
    .line 1899
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1900
    .line 1901
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v1

    .line 1905
    const v2, 0x1110265

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1909
    .line 1910
    .line 1911
    move-result v1

    .line 1912
    if-eqz v1, :cond_1c

    .line 1913
    .line 1914
    const-string v1, "DefaultPermGrantPolicy"

    .line 1915
    .line 1916
    const-string v2, "Wear: Skipping permission grant for Default fitness tracker app : "

    .line 1917
    .line 1918
    invoke-static {v2, v15, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    .line 1920
    .line 1921
    goto :goto_17

    .line 1922
    :cond_1c
    const-string v1, "com.android.fitness.TRACK"

    .line 1923
    .line 1924
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v3

    .line 1928
    new-array v6, v12, [Ljava/util/Set;

    .line 1929
    .line 1930
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 1931
    .line 1932
    const/4 v2, 0x0

    .line 1933
    aput-object v1, v6, v2

    .line 1934
    .line 1935
    const/4 v5, 0x0

    .line 1936
    move-object/from16 v1, p0

    .line 1937
    .line 1938
    move-object/from16 v2, p1

    .line 1939
    .line 1940
    move/from16 v4, p2

    .line 1941
    .line 1942
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1943
    .line 1944
    .line 1945
    :cond_1d
    :goto_17
    const-string v3, "com.android.printspooler"

    .line 1946
    .line 1947
    new-array v6, v11, [Ljava/util/Set;

    .line 1948
    .line 1949
    const/4 v1, 0x0

    .line 1950
    aput-object v13, v6, v1

    .line 1951
    .line 1952
    aput-object v14, v6, v12

    .line 1953
    .line 1954
    const/4 v5, 0x1

    .line 1955
    move-object/from16 v1, p0

    .line 1956
    .line 1957
    move-object/from16 v2, p1

    .line 1958
    .line 1959
    move/from16 v4, p2

    .line 1960
    .line 1961
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1962
    .line 1963
    .line 1964
    const-string v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    .line 1965
    .line 1966
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v3

    .line 1970
    new-array v6, v11, [Ljava/util/Set;

    .line 1971
    .line 1972
    sget-object v14, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 1973
    .line 1974
    const/4 v1, 0x0

    .line 1975
    aput-object v14, v6, v1

    .line 1976
    .line 1977
    sget-object v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 1978
    .line 1979
    aput-object v15, v6, v12

    .line 1980
    .line 1981
    const/4 v5, 0x1

    .line 1982
    move-object/from16 v1, p0

    .line 1983
    .line 1984
    move-object/from16 v2, p1

    .line 1985
    .line 1986
    move/from16 v4, p2

    .line 1987
    .line 1988
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 1989
    .line 1990
    .line 1991
    new-instance v1, Landroid/content/Intent;

    .line 1992
    .line 1993
    const-string v2, "android.intent.action.VIEW"

    .line 1994
    .line 1995
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1996
    .line 1997
    .line 1998
    const-string/jumbo v2, "vnd.android.cursor.item/ndef_msg"

    .line 1999
    .line 2000
    .line 2001
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v1

    .line 2005
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v3

    .line 2009
    new-array v6, v11, [Ljava/util/Set;

    .line 2010
    .line 2011
    const/4 v1, 0x0

    .line 2012
    aput-object v14, v6, v1

    .line 2013
    .line 2014
    aput-object v15, v6, v12

    .line 2015
    .line 2016
    const/4 v5, 0x0

    .line 2017
    move-object/from16 v1, p0

    .line 2018
    .line 2019
    move-object/from16 v2, p1

    .line 2020
    .line 2021
    move/from16 v4, p2

    .line 2022
    .line 2023
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2024
    .line 2025
    .line 2026
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    .line 2027
    .line 2028
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v3

    .line 2032
    new-array v6, v12, [Ljava/util/Set;

    .line 2033
    .line 2034
    const/4 v1, 0x0

    .line 2035
    aput-object v10, v6, v1

    .line 2036
    .line 2037
    const/4 v5, 0x1

    .line 2038
    move-object/from16 v1, p0

    .line 2039
    .line 2040
    move-object/from16 v2, p1

    .line 2041
    .line 2042
    move/from16 v4, p2

    .line 2043
    .line 2044
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2045
    .line 2046
    .line 2047
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2048
    .line 2049
    const v2, 0x10402f7

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v3

    .line 2056
    new-array v6, v11, [Ljava/util/Set;

    .line 2057
    .line 2058
    const/4 v1, 0x0

    .line 2059
    aput-object v13, v6, v1

    .line 2060
    .line 2061
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 2062
    .line 2063
    aput-object v1, v6, v12

    .line 2064
    .line 2065
    const/4 v5, 0x1

    .line 2066
    move-object/from16 v1, p0

    .line 2067
    .line 2068
    move-object/from16 v2, p1

    .line 2069
    .line 2070
    move/from16 v4, p2

    .line 2071
    .line 2072
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2073
    .line 2074
    .line 2075
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    .line 2076
    .line 2077
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;I)Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v3

    .line 2081
    new-array v6, v12, [Ljava/util/Set;

    .line 2082
    .line 2083
    const/4 v1, 0x0

    .line 2084
    aput-object v10, v6, v1

    .line 2085
    .line 2086
    const/4 v5, 0x1

    .line 2087
    move-object/from16 v1, p0

    .line 2088
    .line 2089
    move-object/from16 v2, p1

    .line 2090
    .line 2091
    move/from16 v4, p2

    .line 2092
    .line 2093
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2094
    .line 2095
    .line 2096
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2097
    .line 2098
    invoke-virtual {v1, v7, v9}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v7

    .line 2102
    array-length v10, v7

    .line 2103
    const/4 v13, 0x0

    .line 2104
    :goto_18
    if-ge v13, v10, :cond_1e

    .line 2105
    .line 2106
    aget-object v3, v7, v13

    .line 2107
    .line 2108
    new-array v6, v11, [Ljava/util/Set;

    .line 2109
    .line 2110
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 2111
    .line 2112
    const/4 v2, 0x0

    .line 2113
    aput-object v1, v6, v2

    .line 2114
    .line 2115
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 2116
    .line 2117
    aput-object v1, v6, v12

    .line 2118
    .line 2119
    const/4 v5, 0x0

    .line 2120
    move-object/from16 v1, p0

    .line 2121
    .line 2122
    move-object/from16 v2, p1

    .line 2123
    .line 2124
    move/from16 v4, p2

    .line 2125
    .line 2126
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2127
    .line 2128
    .line 2129
    add-int/lit8 v13, v13, 0x1

    .line 2130
    .line 2131
    goto :goto_18

    .line 2132
    :cond_1e
    const-string v3, "com.android.sharedstoragebackup"

    .line 2133
    .line 2134
    new-array v6, v12, [Ljava/util/Set;

    .line 2135
    .line 2136
    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 2137
    .line 2138
    const/4 v1, 0x0

    .line 2139
    aput-object v10, v6, v1

    .line 2140
    .line 2141
    const/4 v5, 0x1

    .line 2142
    move-object/from16 v1, p0

    .line 2143
    .line 2144
    move-object/from16 v2, p1

    .line 2145
    .line 2146
    move/from16 v4, p2

    .line 2147
    .line 2148
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2149
    .line 2150
    .line 2151
    const-string v3, "com.android.bluetoothmidiservice"

    .line 2152
    .line 2153
    new-array v6, v12, [Ljava/util/Set;

    .line 2154
    .line 2155
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 2156
    .line 2157
    const/4 v2, 0x0

    .line 2158
    aput-object v1, v6, v2

    .line 2159
    .line 2160
    const/4 v5, 0x1

    .line 2161
    move-object/from16 v1, p0

    .line 2162
    .line 2163
    move-object/from16 v2, p1

    .line 2164
    .line 2165
    move/from16 v4, p2

    .line 2166
    .line 2167
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2168
    .line 2169
    .line 2170
    const-string v1, "com.sec.android.app.clockpackage"

    .line 2171
    .line 2172
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v3

    .line 2176
    if-eqz v3, :cond_1f

    .line 2177
    .line 2178
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2179
    .line 2180
    .line 2181
    move-result v1

    .line 2182
    if-eqz v1, :cond_1f

    .line 2183
    .line 2184
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 2185
    .line 2186
    const/4 v6, 0x0

    .line 2187
    const/4 v5, 0x0

    .line 2188
    move-object/from16 v1, p0

    .line 2189
    .line 2190
    move-object/from16 v2, p1

    .line 2191
    .line 2192
    move/from16 v7, p2

    .line 2193
    .line 2194
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2195
    .line 2196
    .line 2197
    :cond_1f
    const-string v1, "com.samsung.android.dck.timesync"

    .line 2198
    .line 2199
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v7

    .line 2203
    if-eqz v7, :cond_20

    .line 2204
    .line 2205
    invoke-static {v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2206
    .line 2207
    .line 2208
    move-result v1

    .line 2209
    if-eqz v1, :cond_20

    .line 2210
    .line 2211
    new-instance v11, Landroid/util/ArraySet;

    .line 2212
    .line 2213
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 2214
    .line 2215
    .line 2216
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 2217
    .line 2218
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v6

    .line 2222
    const/16 v5, 0x10

    .line 2223
    .line 2224
    move-object/from16 v1, p1

    .line 2225
    .line 2226
    move-object v3, v7

    .line 2227
    move v4, v5

    .line 2228
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 2229
    .line 2230
    .line 2231
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2232
    .line 2233
    const-class v2, Landroid/app/AppOpsManager;

    .line 2234
    .line 2235
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v1

    .line 2239
    check-cast v1, Landroid/app/AppOpsManager;

    .line 2240
    .line 2241
    const/16 v2, 0x6f

    .line 2242
    .line 2243
    const/16 v3, 0x3e8

    .line 2244
    .line 2245
    const/4 v4, 0x0

    .line 2246
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 2247
    .line 2248
    .line 2249
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 2250
    .line 2251
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2252
    .line 2253
    .line 2254
    const/4 v6, 0x0

    .line 2255
    const/4 v5, 0x1

    .line 2256
    move-object/from16 v1, p0

    .line 2257
    .line 2258
    move-object/from16 v2, p1

    .line 2259
    .line 2260
    move-object v3, v7

    .line 2261
    move-object v4, v11

    .line 2262
    move/from16 v7, p2

    .line 2263
    .line 2264
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2265
    .line 2266
    .line 2267
    :cond_20
    const-string v1, "android.adservices.AD_SERVICES_COMMON_SERVICE"

    .line 2268
    .line 2269
    new-instance v2, Landroid/content/Intent;

    .line 2270
    .line 2271
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/content/Intent;I)Ljava/lang/String;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v3

    .line 2278
    new-array v6, v12, [Ljava/util/Set;

    .line 2279
    .line 2280
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 2281
    .line 2282
    const/4 v11, 0x0

    .line 2283
    aput-object v1, v6, v11

    .line 2284
    .line 2285
    const/4 v5, 0x0

    .line 2286
    move-object/from16 v1, p0

    .line 2287
    .line 2288
    move-object/from16 v2, p1

    .line 2289
    .line 2290
    move/from16 v4, p2

    .line 2291
    .line 2292
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 2293
    .line 2294
    .line 2295
    const-string v1, "com.sec.android.app.samsungapps"

    .line 2296
    .line 2297
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v3

    .line 2301
    if-eqz v3, :cond_23

    .line 2302
    .line 2303
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2304
    .line 2305
    .line 2306
    move-result v1

    .line 2307
    if-eqz v1, :cond_23

    .line 2308
    .line 2309
    new-instance v4, Landroid/util/ArraySet;

    .line 2310
    .line 2311
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2312
    .line 2313
    .line 2314
    const-string v1, "China"

    .line 2315
    .line 2316
    const-string/jumbo v2, "ro.csc.country_code"

    .line 2317
    .line 2318
    .line 2319
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v2

    .line 2323
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2324
    .line 2325
    .line 2326
    move-result v1

    .line 2327
    if-eqz v1, :cond_21

    .line 2328
    .line 2329
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 2330
    .line 2331
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2332
    .line 2333
    .line 2334
    const/4 v6, 0x0

    .line 2335
    const/4 v5, 0x0

    .line 2336
    move-object/from16 v1, p0

    .line 2337
    .line 2338
    move-object/from16 v2, p1

    .line 2339
    .line 2340
    move/from16 v7, p2

    .line 2341
    .line 2342
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2343
    .line 2344
    .line 2345
    goto :goto_19

    .line 2346
    :cond_21
    const-string v1, "KOREA"

    .line 2347
    .line 2348
    const-string/jumbo v2, "ro.csc.country_code"

    .line 2349
    .line 2350
    .line 2351
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v2

    .line 2355
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2356
    .line 2357
    .line 2358
    move-result v1

    .line 2359
    if-eqz v1, :cond_22

    .line 2360
    .line 2361
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 2362
    .line 2363
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2364
    .line 2365
    .line 2366
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 2367
    .line 2368
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2369
    .line 2370
    .line 2371
    const/4 v6, 0x0

    .line 2372
    const/4 v5, 0x0

    .line 2373
    move-object/from16 v1, p0

    .line 2374
    .line 2375
    move-object/from16 v2, p1

    .line 2376
    .line 2377
    move/from16 v7, p2

    .line 2378
    .line 2379
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2380
    .line 2381
    .line 2382
    goto :goto_19

    .line 2383
    :cond_22
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 2384
    .line 2385
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2386
    .line 2387
    .line 2388
    const/4 v6, 0x0

    .line 2389
    const/4 v5, 0x0

    .line 2390
    move-object/from16 v1, p0

    .line 2391
    .line 2392
    move-object/from16 v2, p1

    .line 2393
    .line 2394
    move/from16 v7, p2

    .line 2395
    .line 2396
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2397
    .line 2398
    .line 2399
    :cond_23
    :goto_19
    const-string v1, "com.samsung.android.video"

    .line 2400
    .line 2401
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v3

    .line 2405
    if-eqz v3, :cond_24

    .line 2406
    .line 2407
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2408
    .line 2409
    .line 2410
    move-result v1

    .line 2411
    if-eqz v1, :cond_24

    .line 2412
    .line 2413
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2414
    .line 2415
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v1

    .line 2419
    if-eqz v1, :cond_24

    .line 2420
    .line 2421
    const-string v2, "com.samsung.android.video"

    .line 2422
    .line 2423
    const-string v4, "android"

    .line 2424
    .line 2425
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    .line 2427
    .line 2428
    move-result v1

    .line 2429
    if-nez v1, :cond_24

    .line 2430
    .line 2431
    const/4 v6, 0x0

    .line 2432
    const/4 v5, 0x0

    .line 2433
    move-object/from16 v1, p0

    .line 2434
    .line 2435
    move-object/from16 v2, p1

    .line 2436
    .line 2437
    move-object v4, v10

    .line 2438
    move/from16 v7, p2

    .line 2439
    .line 2440
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2441
    .line 2442
    .line 2443
    :cond_24
    const-string v1, "CHINA"

    .line 2444
    .line 2445
    const-string/jumbo v2, "ro.csc.country_code"

    .line 2446
    .line 2447
    .line 2448
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v2

    .line 2452
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2453
    .line 2454
    .line 2455
    move-result v1

    .line 2456
    if-nez v1, :cond_25

    .line 2457
    .line 2458
    const-string v1, "com.samsung.app.newtrim"

    .line 2459
    .line 2460
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v3

    .line 2464
    if-eqz v3, :cond_25

    .line 2465
    .line 2466
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2467
    .line 2468
    .line 2469
    move-result v1

    .line 2470
    if-eqz v1, :cond_25

    .line 2471
    .line 2472
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2473
    .line 2474
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2475
    .line 2476
    .line 2477
    move-result-object v1

    .line 2478
    if-eqz v1, :cond_25

    .line 2479
    .line 2480
    const-string v2, "com.samsung.app.newtrim"

    .line 2481
    .line 2482
    const-string v4, "android"

    .line 2483
    .line 2484
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    .line 2486
    .line 2487
    move-result v1

    .line 2488
    if-nez v1, :cond_25

    .line 2489
    .line 2490
    const/4 v6, 0x0

    .line 2491
    const/4 v5, 0x0

    .line 2492
    move-object/from16 v1, p0

    .line 2493
    .line 2494
    move-object/from16 v2, p1

    .line 2495
    .line 2496
    move-object v4, v10

    .line 2497
    move/from16 v7, p2

    .line 2498
    .line 2499
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2500
    .line 2501
    .line 2502
    :cond_25
    const-string v1, "com.samsung.android.bixby.agent"

    .line 2503
    .line 2504
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v3

    .line 2508
    if-eqz v3, :cond_2c

    .line 2509
    .line 2510
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2511
    .line 2512
    .line 2513
    move-result v1

    .line 2514
    if-eqz v1, :cond_2c

    .line 2515
    .line 2516
    const-string/jumbo v1, "ro.build.characteristics"

    .line 2517
    .line 2518
    .line 2519
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v1

    .line 2523
    if-eqz v1, :cond_26

    .line 2524
    .line 2525
    const-string/jumbo v2, "tablet"

    .line 2526
    .line 2527
    .line 2528
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2529
    .line 2530
    .line 2531
    move-result v1

    .line 2532
    if-eqz v1, :cond_26

    .line 2533
    .line 2534
    move v2, v12

    .line 2535
    goto :goto_1a

    .line 2536
    :cond_26
    move v2, v11

    .line 2537
    :goto_1a
    const-string v1, "com.samsung.android.dialer"

    .line 2538
    .line 2539
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v1

    .line 2543
    if-eqz v1, :cond_27

    .line 2544
    .line 2545
    move v1, v12

    .line 2546
    goto :goto_1b

    .line 2547
    :cond_27
    move v1, v11

    .line 2548
    :goto_1b
    const-string v4, "com.samsung.android.messaging"

    .line 2549
    .line 2550
    invoke-virtual {v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v4

    .line 2554
    if-eqz v4, :cond_28

    .line 2555
    .line 2556
    move v11, v12

    .line 2557
    :cond_28
    new-instance v12, Landroid/util/ArraySet;

    .line 2558
    .line 2559
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2560
    .line 2561
    .line 2562
    const-string v4, "android.permission.RECORD_AUDIO"

    .line 2563
    .line 2564
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2565
    .line 2566
    .line 2567
    const-string v4, "android.permission.READ_CALENDAR"

    .line 2568
    .line 2569
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2570
    .line 2571
    .line 2572
    const-string v4, "android.permission.WRITE_CALENDAR"

    .line 2573
    .line 2574
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2575
    .line 2576
    .line 2577
    if-eqz v1, :cond_29

    .line 2578
    .line 2579
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 2580
    .line 2581
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2582
    .line 2583
    .line 2584
    const-string v1, "android.permission.WRITE_CALL_LOG"

    .line 2585
    .line 2586
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2587
    .line 2588
    .line 2589
    :cond_29
    const-string v1, "android.permission.CAMERA"

    .line 2590
    .line 2591
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2592
    .line 2593
    .line 2594
    const-string v1, "android.permission.READ_CONTACTS"

    .line 2595
    .line 2596
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2597
    .line 2598
    .line 2599
    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 2600
    .line 2601
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2602
    .line 2603
    .line 2604
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 2605
    .line 2606
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2607
    .line 2608
    .line 2609
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2610
    .line 2611
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2612
    .line 2613
    .line 2614
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2615
    .line 2616
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2617
    .line 2618
    .line 2619
    if-eqz v11, :cond_2a

    .line 2620
    .line 2621
    const-string v1, "android.permission.SEND_SMS"

    .line 2622
    .line 2623
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2624
    .line 2625
    .line 2626
    const-string v1, "android.permission.READ_SMS"

    .line 2627
    .line 2628
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2629
    .line 2630
    .line 2631
    const-string v1, "android.permission.RECEIVE_SMS"

    .line 2632
    .line 2633
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2634
    .line 2635
    .line 2636
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    .line 2637
    .line 2638
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2639
    .line 2640
    .line 2641
    const-string v1, "android.permission.RECEIVE_MMS"

    .line 2642
    .line 2643
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2644
    .line 2645
    .line 2646
    :cond_2a
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 2647
    .line 2648
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2649
    .line 2650
    .line 2651
    const-string v1, "android.permission.CALL_PHONE"

    .line 2652
    .line 2653
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2654
    .line 2655
    .line 2656
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2657
    .line 2658
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2659
    .line 2660
    .line 2661
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2662
    .line 2663
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2664
    .line 2665
    .line 2666
    if-nez v2, :cond_2b

    .line 2667
    .line 2668
    const-string v1, "android.permission.BODY_SENSORS"

    .line 2669
    .line 2670
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2671
    .line 2672
    .line 2673
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    .line 2674
    .line 2675
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2676
    .line 2677
    .line 2678
    :cond_2b
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 2679
    .line 2680
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2681
    .line 2682
    .line 2683
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 2684
    .line 2685
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2686
    .line 2687
    .line 2688
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 2689
    .line 2690
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2691
    .line 2692
    .line 2693
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 2694
    .line 2695
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2696
    .line 2697
    .line 2698
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 2699
    .line 2700
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2701
    .line 2702
    .line 2703
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 2704
    .line 2705
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2706
    .line 2707
    .line 2708
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 2709
    .line 2710
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2711
    .line 2712
    .line 2713
    const/4 v6, 0x0

    .line 2714
    const/4 v5, 0x0

    .line 2715
    move-object/from16 v1, p0

    .line 2716
    .line 2717
    move-object/from16 v2, p1

    .line 2718
    .line 2719
    move-object v4, v12

    .line 2720
    move/from16 v7, p2

    .line 2721
    .line 2722
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2723
    .line 2724
    .line 2725
    const-string v1, ";"

    .line 2726
    .line 2727
    invoke-static {v1, v12}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 2728
    .line 2729
    .line 2730
    move-result-object v1

    .line 2731
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2732
    .line 2733
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v2

    .line 2737
    const-string v3, "bixby_pregranted_permissions"

    .line 2738
    .line 2739
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2740
    .line 2741
    .line 2742
    :cond_2c
    const-string v1, "com.sec.android.app.vepreload"

    .line 2743
    .line 2744
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2745
    .line 2746
    .line 2747
    move-result-object v3

    .line 2748
    if-eqz v3, :cond_2d

    .line 2749
    .line 2750
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2751
    .line 2752
    .line 2753
    move-result v1

    .line 2754
    if-eqz v1, :cond_2d

    .line 2755
    .line 2756
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2757
    .line 2758
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2759
    .line 2760
    .line 2761
    move-result-object v1

    .line 2762
    if-eqz v1, :cond_2d

    .line 2763
    .line 2764
    const-string v2, "com.sec.android.app.vepreload"

    .line 2765
    .line 2766
    const-string v4, "android"

    .line 2767
    .line 2768
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    .line 2770
    .line 2771
    move-result v1

    .line 2772
    if-nez v1, :cond_2d

    .line 2773
    .line 2774
    const-string v1, "China"

    .line 2775
    .line 2776
    const-string/jumbo v2, "ro.csc.country_code"

    .line 2777
    .line 2778
    .line 2779
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2780
    .line 2781
    .line 2782
    move-result-object v2

    .line 2783
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2784
    .line 2785
    .line 2786
    move-result v1

    .line 2787
    if-nez v1, :cond_2d

    .line 2788
    .line 2789
    const/4 v6, 0x0

    .line 2790
    const/4 v5, 0x0

    .line 2791
    move-object/from16 v1, p0

    .line 2792
    .line 2793
    move-object/from16 v2, p1

    .line 2794
    .line 2795
    move-object v4, v10

    .line 2796
    move/from16 v7, p2

    .line 2797
    .line 2798
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2799
    .line 2800
    .line 2801
    :cond_2d
    const-string v1, "com.sec.location.nfwlocationprivacy"

    .line 2802
    .line 2803
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v3

    .line 2807
    const-string v1, "KOREA"

    .line 2808
    .line 2809
    const-string/jumbo v2, "ro.csc.country_code"

    .line 2810
    .line 2811
    .line 2812
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2813
    .line 2814
    .line 2815
    move-result-object v2

    .line 2816
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2817
    .line 2818
    .line 2819
    move-result v1

    .line 2820
    if-eqz v1, :cond_2e

    .line 2821
    .line 2822
    if-eqz v3, :cond_2e

    .line 2823
    .line 2824
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2825
    .line 2826
    .line 2827
    move-result v1

    .line 2828
    if-eqz v1, :cond_2e

    .line 2829
    .line 2830
    new-instance v4, Landroid/util/ArraySet;

    .line 2831
    .line 2832
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2833
    .line 2834
    .line 2835
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 2836
    .line 2837
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2838
    .line 2839
    .line 2840
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2841
    .line 2842
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2843
    .line 2844
    .line 2845
    const/4 v6, 0x0

    .line 2846
    const/4 v5, 0x1

    .line 2847
    move-object/from16 v1, p0

    .line 2848
    .line 2849
    move-object/from16 v2, p1

    .line 2850
    .line 2851
    move/from16 v7, p2

    .line 2852
    .line 2853
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2854
    .line 2855
    .line 2856
    :cond_2e
    const-string v1, "com.sec.android.mimage.photoretouching"

    .line 2857
    .line 2858
    invoke-virtual {v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2859
    .line 2860
    .line 2861
    move-result-object v3

    .line 2862
    if-eqz v3, :cond_2f

    .line 2863
    .line 2864
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 2865
    .line 2866
    .line 2867
    move-result v1

    .line 2868
    if-eqz v1, :cond_2f

    .line 2869
    .line 2870
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 2871
    .line 2872
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2873
    .line 2874
    .line 2875
    move-result-object v1

    .line 2876
    if-eqz v1, :cond_2f

    .line 2877
    .line 2878
    const-string v2, "com.sec.android.mimage.photoretouching"

    .line 2879
    .line 2880
    const-string v4, "android"

    .line 2881
    .line 2882
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    .line 2884
    .line 2885
    move-result v1

    .line 2886
    if-nez v1, :cond_2f

    .line 2887
    .line 2888
    const-string v1, "China"

    .line 2889
    .line 2890
    const-string/jumbo v2, "ro.csc.country_code"

    .line 2891
    .line 2892
    .line 2893
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2894
    .line 2895
    .line 2896
    move-result-object v2

    .line 2897
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2898
    .line 2899
    .line 2900
    move-result v1

    .line 2901
    if-nez v1, :cond_2f

    .line 2902
    .line 2903
    const/4 v6, 0x0

    .line 2904
    const/4 v5, 0x0

    .line 2905
    move-object/from16 v1, p0

    .line 2906
    .line 2907
    move-object/from16 v2, p1

    .line 2908
    .line 2909
    move-object v4, v10

    .line 2910
    move/from16 v7, p2

    .line 2911
    .line 2912
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 2913
    .line 2914
    .line 2915
    :cond_2f
    return-void

    .line 2916
    :catchall_0
    move-exception v0

    .line 2917
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2918
    throw v0
.end method

.method public final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZ[Ljava/util/Set;)V
    .locals 9

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    array-length v0, p6

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    aget-object v5, p6, v1

    .line 15
    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move v6, p4

    .line 20
    move v7, p5

    .line 21
    move v8, p3

    .line 22
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object v7, p5

    .line 18
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZ[Ljava/util/Set;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    if-nez v8, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 32
    .line 33
    array-length v4, v2

    .line 34
    const/4 v10, 0x0

    .line 35
    move v5, v10

    .line 36
    :goto_0
    const/4 v6, 0x0

    .line 37
    if-ge v5, v4, :cond_3

    .line 38
    .line 39
    aget-object v11, v2, v5

    .line 40
    .line 41
    invoke-static {v3, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-nez v11, :cond_2

    .line 46
    .line 47
    aput-object v6, v2, v5

    .line 48
    .line 49
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    new-instance v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, [Ljava/lang/String;

    .line 62
    .line 63
    new-instance v11, Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-direct {v11, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 69
    .line 70
    if-eqz p4, :cond_4

    .line 71
    .line 72
    const/16 v4, 0x30

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const/16 v4, 0x20

    .line 76
    .line 77
    :goto_1
    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    const-class v12, Landroid/permission/PermissionManager;

    .line 80
    .line 81
    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroid/permission/PermissionManager;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    move v13, v10

    .line 96
    :goto_2
    if-ge v13, v12, :cond_6

    .line 97
    .line 98
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    check-cast v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 107
    .line 108
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-ge v15, v6, :cond_5

    .line 113
    .line 114
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_5

    .line 123
    .line 124
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 129
    .line 130
    .line 131
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    goto :goto_2

    .line 135
    :cond_6
    if-nez p5, :cond_a

    .line 136
    .line 137
    if-eqz v3, :cond_a

    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 148
    .line 149
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 150
    .line 151
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v3, v1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-nez v1, :cond_7

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    goto :goto_3

    .line 165
    :cond_7
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 166
    .line 167
    :goto_3
    if-nez v1, :cond_8

    .line 168
    .line 169
    const/4 v1, 0x0

    .line 170
    goto :goto_4

    .line 171
    :cond_8
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    :goto_4
    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_a

    .line 180
    .line 181
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_9

    .line 188
    .line 189
    return-void

    .line 190
    :cond_9
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_a

    .line 197
    .line 198
    new-instance v3, Landroid/util/ArraySet;

    .line 199
    .line 200
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 205
    .line 206
    .line 207
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 208
    .line 209
    move-object v12, v2

    .line 210
    move-object v13, v3

    .line 211
    goto :goto_5

    .line 212
    :cond_a
    move-object v12, v2

    .line 213
    const/4 v13, 0x0

    .line 214
    :goto_5
    array-length v14, v12

    .line 215
    new-array v1, v14, [Ljava/lang/String;

    .line 216
    .line 217
    move v2, v10

    .line 218
    move v3, v2

    .line 219
    move v5, v3

    .line 220
    :goto_6
    if-ge v2, v14, :cond_d

    .line 221
    .line 222
    aget-object v6, v12, v2

    .line 223
    .line 224
    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 225
    .line 226
    .line 227
    move-result-object v15

    .line 228
    if-nez v15, :cond_b

    .line 229
    .line 230
    const/4 v15, 0x0

    .line 231
    goto :goto_7

    .line 232
    :cond_b
    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 233
    .line 234
    :goto_7
    if-eqz v15, :cond_c

    .line 235
    .line 236
    aput-object v6, v1, v5

    .line 237
    .line 238
    add-int/lit8 v5, v5, 0x1

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_c
    add-int/lit8 v15, v14, -0x1

    .line 242
    .line 243
    sub-int/2addr v15, v3

    .line 244
    aput-object v6, v1, v15

    .line 245
    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_d
    move v15, v10

    .line 252
    :goto_9
    if-ge v15, v14, :cond_1b

    .line 253
    .line 254
    aget-object v6, v12, v15

    .line 255
    .line 256
    if-eqz v13, :cond_e

    .line 257
    .line 258
    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_e

    .line 263
    .line 264
    goto/16 :goto_11

    .line 265
    .line 266
    :cond_e
    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_1a

    .line 271
    .line 272
    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-eqz p4, :cond_f

    .line 277
    .line 278
    and-int/lit8 v1, v5, 0x10

    .line 279
    .line 280
    if-eqz v1, :cond_f

    .line 281
    .line 282
    const/4 v1, 0x1

    .line 283
    move/from16 v16, v1

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_f
    move/from16 v16, v10

    .line 287
    .line 288
    :goto_a
    and-int/lit8 v1, v5, 0x17

    .line 289
    .line 290
    if-eqz v1, :cond_11

    .line 291
    .line 292
    if-nez p5, :cond_11

    .line 293
    .line 294
    if-eqz v16, :cond_10

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_10
    move/from16 v17, v4

    .line 298
    .line 299
    move/from16 v19, v5

    .line 300
    .line 301
    move-object/from16 v16, v6

    .line 302
    .line 303
    goto/16 :goto_10

    .line 304
    .line 305
    :cond_11
    :goto_b
    and-int/lit8 v1, v5, 0x4

    .line 306
    .line 307
    if-eqz v1, :cond_12

    .line 308
    .line 309
    goto/16 :goto_11

    .line 310
    .line 311
    :cond_12
    and-int/lit16 v1, v5, 0x3800

    .line 312
    .line 313
    or-int v17, v4, v1

    .line 314
    .line 315
    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    if-nez v1, :cond_13

    .line 320
    .line 321
    move v1, v10

    .line 322
    goto :goto_c

    .line 323
    :cond_13
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    :goto_c
    if-eqz v1, :cond_14

    .line 328
    .line 329
    const/16 v4, 0x1000

    .line 330
    .line 331
    const/16 v18, 0x1000

    .line 332
    .line 333
    move-object/from16 v1, p1

    .line 334
    .line 335
    move-object v2, v6

    .line 336
    move-object/from16 v3, p2

    .line 337
    .line 338
    move/from16 v19, v5

    .line 339
    .line 340
    move/from16 v5, v18

    .line 341
    .line 342
    move-object/from16 p3, v6

    .line 343
    .line 344
    move-object v6, v9

    .line 345
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 346
    .line 347
    .line 348
    goto :goto_d

    .line 349
    :cond_14
    move/from16 v19, v5

    .line 350
    .line 351
    move-object/from16 p3, v6

    .line 352
    .line 353
    :goto_d
    if-eqz v16, :cond_15

    .line 354
    .line 355
    and-int/lit8 v5, v19, -0x11

    .line 356
    .line 357
    move-object/from16 v1, p1

    .line 358
    .line 359
    move-object/from16 v2, p3

    .line 360
    .line 361
    move-object/from16 v3, p2

    .line 362
    .line 363
    move/from16 v4, v19

    .line 364
    .line 365
    move-object v6, v9

    .line 366
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 367
    .line 368
    .line 369
    :cond_15
    move-object/from16 v6, p3

    .line 370
    .line 371
    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_16

    .line 376
    .line 377
    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 378
    .line 379
    .line 380
    :cond_16
    const-string v1, "android.uid.system"

    .line 381
    .line 382
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-nez v1, :cond_18

    .line 389
    .line 390
    const-string v1, "android.uid.systemui"

    .line 391
    .line 392
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_18

    .line 399
    .line 400
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 401
    .line 402
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_18

    .line 407
    .line 408
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 409
    .line 410
    if-eqz v1, :cond_18

    .line 411
    .line 412
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    .line 413
    .line 414
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 415
    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    check-cast v2, Ljava/util/HashMap;

    .line 421
    .line 422
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    if-eqz v1, :cond_17

    .line 427
    .line 428
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    .line 429
    .line 430
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 431
    .line 432
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 433
    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    check-cast v1, Ljava/util/HashMap;

    .line 439
    .line 440
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    check-cast v1, Ljava/lang/Boolean;

    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-eqz v1, :cond_17

    .line 451
    .line 452
    :goto_e
    and-int/lit8 v1, v17, -0x11

    .line 453
    .line 454
    move/from16 v17, v1

    .line 455
    .line 456
    goto :goto_f

    .line 457
    :cond_17
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 458
    .line 459
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 460
    .line 461
    if-eqz v1, :cond_18

    .line 462
    .line 463
    const-string v2, "com.samsung.android.notification.blockable"

    .line 464
    .line 465
    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_18

    .line 470
    .line 471
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mNotiBlockableDataByUid:Ljava/util/Map;

    .line 472
    .line 473
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 474
    .line 475
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 476
    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 482
    .line 483
    check-cast v1, Ljava/util/HashMap;

    .line 484
    .line 485
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    goto :goto_e

    .line 489
    :cond_18
    :goto_f
    or-int/lit8 v4, v17, 0x40

    .line 490
    .line 491
    move-object/from16 v1, p1

    .line 492
    .line 493
    move-object v2, v6

    .line 494
    move-object/from16 v3, p2

    .line 495
    .line 496
    move/from16 v5, v17

    .line 497
    .line 498
    move-object/from16 v16, v6

    .line 499
    .line 500
    move-object v6, v9

    .line 501
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 502
    .line 503
    .line 504
    :goto_10
    and-int/lit8 v1, v19, 0x20

    .line 505
    .line 506
    if-eqz v1, :cond_19

    .line 507
    .line 508
    and-int/lit8 v1, v19, 0x10

    .line 509
    .line 510
    if-eqz v1, :cond_19

    .line 511
    .line 512
    if-nez p4, :cond_19

    .line 513
    .line 514
    const/16 v4, 0x10

    .line 515
    .line 516
    const/4 v5, 0x0

    .line 517
    move-object/from16 v1, p1

    .line 518
    .line 519
    move-object/from16 v2, v16

    .line 520
    .line 521
    move-object/from16 v3, p2

    .line 522
    .line 523
    move-object v6, v9

    .line 524
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 525
    .line 526
    .line 527
    :cond_19
    move/from16 v4, v17

    .line 528
    .line 529
    :cond_1a
    :goto_11
    add-int/lit8 v15, v15, 0x1

    .line 530
    .line 531
    goto/16 :goto_9

    .line 532
    .line 533
    :cond_1b
    return-void
.end method

.method public final grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V
    .locals 8

    .line 1
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v4, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_3

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    move-object v6, p4

    .line 32
    check-cast v6, Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    if-nez p4, :cond_4

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v5, 0x1

    .line 61
    move-object v1, p0

    .line 62
    move-object v2, p1

    .line 63
    move-object v3, p3

    .line 64
    move v7, p2

    .line 65
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq v3, v4, :cond_15

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    if-ne v3, v5, :cond_0

    .line 18
    .line 19
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-le v6, v2, :cond_15

    .line 24
    .line 25
    :cond_0
    if-eq v3, v5, :cond_14

    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    if-ne v3, v6, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v3, "exceptions"

    .line 32
    .line 33
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v7, "DefaultPermGrantPolicy"

    .line 42
    .line 43
    const-string v8, "Unknown tag "

    .line 44
    .line 45
    if-eqz v3, :cond_13

    .line 46
    .line 47
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eq v9, v4, :cond_14

    .line 56
    .line 57
    if-ne v9, v5, :cond_2

    .line 58
    .line 59
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-le v10, v3, :cond_14

    .line 64
    .line 65
    :cond_2
    if-eq v9, v5, :cond_12

    .line 66
    .line 67
    if-ne v9, v6, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const-string v9, "exception"

    .line 71
    .line 72
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_11

    .line 81
    .line 82
    const-string/jumbo v9, "package"

    .line 83
    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-interface {v1, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const-string v11, "cert"

    .line 91
    .line 92
    invoke-interface {v1, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    move-object/from16 v12, p3

    .line 97
    .line 98
    check-cast v12, Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    check-cast v13, Ljava/util/List;

    .line 105
    .line 106
    move-object/from16 v15, p1

    .line 107
    .line 108
    if-nez v13, :cond_a

    .line 109
    .line 110
    invoke-virtual {v15, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    if-nez v13, :cond_4

    .line 115
    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v11, "No such package:"

    .line 119
    .line 120
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    if-nez v11, :cond_7

    .line 138
    .line 139
    iget-object v11, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 140
    .line 141
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-nez v11, :cond_6

    .line 146
    .line 147
    iget-object v11, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 148
    .line 149
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    const/4 v11, 0x0

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    :goto_2
    move v11, v4

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    iget-object v14, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    iget-object v10, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 169
    .line 170
    const-string v6, ":"

    .line 171
    .line 172
    const-string v5, ""

    .line 173
    .line 174
    invoke-virtual {v11, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v5}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v14, v10, v5, v4}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    :goto_3
    if-nez v11, :cond_8

    .line 187
    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v6, "Not system or platform signed or certificate-matching package: "

    .line 191
    .line 192
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 206
    .line 207
    .line 208
    :goto_4
    const/4 v5, 0x3

    .line 209
    const/4 v6, 0x4

    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_8
    invoke-static {v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_9

    .line 217
    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v6, "Skipping non supporting runtime permissions package:"

    .line 221
    .line 222
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v12, v9, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    :cond_a
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    :cond_b
    :goto_5
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-eq v6, v4, :cond_c

    .line 256
    .line 257
    const/4 v9, 0x3

    .line 258
    if-ne v6, v9, :cond_d

    .line 259
    .line 260
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-le v10, v5, :cond_c

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_c
    const/4 v10, 0x4

    .line 268
    goto :goto_8

    .line 269
    :cond_d
    :goto_6
    if-eq v6, v9, :cond_b

    .line 270
    .line 271
    const/4 v10, 0x4

    .line 272
    if-ne v6, v10, :cond_e

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_e
    const-string/jumbo v6, "permission"

    .line 276
    .line 277
    .line 278
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-eqz v6, :cond_10

    .line 287
    .line 288
    const-string/jumbo v6, "name"

    .line 289
    .line 290
    .line 291
    const/4 v11, 0x0

    .line 292
    invoke-interface {v1, v11, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    if-nez v6, :cond_f

    .line 297
    .line 298
    const-string v6, "Mandatory name attribute missing for permission tag"

    .line 299
    .line 300
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 304
    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_f
    const-string v12, "fixed"

    .line 308
    .line 309
    const/4 v14, 0x0

    .line 310
    invoke-interface {v1, v11, v12, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    const-string/jumbo v4, "whitelisted"

    .line 315
    .line 316
    .line 317
    invoke-interface {v1, v11, v4, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    new-instance v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 322
    .line 323
    invoke-direct {v9, v6, v12, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 324
    .line 325
    .line 326
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :goto_7
    const/4 v4, 0x1

    .line 330
    goto :goto_5

    .line 331
    :cond_10
    const/4 v11, 0x0

    .line 332
    const/4 v14, 0x0

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string/jumbo v6, "under <exception>"

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :goto_8
    move v6, v10

    .line 360
    :goto_9
    const/4 v4, 0x1

    .line 361
    const/4 v5, 0x3

    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :cond_11
    move-object/from16 v15, p1

    .line 365
    .line 366
    move v10, v6

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string/jumbo v5, "under <exceptions>"

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_12
    move-object/from16 v15, p1

    .line 394
    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :cond_13
    move-object/from16 v15, p1

    .line 398
    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-interface/range {p2 .. p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_14
    move-object/from16 v15, p1

    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :cond_15
    return-void
.end method

.method public final readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "etc/default-permissions"

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 93
    .line 94
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 121
    .line 122
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_4
    new-instance v1, Ljava/io/File;

    .line 149
    .line 150
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_5

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_5

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_5
    new-instance v1, Ljava/io/File;

    .line 177
    .line 178
    const-string/jumbo v2, "mdc.sys.omc_etcpath"

    .line 179
    .line 180
    .line 181
    const-string v3, ""

    .line 182
    .line 183
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const-string v3, "default-permissions"

    .line 188
    .line 189
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_6

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_6

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    const/4 v2, 0x0

    .line 216
    if-eqz v1, :cond_7

    .line 217
    .line 218
    const/4 v0, 0x0

    .line 219
    goto :goto_0

    .line 220
    :cond_7
    new-array v1, v2, [Ljava/io/File;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, [Ljava/io/File;

    .line 227
    .line 228
    :goto_0
    if-nez v0, :cond_8

    .line 229
    .line 230
    new-instance p0, Landroid/util/ArrayMap;

    .line 231
    .line 232
    invoke-direct {p0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 233
    .line 234
    .line 235
    return-object p0

    .line 236
    :cond_8
    new-instance v1, Landroid/util/ArrayMap;

    .line 237
    .line 238
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 239
    .line 240
    .line 241
    array-length v3, v0

    .line 242
    :goto_1
    if-ge v2, v3, :cond_b

    .line 243
    .line 244
    aget-object v4, v0, v2

    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    const-string v6, ".xml"

    .line 251
    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    const-string v6, "DefaultPermGrantPolicy"

    .line 257
    .line 258
    if-nez v5, :cond_9

    .line 259
    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v7, "Non-xml file "

    .line 263
    .line 264
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v7, " in "

    .line 271
    .line 272
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v4, " directory, ignoring"

    .line 283
    .line 284
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_9
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-nez v5, :cond_a

    .line 300
    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v7, "Default permissions file "

    .line 304
    .line 305
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v4, " cannot be read"

    .line 312
    .line 313
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_a
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 325
    .line 326
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .line 328
    .line 329
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {p0, p1, v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .line 335
    .line 336
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :catch_0
    move-exception v5

    .line 341
    goto :goto_3

    .line 342
    :catchall_0
    move-exception v7

    .line 343
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 344
    .line 345
    .line 346
    goto :goto_2

    .line 347
    :catchall_1
    move-exception v5

    .line 348
    :try_start_4
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    :goto_2
    throw v7
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 352
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v8, "Error reading default permissions file "

    .line 355
    .line 356
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-static {v6, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .line 368
    .line 369
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_b
    return-object v1
.end method
