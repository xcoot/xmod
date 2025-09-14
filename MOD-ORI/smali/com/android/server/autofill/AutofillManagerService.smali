.class public final Lcom/android/server/autofill/AutofillManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sPartitionMaxCount:I = 0xa

.field public static sVisibleDatasetsMaxCount:I


# instance fields
.field public final mAm:Landroid/app/ActivityManagerInternal;

.field public final mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field public final mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

.field public mAugmentedServiceIdleUnbindTimeoutMs:I

.field public mAugmentedServiceRequestTimeoutMs:I

.field public final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

.field public mAutofillCredmanIntegrationEnabled:Z

.field public final mBroadcastReceiver:Lcom/android/server/autofill/AutofillManagerService$1;

.field public final mCredentialAutofillService:Landroid/content/ComponentName;

.field public final mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

.field public final mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field public final mFlagLock:Ljava/lang/Object;

.field public mIsFillFieldsFromCurrentSessionOnly:Z

.field public final mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

.field public mMaxInputLengthForAutofill:I

.field public mPccClassificationEnabled:Z

.field public mPccPreferProviderOverPcc:Z

.field public mPccProviderHints:Ljava/lang/String;

.field public mPccUseFallbackDetection:Z

.field public final mRequestsHistory:Landroid/util/LocalLog;

.field public mSupportedSmartSuggestionModes:I

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;

