.class public final Lcom/android/server/appwidget/AppWidgetService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 25
    .line 26
    const-class p1, Landroid/app/AppOpsManagerInternal;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/app/AppOpsManagerInternal;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 35
    .line 36
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "AppWidgetServiceImpl"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v4, "set appwidget_prevent_remove_all"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string v4, "appwidget_prevent_remove_all"

    .line 21
    .line 22
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-class v4, Lcom/samsung/android/knox/SemPersonaManager;

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v4, "alarm"

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/app/AlarmManager;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string/jumbo v4, "user"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/os/UserManager;

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const-string v4, "appops"

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/app/AppOpsManager;

    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    const-string/jumbo v4, "keyguard"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/app/KeyguardManager;

    .line 90
    .line 91
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 92
    .line 93
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 102
    .line 103
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 110
    .line 111
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 112
    .line 113
    invoke-static {}, Landroid/appwidget/flags/Flags;->removeAppWidgetServiceIoFromCriticalPath()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    new-instance v1, Landroid/os/Handler;

    .line 120
    .line 121
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 135
    .line 136
    .line 137
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 145
    .line 146
    :goto_0
    const/4 v1, -0x2

    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-static {v1, v3, v4}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-direct {v5, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    .line 159
    .line 160
    .line 161
    iput-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 162
    .line 163
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 166
    .line 167
    .line 168
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 169
    .line 170
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 173
    .line 174
    .line 175
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 176
    .line 177
    const-string/jumbo v1, "combined_broadcast_enabled"

    .line 178
    .line 179
    .line 180
    const-string/jumbo v5, "systemui"

    .line 181
    .line 182
    .line 183
    invoke-static {v5, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    iput-boolean v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIsCombinedBroadcastEnabled:Z

    .line 188
    .line 189
    sget-wide v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEFAULT_GENERATED_PREVIEW_RESET_INTERVAL_MS:J

    .line 190
    .line 191
    const-string/jumbo v1, "generated_preview_api_reset_interval_ms"

    .line 192
    .line 193
    .line 194
    invoke-static {v5, v1, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    const/4 v8, 0x2

    .line 199
    invoke-static {v5, v1, v8}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    new-instance v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 204
    .line 205
    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;-><init>(JI)V

    .line 206
    .line 207
    .line 208
    iput-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 209
    .line 210
    new-instance v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 211
    .line 212
    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;-><init>(JI)V

    .line 213
    .line 214
    .line 215
    iput-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 216
    .line 217
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 218
    .line 219
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 220
    .line 221
    invoke-direct {v1, v6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 222
    .line 223
    .line 224
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;

    .line 225
    .line 226
    invoke-direct {v6, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v5, v1, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1, v4}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mInteractiveBroadcast:Landroid/os/Bundle;

    .line 247
    .line 248
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    new-instance v2, Landroid/graphics/Point;

    .line 255
    .line 256
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 260
    .line 261
    .line 262
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 263
    .line 264
    mul-int/lit8 v1, v1, 0x8

    .line 265
    .line 266
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 267
    .line 268
    mul-int/2addr v1, v2

    .line 269
    iput v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 270
    .line 271
    new-instance v7, Landroid/content/IntentFilter;

    .line 272
    .line 273
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 277
    .line 278
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 282
    .line 283
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v1, "android.intent.action.TIME_SET"

    .line 287
    .line 288
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const/16 v1, 0x3e8

    .line 292
    .line 293
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 294
    .line 295
    .line 296
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 297
    .line 298
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 299
    .line 300
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 301
    .line 302
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 303
    .line 304
    const/4 v8, 0x0

    .line 305
    move-object v6, v2

    .line 306
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    .line 308
    .line 309
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 310
    .line 311
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 312
    .line 313
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 314
    .line 315
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 316
    .line 317
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    .line 318
    .line 319
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    const-string v4, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 324
    .line 325
    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string/jumbo v4, "package"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 335
    .line 336
    .line 337
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 338
    .line 339
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 340
    .line 341
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 342
    .line 343
    const/4 v12, 0x0

    .line 344
    move-object v10, v2

    .line 345
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 349
    .line 350
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 351
    .line 352
    invoke-static {v1, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 359
    .line 360
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 361
    .line 362
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 366
    .line 367
    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 368
    .line 369
    invoke-static {v1, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 374
    .line 375
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 376
    .line 377
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 378
    .line 379
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 380
    .line 381
    .line 382
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    .line 383
    .line 384
    const-string v4, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 385
    .line 386
    invoke-static {v1, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 391
    .line 392
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 393
    .line 394
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 395
    .line 396
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    :try_start_0
    new-instance v11, Landroid/content/IntentFilter;

    .line 400
    .line 401
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 402
    .line 403
    .line 404
    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 405
    .line 406
    .line 407
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 411
    .line 412
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 416
    .line 417
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 418
    .line 419
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 420
    .line 421
    const/4 v12, 0x0

    .line 422
    move-object v10, v2

    .line 423
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .line 425
    .line 426
    goto :goto_1

    .line 427
    :catch_0
    move-exception v1

    .line 428
    const-string/jumbo v2, "exceptoin registeBroadcastReceiver "

    .line 429
    .line 430
    .line 431
    invoke-static {v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :goto_1
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 435
    .line 436
    if-eqz v1, :cond_2

    .line 437
    .line 438
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 439
    .line 440
    .line 441
    :cond_2
    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 442
    .line 443
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;

    .line 444
    .line 445
    invoke-direct {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 452
    .line 453
    const-string v2, "activity"

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Landroid/app/ActivityManager;

    .line 460
    .line 461
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 462
    .line 463
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 468
    .line 469
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 470
    .line 471
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 480
    .line 481
    iput v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    .line 482
    .line 483
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 484
    .line 485
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    .line 486
    .line 487
    invoke-direct {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 488
    .line 489
    .line 490
    invoke-static {v1, v2}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 491
    .line 492
    .line 493
    const-string v1, "appwidget"

    .line 494
    .line 495
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 496
    .line 497
    .line 498
    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->register(Lcom/android/server/WidgetBackupProvider;)V

    .line 499
    .line 500
    .line 501
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "AppWidgetServiceImpl"

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "onUserStopped() "

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    sub-int/2addr v1, v2

    .line 45
    :goto_0
    const/4 v3, 0x0

    .line 46
    if-ltz v1, :cond_6

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 55
    .line 56
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ne v5, p1, :cond_1

    .line 63
    .line 64
    move v5, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v5, v3

    .line 67
    :goto_1
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 68
    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    move v7, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v7, v3

    .line 74
    :goto_2
    if-eqz v7, :cond_3

    .line 75
    .line 76
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-ne v6, p1, :cond_3

    .line 81
    .line 82
    move v3, v2

    .line 83
    goto :goto_3

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_3
    :goto_3
    if-eqz v5, :cond_5

    .line 88
    .line 89
    if-eqz v7, :cond_4

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 94
    .line 95
    .line 96
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    iput-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 105
    .line 106
    if-eqz v7, :cond_5

    .line 107
    .line 108
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 109
    .line 110
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iput-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 116
    .line 117
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    sub-int/2addr v1, v2

    .line 127
    :goto_4
    if-ltz v1, :cond_8

    .line 128
    .line 129
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-ne v5, p1, :cond_7

    .line 142
    .line 143
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    xor-int/2addr v5, v2

    .line 150
    or-int/2addr v3, v5

    .line 151
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_8
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    sub-int/2addr v1, v2

    .line 164
    :goto_5
    if-ltz v1, :cond_a

    .line 165
    .line 166
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Landroid/util/Pair;

    .line 173
    .line 174
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-ne v2, p1, :cond_9

    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    .line 193
    .line 194
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-ltz v1, :cond_b

    .line 199
    .line 200
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    .line 201
    .line 202
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 203
    .line 204
    .line 205
    :cond_b
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 206
    .line 207
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-ltz v1, :cond_c

    .line 212
    .line 213
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 214
    .line 215
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 216
    .line 217
    .line 218
    :cond_c
    if-eqz v3, :cond_d

    .line 219
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 221
    .line 222
    .line 223
    :cond_d
    monitor-exit v0

    .line 224
    return-void

    .line 225
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
