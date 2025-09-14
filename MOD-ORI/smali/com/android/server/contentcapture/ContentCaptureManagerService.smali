.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public activityStartAssistDataEnabled:Z

.field public mAm:Landroid/app/ActivityManagerInternal;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

.field public mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

.field public mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

.field public mContentProtectionServiceComponentName:Landroid/content/ComponentName;

.field public final mDataShareExecutor:Ljava/util/concurrent/Executor;

.field public mDevCfgContentProtectionAllowlistDelayMs:J

.field public mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

.field public mDevCfgContentProtectionBufferSize:I

.field public mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

.field public mDevCfgContentProtectionOptionalGroupsThreshold:I

.field public mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

.field public mDevCfgDisableFlushForViewTreeAppearing:Z

.field public mDevCfgEnableContentProtectionReceiver:Z

.field public mDevCfgIdleFlushingFrequencyMs:I

.field public mDevCfgIdleUnbindTimeoutMs:I

.field public mDevCfgLogHistorySize:I

.field public mDevCfgLoggingLevel:I

.field public mDevCfgMaxBufferSize:I

.field public mDevCfgTextChangeFlushingFrequencyMs:I

.field public mDisabledByDeviceConfig:Z

.field public mDisabledBySettings:Landroid/util/SparseBooleanArray;

.field public final mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

.field public final mHandler:Landroid/os/Handler;

.field public final mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

.field public final mPackagesWithShareRequests:Ljava/util/Set;

.field public final mRequestsHistory:Landroid/util/LocalLog;