.field public final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method public static -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method public static -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    .line 2
    .line 3
    const-string v1, "autofill_service"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "no_autofill"

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/util/LocalLog;

    .line 17
    .line 18
    const/16 v1, 0x14

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 24
    .line 25
    new-instance v0, Landroid/util/LocalLog;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 31
    .line 32
    new-instance v0, Landroid/util/LocalLog;

    .line 33
    .line 34
    const/16 v1, 0x32

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$LocalService;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    .line 63
    .line 64
    new-instance v4, Lcom/android/server/autofill/AutofillManagerService$1;

    .line 65
    .line 66
    invoke-direct {v4, p0}, Lcom/android/server/autofill/AutofillManagerService$1;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/Object;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 82
    .line 83
    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI;

    .line 84
    .line 85
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 97
    .line 98
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 107
    .line 108
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 119
    .line 120
    .line 121
    const-string v3, "autofill"

    .line 122
    .line 123
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    .line 136
    .line 137
    .line 138
    new-instance v5, Landroid/content/IntentFilter;

    .line 139
    .line 140
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 144
    .line 145
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const/4 v8, 0x2

    .line 153
    const/4 v6, 0x0

    .line 154
    move-object v3, p1

    .line 155
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const v3, 0x104030b

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v1, v3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 171
    .line 172
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;

    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-direct {v1, p0, v3}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/AutofillManagerService;I)V

    .line 176
    .line 177
    .line 178
    iget-object v3, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v3

    .line 181
    :try_start_0
    iput-object v1, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 182
    .line 183
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const v3, 0x104031c

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, v1, v3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 197
    .line 198
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 199
    .line 200
    const-string v3, "AutofillManagerService"

    .line 201
    .line 202
    if-eqz v1, :cond_0

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v4, "Resolving FieldClassificationService to serviceName: "

    .line 207
    .line 208
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->readServiceName(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    :cond_0
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;

    .line 226
    .line 227
    const/4 v4, 0x1

    .line 228
    invoke-direct {v1, p0, v4}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/AutofillManagerService;I)V

    .line 229
    .line 230
    .line 231
    iget-object v4, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 232
    .line 233
    monitor-enter v4

    .line 234
    :try_start_1
    iput-object v1, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 235
    .line 236
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    iget v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 238
    .line 239
    if-eqz v0, :cond_1

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :goto_0
    move-object v1, v0

    .line 246
    check-cast v1, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-ge v2, v4, :cond_1

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 259
    .line 260
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 261
    .line 262
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 263
    .line 264
    .line 265
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 266
    .line 267
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 268
    .line 269
    invoke-virtual {v5, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 274
    .line 275
    invoke-virtual {v6, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    invoke-static {v4, v1, v5, v6}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->-$$Nest$msetServiceInfo(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    .line 280
    .line 281
    .line 282
    add-int/lit8 v2, v2, 0x1

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    const v0, 0x1040316

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-eqz p1, :cond_2

    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_2

    .line 303
    .line 304
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mCredentialAutofillService:Landroid/content/ComponentName;

    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_2
    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mCredentialAutofillService:Landroid/content/ComponentName;

    .line 313
    .line 314
    const-string p0, "Invalid CredentialAutofillService"

    .line 315
    .line 316
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    :goto_1
    return-void

    .line 320
    :catchall_0
    move-exception p0

    .line 321
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    throw p0

    .line 323
    :catchall_1
    move-exception p0

    .line 324
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    throw p0
.end method

.method public static getAllowedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 15
    .line 16
    const/16 v3, 0x3a

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_6

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/16 v4, 0x5b

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, -0x1

    .line 41
    if-ne v4, v5, :cond_1

    .line 42
    .line 43
    move-object v7, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/4 v6, 0x1

    .line 50
    sub-int/2addr v5, v6

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/16 v7, 0x5d

    .line 56
    .line 57
    const-string v8, "AutofillManagerService"

    .line 58
    .line 59
    if-eq v5, v7, :cond_2

    .line 60
    .line 61
    const-string v4, "Ignoring entry \'"

    .line 62
    .line 63
    const-string v5, "\' on \'"

    .line 64
    .line 65
    const-string v6, "\'because it does not end on \']\'"

    .line 66
    .line 67
    invoke-static {v4, v3, v5, p0, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v5, 0x0

    .line 76
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    invoke-static {v6, v4, v3}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 92
    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    const-string/jumbo v6, "pkg:"

    .line 96
    .line 97
    .line 98
    const-string v9, ": block:"

    .line 99
    .line 100
    const-string v10, ": urls:"

    .line 101
    .line 102
    invoke-static {v6, v5, v9, v3, v10}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v6, ":"

    .line 116
    .line 117
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_3
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 128
    .line 129
    const/16 v6, 0x2c

    .line 130
    .line 131
    invoke-direct {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_4

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    move-object v3, v5

    .line 152
    :goto_2
    if-nez v7, :cond_5

    .line 153
    .line 154
    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    new-array v4, v4, [Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_6
    return-object v0
.end method

.method public static getVisibleDatasetsMaxCount()I
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static send(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    const-string p1, "Error async reporting result to client: "

    const-string v0, "AutofillManagerService"

    .line 3
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    const-string p1, "Error async reporting result to client: "

    const-string v0, "AutofillManagerService"

    .line 11
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.MANAGE_AUTO_FILL"

    .line 6
    .line 7
    const-string v1, "AutofillManagerService"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final getServiceSettingsProperty()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "autofill_service"

    .line 2
    .line 3
    return-object p0
.end method

.method public final isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isProfile()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    .line 8
    .line 9
    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 14
    .line 15
    move-object v0, v10

    .line 16
    move-object v1, p0

    .line 17
    move v5, p1

    .line 18
    move v8, p2

    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;-><init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;ZLcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;)V

    .line 20
    .line 21
    .line 22
    return-object v10
.end method

.method public final onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 10

    .line 1
    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 4
    .line 5
    const-string/jumbo v1, "mUserSpecs down to "

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, "AutofillManagerService"

    .line 32
    .line 33
    const-string/jumbo v3, "reseting mUserSpecs"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_a

    .line 42
    .line 43
    :cond_0
    :goto_0
    iput-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const-string v0, "AutofillManagerService"

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/service/autofill/AutofillServiceInfo;->getCompatibilityPackages()Landroid/util/ArrayMap;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object p1, v4

    .line 78
    :goto_2
    if-eqz p1, :cond_b

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_4
    const-string/jumbo v0, "compat_mode_allowed_packages"

    .line 89
    .line 90
    .line 91
    const-string v1, "autofill"

    .line 92
    .line 93
    invoke-static {v1, v0, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "autofill_compat_mode_allowed_packages"

    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_3
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const/4 v2, 0x0

    .line 127
    :goto_4
    if-ge v2, v1, :cond_b

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_6

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_6
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Ljava/lang/Long;

    .line 149
    .line 150
    if-eqz v4, :cond_a

    .line 151
    .line 152
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v6

    .line 158
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, [Ljava/lang/String;

    .line 163
    .line 164
    iget-object v8, v5, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter v8

    .line 167
    :try_start_1
    iget-object v9, v5, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 168
    .line 169
    if-nez v9, :cond_7

    .line 170
    .line 171
    new-instance v9, Landroid/util/SparseArray;

    .line 172
    .line 173
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object v9, v5, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :catchall_1
    move-exception p0

    .line 180
    goto :goto_6

    .line 181
    :cond_7
    :goto_5
    iget-object v9, v5, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 182
    .line 183
    invoke-virtual {v9, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    check-cast v9, Landroid/util/ArrayMap;

    .line 188
    .line 189
    if-nez v9, :cond_8

    .line 190
    .line 191
    new-instance v9, Landroid/util/ArrayMap;

    .line 192
    .line 193
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v5, v5, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 197
    .line 198
    invoke-virtual {v5, p2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    new-instance v5, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 202
    .line 203
    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;-><init>(J[Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    monitor-exit v8

    .line 210
    goto :goto_8

    .line 211
    :goto_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    throw p0

    .line 213
    :cond_9
    :goto_7
    const-string v4, "AutofillManagerService"

    .line 214
    .line 215
    const-string v5, "Ignoring not allowed compat package "

    .line 216
    .line 217
    invoke-static {v5, v3, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_b
    :goto_9
    return-void

    .line 224
    :goto_a
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    throw p0
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-gtz p2, :cond_0

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p1

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    throw p0
.end method

.method public final onSettingsChanged(ILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    sparse-switch v3, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :sswitch_0
    const-string/jumbo v3, "selected_input_method_subtype"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x3

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v3, "autofill_max_partitions_size"

    .line 25
    .line 26
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v2, 0x2

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v3, "autofill_logging_level"

    .line 36
    .line 37
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v2, v0

    .line 45
    goto :goto_0

    .line 46
    :sswitch_3
    const-string v3, "autofill_max_visible_datasets"

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v2, v1

    .line 56
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    const-string v0, "AutofillManagerService"

    .line 60
    .line 61
    const-string v1, "Unexpected property ("

    .line 62
    .line 63
    const-string v2, "); updating cache instead"

    .line 64
    .line 65
    invoke-static {v1, p2, v2, v0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter p2

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 72
    .line 73
    .line 74
    monitor-exit p2

    .line 75
    goto :goto_4

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0

    .line 79
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter p2

    .line 82
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :try_start_2
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    :goto_1
    if-ge v1, v2, :cond_4

    .line 98
    .line 99
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lcom/android/server/autofill/Session;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->onSwitchInputMethodLocked()V

    .line 108
    .line 109
    .line 110
    add-int/2addr v1, v0

    .line 111
    goto :goto_1

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    monitor-exit p1

    .line 115
    goto :goto_3

    .line 116
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :try_start_3
    throw p0

    .line 118
    :cond_5
    :goto_3
    monitor-exit p2

    .line 119
    goto :goto_4

    .line 120
    :catchall_2
    move-exception p0

    .line 121
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 122
    throw p0

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    .line 132
    .line 133
    .line 134
    :goto_4
    return-void

    .line 135
    :sswitch_data_0
    .sparse-switch
        -0x6e3577f0 -> :sswitch_3
        -0x4d71a329 -> :sswitch_2
        -0x3e858531 -> :sswitch_1
        0x472be455 -> :sswitch_0
    .end sparse-switch

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "autofill"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "AutofillManagerService"

    .line 6
    .line 7
    const-string p2, "Hiding UI when user switched"

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance p2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {p2, p0, v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    .line 1
    const-string p0, "autofill_logging_level"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 10
    .line 11
    .line 12
    const-string p0, "autofill_max_partitions_size"

    .line 13
    .line 14
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 19
    .line 20
    .line 21
    const-string p0, "autofill_max_visible_datasets"

    .line 22
    .line 23
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p0, "selected_input_method_subtype"

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setDeviceConfigProperties()V
    .locals 7

    .line 1
    const-string/jumbo v0, "setDeviceConfigProperties() for PCC: mPccClassificationEnabled="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setDeviceConfigProperties() for AugmentedAutofill: augmentedIdleTimeout="

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    const-string v3, "autofill"

    .line 11
    .line 12
    const-string v4, "augmented_service_idle_unbind_timeout"

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iput v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 20
    .line 21
    const-string v3, "autofill"

    .line 22
    .line 23
    const-string v4, "augmented_service_request_timeout"

    .line 24
    .line 25
    const/16 v6, 0x1388

    .line 26
    .line 27
    invoke-static {v3, v4, v6}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iput v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    .line 32
    .line 33
    const-string v3, "autofill"

    .line 34
    .line 35
    const-string/jumbo v4, "smart_suggestion_supported_modes"

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    invoke-static {v3, v4, v6}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 44
    .line 45
    const v3, 0xea60

    .line 46
    .line 47
    .line 48
    iput v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 49
    .line 50
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 51
    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 62
    .line 63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", augmentedRequestTimeout="

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", smartSuggestionMode="

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 82
    .line 83
    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v1

    .line 105
    :try_start_1
    const-string v2, "autofill"

    .line 106
    .line 107
    const-string/jumbo v3, "pcc_classification_enabled"

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccClassificationEnabled:Z

    .line 115
    .line 116
    const-string v2, "autofill"

    .line 117
    .line 118
    const-string/jumbo v3, "prefer_provider_over_pcc"

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v3, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccPreferProviderOverPcc:Z

    .line 126
    .line 127
    const-string v2, "autofill"

    .line 128
    .line 129
    const-string/jumbo v3, "pcc_use_fallback"

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v3, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccUseFallbackDetection:Z

    .line 137
    .line 138
    const-string v2, "autofill"

    .line 139
    .line 140
    const-string/jumbo v3, "pcc_classification_hints"

    .line 141
    .line 142
    .line 143
    const-string v4, ""

    .line 144
    .line 145
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccProviderHints:Ljava/lang/String;

    .line 150
    .line 151
    const-string v2, "autofill"

    .line 152
    .line 153
    const-string/jumbo v3, "max_input_length_for_autofill"

    .line 154
    .line 155
    .line 156
    const/4 v4, 0x3

    .line 157
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    iput v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mMaxInputLengthForAutofill:I

    .line 162
    .line 163
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCredmanIntegrationEnabled:Z

    .line 168
    .line 169
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldFillFieldsFromCurrentSessionOnly()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mIsFillFieldsFromCurrentSessionOnly:Z

    .line 174
    .line 175
    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 176
    .line 177
    if-eqz v2, :cond_1

    .line 178
    .line 179
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccClassificationEnabled:Z

    .line 187
    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, ", mPccPreferProviderOverPcc="

    .line 192
    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccPreferProviderOverPcc:Z

    .line 197
    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v0, ", mPccUseFallbackDetection="

    .line 202
    .line 203
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccUseFallbackDetection:Z

    .line 207
    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v0, ", mPccProviderHints="

    .line 212
    .line 213
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccProviderHints:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v0, ", mAutofillCredmanIntegrationEnabled="

    .line 222
    .line 223
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCredmanIntegrationEnabled:Z

    .line 227
    .line 228
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, ", mIsFillFieldsFromCurrentSessionOnly="

    .line 232
    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-boolean p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mIsFillFieldsFromCurrentSessionOnly:Z

    .line 237
    .line 238
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :catchall_1
    move-exception p0

    .line 250
    goto :goto_2

    .line 251
    :cond_1
    :goto_1
    monitor-exit v1

    .line 252
    return-void

    .line 253
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    throw p0

    .line 255
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    throw p0
.end method

.method public final setLogLevel(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setLogLevel(): "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AutofillManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v2, "autofill_logging_level"

    .line 37
    .line 38
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final setLogLevelFromSettings()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "autofill_logging_level"

    .line 10
    .line 11
    sget v2, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    move v6, v3

    .line 30
    move v3, v1

    .line 31
    move v1, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v2, "AutofillManagerService"

    .line 34
    .line 35
    const-string/jumbo v3, "setLogLevelFromSettings(): invalid level: "

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v3, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    move v3, v1

    .line 42
    :goto_0
    if-nez v1, :cond_3

    .line 43
    .line 44
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    :cond_3
    const-string v2, "AutofillManagerService"

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v5, "setLogLevelFromSettings(): level="

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", debug="

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ", verbose="

    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter v0

    .line 80
    :try_start_0
    sput-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 81
    .line 82
    sput-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 85
    .line 86
    sput-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 87
    .line 88
    sput-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 89
    .line 90
    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 91
    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method

.method public final setMaxPartitionsFromSettings()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "autofill_max_partitions_size"

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "AutofillManagerService"

    .line 22
    .line 23
    const-string/jumbo v1, "setMaxPartitionsFromSettings(): "

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const-class v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    sput p0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final setMaxVisibleDatasetsFromSettings()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "autofill_max_visible_datasets"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "AutofillManagerService"

    .line 21
    .line 22
    const-string/jumbo v1, "setMaxVisibleDatasetsFromSettings(): "

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-class v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    sput p0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