# direct methods
.method public static -$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception p0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, -0x1

    .line 19
    invoke-interface {p1, v0, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "Unable to send security exception ("

    .line 27
    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, "): "

    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p2, "ContentCaptureManagerService"

    .line 44
    .line 45
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    const/4 p0, 0x1

    .line 49
    :goto_1
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 2
    .line 3
    const v1, 0x104030f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "no_content_capture"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 29
    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    new-instance p1, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance p1, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 53
    .line 54
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 67
    .line 68
    sget-object p1, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 71
    .line 72
    sget-object p1, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v1, "content_capture"

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    .line 99
    .line 100
    .line 101
    const-string/jumbo p1, "service_explicitly_enabled"

    .line 102
    .line 103
    .line 104
    invoke-static {v1, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setActivityStartAssistDataEnabled()V

    .line 112
    .line 113
    .line 114
    iget p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 115
    .line 116
    const-string v0, "ContentCaptureManagerService"

    .line 117
    .line 118
    if-lez p1, :cond_1

    .line 119
    .line 120
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 121
    .line 122
    if-eqz p1, :cond_0

    .line 123
    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string/jumbo v1, "log history size: "

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 133
    .line 134
    invoke-static {p1, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    new-instance p1, Landroid/util/LocalLog;

    .line 138
    .line 139
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 140
    .line 141
    invoke-direct {p1, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 148
    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v1, "disabled log history because size is "

    .line 154
    .line 155
    .line 156
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 160
    .line 161
    invoke-static {p1, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 166
    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const/4 v1, 0x0

    .line 172
    move v3, v1

    .line 173
    :goto_1
    move-object v4, p1

    .line 174
    check-cast v4, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-ge v3, v5, :cond_6

    .line 181
    .line 182
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 187
    .line 188
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const-string/jumbo v6, "content_capture_enabled"

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v6, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-ne v5, v2, :cond_3

    .line 206
    .line 207
    move v5, v2

    .line 208
    goto :goto_2

    .line 209
    :cond_3
    move v5, v1

    .line 210
    :goto_2
    xor-int/2addr v5, v2

    .line 211
    if-eqz v5, :cond_5

    .line 212
    .line 213
    const-string/jumbo v5, "user "

    .line 214
    .line 215
    .line 216
    const-string v6, " disabled by settings"

    .line 217
    .line 218
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 222
    .line 223
    if-nez v5, :cond_4

    .line 224
    .line 225
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 226
    .line 227
    invoke-direct {v5, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 228
    .line 229
    .line 230
    iput-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 231
    .line 232
    :cond_4
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 233
    .line 234
    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 235
    .line 236
    .line 237
    :cond_5
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 238
    .line 239
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 240
    .line 241
    invoke-virtual {v6, v4}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 246
    .line 247
    invoke-virtual {v7, v4}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->-$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 252
    .line 253
    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_6
    return-void
.end method


# virtual methods
.method public final assertCalledByPackageOwner(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v1, v3, :cond_0

    .line 27
    .line 28
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    array-length v1, p0

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-ge v2, v1, :cond_2

    .line 53
    .line 54
    aget-object v3, p0, v2

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    throw v0
.end method

.method public createContentProtectionAllowlistManager(J)Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Landroid/os/Handler;J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public createContentProtectionConsentManager()Lcom/android/server/contentprotection/ContentProtectionConsentManager;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/app/admin/DevicePolicyCache;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public createContentProtectionServiceInfo(Landroid/content/ComponentName;)Landroid/service/contentcapture/ContentCaptureServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v0, p0, p1, v1, v2}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final createRemoteContentProtectionService()Lcom/android/server/contentprotection/RemoteContentProtectionService;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionServiceComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createContentProtectionServiceInfo(Landroid/content/ComponentName;)Landroid/service/contentcapture/ContentCaptureServiceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createRemoteContentProtectionService(Landroid/content/ComponentName;J)Lcom/android/server/contentprotection/RemoteContentProtectionService;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    return-object v2

    .line 8
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public createRemoteContentProtectionService(Landroid/content/ComponentName;J)Lcom/android/server/contentprotection/RemoteContentProtectionService;
    .locals 8

    .line 9
    new-instance v7, Lcom/android/server/contentprotection/RemoteContentProtectionService;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 12
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v4

    move-object v0, v7

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/contentprotection/RemoteContentProtectionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IZJ)V

    return-object v7
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "Users disabled by Settings: "

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "DeviceConfig Settings: "

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "  "

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "disabled: "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 39
    .line 40
    const-string/jumbo v3, "loggingLevel: "

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v1, v3, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 47
    .line 48
    const-string/jumbo v3, "maxBufferSize: "

    .line 49
    .line 50
    .line 51
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    .line 55
    .line 56
    const-string/jumbo v3, "idleFlushingFrequencyMs: "

    .line 57
    .line 58
    .line 59
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    .line 63
    .line 64
    const-string/jumbo v3, "textChangeFlushingFrequencyMs: "

    .line 65
    .line 66
    .line 67
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    .line 71
    .line 72
    const-string/jumbo v3, "logHistorySize: "

    .line 73
    .line 74
    .line 75
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 79
    .line 80
    const-string/jumbo v3, "idleUnbindTimeoutMs: "

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 87
    .line 88
    const-string/jumbo v3, "disableFlushForViewTreeAppearing: "

    .line 89
    .line 90
    .line 91
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    .line 95
    .line 96
    const-string/jumbo v3, "enableContentProtectionReceiver: "

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1, v3, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    .line 103
    .line 104
    const-string/jumbo v3, "contentProtectionBufferSize: "

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v1, v3, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    .line 111
    .line 112
    const-string/jumbo v3, "contentProtectionRequiredGroupsSize: "

    .line 113
    .line 114
    .line 115
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string/jumbo v2, "contentProtectionOptionalGroupsSize: "

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string/jumbo v2, "contentProtectionOptionalGroupsThreshold: "

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroupsThreshold:I

    .line 155
    .line 156
    const-string/jumbo v3, "contentProtectionAllowlistDelayMs: "

    .line 157
    .line 158
    .line 159
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-wide v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAllowlistDelayMs:J

    .line 163
    .line 164
    const-string/jumbo v4, "contentProtectionAllowlistTimeoutMs: "

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v3, p1, v1, v4}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-wide/16 v2, 0x0

    .line 171
    .line 172
    const-string/jumbo v4, "contentProtectionAutoDisconnectTimeoutMs: "

    .line 173
    .line 174
    .line 175
    invoke-static {v2, v3, p1, v1, v4}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-wide v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    .line 179
    .line 180
    const-string v4, "activityStartAssistDataEnabled: "

    .line 181
    .line 182
    invoke-static {v2, v3, p1, v1, v4}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    .line 186
    .line 187
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v0, "Global Options:"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 199
    .line 200
    invoke-virtual {p0, v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final enforceCallingPermissionForManagement()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.MANAGE_CONTENT_CAPTURE"

    .line 6
    .line 7
    const-string v1, "ContentCaptureManagerService"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getContentCaptureManagerServiceStub()Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContentProtectionServiceFlatComponentName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x1040310

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getDeviceConfigEnableContentProtectionReceiver()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "enable_content_protection_receiver"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const-string/jumbo v1, "content_capture"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 1
    const p0, 0x1d4c0

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final isCalledByServiceLocked(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

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
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, ": called by UID "

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-string v5, "ContentCaptureManagerService"

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", but there\'s no service set for user "

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v4

    .line 52
    :cond_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, ": invalid service name: "

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return v4

    .line 82
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-virtual {p0, v0, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    if-eq v1, p0, :cond_2

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, ", but service UID is "

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return v4

    .line 134
    :cond_2
    const/4 p0, 0x1

    .line 135
    return p0

    .line 136
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p1, ": could not verify UID for "

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    return v4
.end method

.method public final isDisabledLocked(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0
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
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final onServiceNameChanged(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->-$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceNameChanged(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onServicePackageUpdatedLocked(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked$1()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onServicePackageUpdatingLocked(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 16
    .line 17
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 18
    .line 19
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "Pausing "

    .line 24
    .line 25
    const-string v1, " sessions while package is updating"

    .line 26
    .line 27
    const-string v2, "ContentCapturePerUserService"

    .line 28
    .line 29
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-ge v0, p1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 42
    .line 43
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 46
    .line 47
    iget-boolean v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v3, "pausing "

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "ContentCaptureServerSession"

    .line 69
    .line 70
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 74
    .line 75
    const/16 v2, 0x804

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-static {v1, v2, v3}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "ContentCapturePerUserService"

    .line 12
    .line 13
    const-string/jumbo p2, "destroyLocked()"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onSettingsChanged(ILjava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "content_capture_enabled"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "ContentCaptureManagerService"

    .line 11
    .line 12
    const-string p1, "Unexpected property ("

    .line 13
    .line 14
    const-string v0, "); updating cache instead"

    .line 15
    .line 16
    invoke-static {p1, p2, v0, p0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string/jumbo v0, "content_capture_enabled"

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-static {p2, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 v0, 0x0

    .line 37
    if-ne p2, v1, :cond_1

    .line 38
    .line 39
    move p2, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move p2, v0

    .line 42
    :goto_0
    const-string/jumbo v2, "setContentCaptureFeatureEnabled(): disabling service for user "

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "setContentCaptureFeatureEnabled(): enabling service for user "

    .line 46
    .line 47
    .line 48
    const-string/jumbo v4, "setContentCaptureFeatureEnabledForUser(): already "

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v5

    .line 54
    :try_start_0
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 55
    .line 56
    if-nez v6, :cond_2

    .line 57
    .line 58
    new-instance v6, Landroid/util/SparseBooleanArray;

    .line 59
    .line 60
    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_5

    .line 68
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 69
    .line 70
    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    xor-int/2addr v6, v1

    .line 75
    xor-int/2addr v6, p2

    .line 76
    if-nez v6, :cond_4

    .line 77
    .line 78
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 79
    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    const-string p0, "ContentCaptureManagerService"

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_3
    monitor-exit v5

    .line 100
    goto :goto_4

    .line 101
    :cond_4
    if-eqz p2, :cond_5

    .line 102
    .line 103
    const-string v2, "ContentCaptureManagerService"

    .line 104
    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 121
    .line 122
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    const-string v3, "ContentCaptureManagerService"

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 144
    .line 145
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 146
    .line 147
    .line 148
    :goto_2
    if-eqz p2, :cond_7

    .line 149
    .line 150
    iget-boolean p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 151
    .line 152
    if-eqz p2, :cond_6

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move v1, v0

    .line 156
    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)V

    .line 160
    .line 161
    .line 162
    monitor-exit v5

    .line 163
    :goto_4
    return-void

    .line 164
    :goto_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    throw p0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "content_capture"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public parseContentProtectionGroupsConfig(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "parseContentProtectionGroupsConfig: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ContentCaptureManagerService"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    const-string v0, ";"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {p1, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public final registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    .line 1
    const-string/jumbo p0, "content_capture_enabled"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setActivityStartAssistDataEnabled()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "content_capture"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "enable_activity_start_assist_content"

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    .line 16
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

.method public final setDisabledByDeviceConfig(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "setDisabledByDeviceConfig(): set to "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setDisabledByDeviceConfig(): already "

    .line 5
    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "ContentCaptureManagerService"

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v4, "setDisabledByDeviceConfig(): explicitlyEnabled="

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const-string/jumbo v5, "false"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    move p1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move p1, v4

    .line 51
    :goto_0
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v5

    .line 54
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 55
    .line 56
    if-ne v6, p1, :cond_3

    .line 57
    .line 58
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    const-string p0, "ContentCaptureManagerService"

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_2
    :goto_1
    monitor-exit v5

    .line 84
    return-void

    .line 85
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 86
    .line 87
    const-string p1, "ContentCaptureManagerService"

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move p1, v4

    .line 107
    :goto_2
    move-object v0, v2

    .line 108
    check-cast v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-ge p1, v1, :cond_7

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 121
    .line 122
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 125
    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move v1, v4

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    :goto_3
    move v1, v3

    .line 142
    :goto_4
    const-string v6, "ContentCaptureManagerService"

    .line 143
    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string/jumbo v8, "setDisabledByDeviceConfig(): updating service for user "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v8, " to "

    .line 159
    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    const-string v8, "\'disabled\'"

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    const-string v8, "\'enabled\'"

    .line 169
    .line 170
    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 p1, p1, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    monitor-exit v5

    .line 190
    return-void

    .line 191
    :goto_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    throw p0
.end method

.method public setFineTuneParamsFromDeviceConfig()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "setFineTuneParamsFromDeviceConfig(): bufferSize="

    .line 4
    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    const-string/jumbo v3, "content_capture"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "max_buffer_size"

    .line 13
    .line 14
    .line 15
    const/16 v5, 0x1f4

    .line 16
    .line 17
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    .line 22
    .line 23
    const-string/jumbo v3, "content_capture"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v4, "idle_flush_frequency"

    .line 27
    .line 28
    .line 29
    const/16 v5, 0x1388

    .line 30
    .line 31
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iput v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    .line 36
    .line 37
    const-string/jumbo v3, "content_capture"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v4, "text_change_flush_frequency"

    .line 41
    .line 42
    .line 43
    const/16 v5, 0x3e8

    .line 44
    .line 45
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    .line 50
    .line 51
    const-string/jumbo v3, "content_capture"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v4, "log_history_size"

    .line 55
    .line 56
    .line 57
    const/16 v5, 0x14

    .line 58
    .line 59
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iput v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 64
    .line 65
    const-string/jumbo v3, "content_capture"

    .line 66
    .line 67
    .line 68
    const-string/jumbo v4, "idle_unbind_timeout"

    .line 69
    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 77
    .line 78
    const-string/jumbo v3, "content_capture"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v4, "disable_flush_for_view_tree_appearing"

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iput-boolean v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    .line 89
    .line 90
    iget-boolean v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getDeviceConfigEnableContentProtectionReceiver()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const-string/jumbo v6, "content_capture"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v7, "content_protection_buffer_size"

    .line 100
    .line 101
    .line 102
    const/16 v8, 0x96

    .line 103
    .line 104
    invoke-static {v6, v7, v8}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    iput v6, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    .line 109
    .line 110
    const-string/jumbo v6, "content_capture"

    .line 111
    .line 112
    .line 113
    const-string/jumbo v7, "content_protection_required_groups_config"

    .line 114
    .line 115
    .line 116
    const-string v8, ""

    .line 117
    .line 118
    invoke-static {v6, v7, v8}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const-string/jumbo v7, "content_capture"

    .line 123
    .line 124
    .line 125
    const-string/jumbo v8, "content_protection_optional_groups_config"

    .line 126
    .line 127
    .line 128
    const-string v9, ""

    .line 129
    .line 130
    invoke-static {v7, v8, v9}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    const-string/jumbo v8, "content_capture"

    .line 135
    .line 136
    .line 137
    const-string/jumbo v9, "content_protection_optional_groups_threshold"

    .line 138
    .line 139
    .line 140
    invoke-static {v8, v9, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    const-string/jumbo v8, "content_capture"

    .line 145
    .line 146
    .line 147
    const-string/jumbo v9, "content_protection_allowlist_delay_ms"

    .line 148
    .line 149
    .line 150
    const-wide/16 v10, 0x7530

    .line 151
    .line 152
    invoke-static {v8, v9, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 153
    .line 154
    .line 155
    move-result-wide v8

    .line 156
    const-string/jumbo v10, "content_capture"

    .line 157
    .line 158
    .line 159
    const-string/jumbo v11, "content_protection_allowlist_timeout_ms"

    .line 160
    .line 161
    .line 162
    const-wide/16 v12, 0xfa

    .line 163
    .line 164
    invoke-static {v10, v11, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    const-string/jumbo v12, "content_capture"

    .line 169
    .line 170
    .line 171
    const-string/jumbo v13, "content_protection_auto_disconnect_timeout_ms"

    .line 172
    .line 173
    .line 174
    const-wide/16 v14, 0xbb8

    .line 175
    .line 176
    invoke-static {v12, v13, v14, v15}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 177
    .line 178
    .line 179
    move-result-wide v12

    .line 180
    iput-wide v12, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    .line 181
    .line 182
    iget-object v12, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    const-string/jumbo v14, "com.samsung.feature.samsung_experience_mobile_lite"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-eqz v13, :cond_0

    .line 200
    .line 201
    const v13, 0x1d4c0

    .line 202
    .line 203
    .line 204
    iput v13, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    goto/16 :goto_7

    .line 209
    .line 210
    :cond_0
    :goto_0
    iget-boolean v13, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 211
    .line 212
    if-eqz v13, :cond_1

    .line 213
    .line 214
    const-string v13, "ContentCaptureManagerService"

    .line 215
    .line 216
    new-instance v14, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    .line 222
    .line 223
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", idleFlush="

    .line 227
    .line 228
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    .line 232
    .line 233
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", textFlush="

    .line 237
    .line 238
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    .line 242
    .line 243
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, ", logHistory="

    .line 247
    .line 248
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 252
    .line 253
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ", idleUnbindTimeoutMs="

    .line 257
    .line 258
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 262
    .line 263
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, ", disableFlushForViewTreeAppearing="

    .line 267
    .line 268
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-boolean v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    .line 272
    .line 273
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, ", enableContentProtectionReceiver="

    .line 277
    .line 278
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v1, ", contentProtectionBufferSize="

    .line 285
    .line 286
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    .line 290
    .line 291
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v1, ", contentProtectionRequiredGroupsConfig="

    .line 295
    .line 296
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v1, ", contentProtectionOptionalGroupsConfig="

    .line 303
    .line 304
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v1, ", contentProtectionOptionalGroupsThreshold="

    .line 311
    .line 312
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, ", contentProtectionAllowlistDelayMs="

    .line 319
    .line 320
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, ", contentProtectionAllowlistTimeoutMs="

    .line 327
    .line 328
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v1, ", contentProtectionAutoDisconnectTimeoutMs="

    .line 335
    .line 336
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    move-wide v15, v8

    .line 340
    iget-wide v8, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    .line 341
    .line 342
    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_1
    move-wide v15, v8

    .line 354
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v0, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->parseContentProtectionGroupsConfig(Ljava/lang/String;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v0, v7}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->parseContentProtectionGroupsConfig(Ljava/lang/String;)Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    if-eqz v12, :cond_2

    .line 364
    .line 365
    if-nez v4, :cond_2

    .line 366
    .line 367
    invoke-virtual {v12}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->stop()V

    .line 368
    .line 369
    .line 370
    :cond_2
    const/4 v6, 0x0

    .line 371
    if-nez v3, :cond_6

    .line 372
    .line 373
    if-eqz v4, :cond_6

    .line 374
    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContentProtectionServiceFlatComponentName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    if-nez v7, :cond_3

    .line 380
    .line 381
    move-object v7, v6

    .line 382
    goto :goto_2

    .line 383
    :cond_3
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    :goto_2
    if-eqz v7, :cond_5

    .line 388
    .line 389
    invoke-virtual {v0, v10, v11}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createContentProtectionAllowlistManager(J)Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    iget-boolean v8, v6, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mStarted:Z

    .line 394
    .line 395
    if-eqz v8, :cond_4

    .line 396
    .line 397
    move-wide v11, v15

    .line 398
    goto :goto_3

    .line 399
    :cond_4
    const/4 v8, 0x1

    .line 400
    iput-boolean v8, v6, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mStarted:Z

    .line 401
    .line 402
    new-instance v8, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;

    .line 403
    .line 404
    invoke-direct {v8, v6}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    .line 405
    .line 406
    .line 407
    iget-object v9, v6, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandlerToken:Ljava/lang/Object;

    .line 408
    .line 409
    iget-object v10, v6, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    .line 410
    .line 411
    move-wide v11, v15

    .line 412
    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 413
    .line 414
    .line 415
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createContentProtectionConsentManager()Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    move-object/from16 v17, v7

    .line 420
    .line 421
    move-object v7, v6

    .line 422
    move-object/from16 v6, v17

    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_5
    move-wide v11, v15

    .line 426
    move-object v8, v6

    .line 427
    move-object v6, v7

    .line 428
    move-object v7, v8

    .line 429
    goto :goto_4

    .line 430
    :cond_6
    move-wide v11, v15

    .line 431
    move-object v7, v6

    .line 432
    move-object v8, v7

    .line 433
    :goto_4
    iget-object v9, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 434
    .line 435
    monitor-enter v9

    .line 436
    :try_start_1
    iput-boolean v4, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    .line 437
    .line 438
    iput-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 439
    .line 440
    iput-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 441
    .line 442
    iput v5, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroupsThreshold:I

    .line 443
    .line 444
    iput-wide v11, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAllowlistDelayMs:J

    .line 445
    .line 446
    xor-int v1, v3, v4

    .line 447
    .line 448
    if-eqz v1, :cond_7

    .line 449
    .line 450
    iput-object v6, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionServiceComponentName:Landroid/content/ComponentName;

    .line 451
    .line 452
    iput-object v7, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 453
    .line 454
    iput-object v8, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 455
    .line 456
    goto :goto_5

    .line 457
    :catchall_1
    move-exception v0

    .line 458
    goto :goto_6

    .line 459
    :cond_7
    :goto_5
    monitor-exit v9

    .line 460
    return-void

    .line 461
    :goto_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 462
    throw v0

    .line 463
    :goto_7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    throw v0
.end method

.method public final setLoggingLevelFromDeviceConfig()V
    .locals 3

    .line 1
    const-string/jumbo v0, "logging_level"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string/jumbo v2, "content_capture"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 23
    .line 24
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v1, "setLoggingLevelFromDeviceConfig(): level="

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", debug="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", verbose="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 59
    .line 60
    const-string v1, "ContentCaptureManagerService"

    .line 61
    .line 62
    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method
