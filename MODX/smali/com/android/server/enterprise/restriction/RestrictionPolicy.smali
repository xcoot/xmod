.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.super Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# static fields
.field public static final excludedAdminList:[Ljava/lang/String;


# instance fields
.field public final debug:Z

.field public isLockScreenShortcutsAllowedCache:Z

.field public isLockScreenWidgetsAllowedCache:Z

.field public isSafeModeAllowedCache:Z

.field public mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBootReceiver:Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

.field public mCallCount:I

.field public mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

.field public final mContext:Landroid/content/Context;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mFotaReceiver:Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

.field public final mHandler:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

.field public mKcUid:I

.field public mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field public final mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mStorageListener:Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSubscriptionsChangedListener:Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

.field public mTelecomManager:Landroid/telecom/TelecomManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mToken:Landroid/os/IBinder;

.field public mUsbSyncFlag:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserRestrictionEnforcedByKC:Ljava/util/Set;

.field public mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

.field public preAdminRemoval_SDCardWrite:Z


# direct methods
.method public static -$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "SelectiveFotaTable"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 9
    move-result p0

    .line 10
    const-string/jumbo v0, "clearSelectiveFota : return( "

    .line 13
    const-string v1, " )"

    .line 15
    const-string v2, "RestrictionPolicy"

    .line 17
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static -$$Nest$msendSeletiveFotaResult(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "sendSeletiveFotaResult: result = "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "RestrictionPolicy"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    new-instance v2, Landroid/content/Intent;

    .line 30
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.UPDATE_FOTA_VERSION_RESULT"

    .line 33
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.UPDATE_FOTA_VERSION_STATUS"

    .line 39
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    iget-object p0, p1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 44
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 46
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    .line 49
    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    return-void
.end method

.method public static -$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "adb_enabled"

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v0, v3, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "com.samsung.android.knox.containercore"

    .line 4
    const-string/jumbo v1, "com.samsung.android.kgclient"

    .line 7
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 10
    const-string/jumbo v3, "com.sec.sprextension.phoneinfo"

    .line 13
    const-string/jumbo v4, "com.samsung.klmsagent"

    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 22
    :try_start_0
    const-string v0, "android_servers"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string v0, "RestrictionPolicy"

    .line 30
    const-string v1, "Unable to Load Library android_servers"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 14
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    .line 17
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    .line 19
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    .line 21
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 25
    new-instance v3, Landroid/os/Binder;

    .line 27
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 30
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mToken:Landroid/os/IBinder;

    .line 32
    new-instance v3, Landroid/util/ArraySet;

    .line 34
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 37
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 39
    const/4 v3, -0x1

    .line 40
    iput v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 42
    new-instance v5, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v5, v3, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;-><init>(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 48
    new-instance v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

    .line 50
    const/4 v4, 0x1

    .line 51
    invoke-direct {v3, v4, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;-><init>(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 54
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 56
    new-instance v4, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    .line 58
    invoke-direct {v4, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 61
    iput-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    .line 63
    new-instance v4, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

    .line 65
    invoke-direct {v4, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 68
    iput-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

    .line 70
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 72
    const-string/jumbo v6, "eng"

    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_1

    .line 81
    const-string/jumbo v6, "userdebug"

    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_0

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v2, v1

    .line 92
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 94
    iput v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    .line 96
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 98
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 100
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 114
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 116
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 118
    invoke-direct {v2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    .line 121
    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 123
    const-string v0, "application_policy"

    .line 125
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 131
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 133
    const-string/jumbo v0, "vpn_policy"

    .line 136
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 142
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 144
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 146
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 148
    const-string/jumbo v4, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    .line 151
    const-string v6, "android.intent.action.USER_SWITCHED"

    .line 153
    const-string v7, "android.intent.action.USER_ADDED"

    .line 155
    invoke-static {v0, v2, v4, v6, v7}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 158
    move-result-object v0

    .line 159
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 161
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    new-instance v6, Landroid/content/IntentFilter;

    .line 172
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    const-string/jumbo v2, "sec.fota.intent.MDM_REGISTER_RESULT"

    .line 178
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v2, "com.xdm.intent.UPDATE_RESULT"

    .line 184
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v2, "sec.fota.intent.MDM_UNREGISTER"

    .line 190
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v7, "com.sec.android.fotaclient.permission.FOTA"

    .line 196
    const/4 v8, 0x0

    .line 197
    const/4 v9, 0x2

    .line 198
    move-object v4, p1

    .line 199
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 202
    const/4 v2, 0x2

    .line 203
    invoke-virtual {p1, v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v0, "user"

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/os/UserManager;

    .line 215
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    .line 217
    const-string/jumbo v0, "window"

    .line 220
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 227
    const-string v0, "audio"

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Landroid/media/AudioManager;

    .line 235
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 237
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabledInDb()Z

    .line 240
    move-result p1

    .line 241
    if-nez p1, :cond_2

    .line 243
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setHomeKeyVisibilityOnNavi(Z)V

    .line 246
    :cond_2
    return-void
.end method

.method public static getExternalSdCardPath()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 3
    const-class v1, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 11
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 18
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    .line 21
    move-result-object v0

    .line 22
    array-length v1, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    aget-object v3, v0, v2

    .line 28
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    const-string/jumbo v5, "sd"

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    return-object v0
.end method

.method public static getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 3
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 11
    return-object v0
.end method

.method public static getRestrictionList(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-static {}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda2;-><init>(I)V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 36
    move-result-object p0

    .line 37
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda3;

    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 45
    move-result-object p0

    .line 46
    const-string v0, ":"

    .line 48
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public static getTopActivityUserId()I
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 11
    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getFocusedUserWithActivityManager()I

    .line 14
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v2

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v2

    .line 22
    :try_start_1
    const-string v3, "RestrictionPolicy"

    .line 24
    const-string/jumbo v4, "getTopActivityUserId() failed"

    .line 27
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    return v2

    .line 35
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw v2
.end method

.method public static getUsbDriverExceptionList()I
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    const-string/jumbo v1, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    .line 6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x2

    .line 24
    if-le v1, v3, :cond_0

    .line 26
    const-string v1, ":"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    move v1, v2

    .line 33
    :goto_0
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    if-ge v2, v3, :cond_1

    .line 36
    :try_start_1
    aget-object v3, v0, v2

    .line 38
    invoke-static {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    .line 45
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    or-int/2addr v1, v3

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    :try_start_2
    const-string v3, "RestrictionPolicy"

    .line 50
    const-string/jumbo v4, "input wrong value."

    .line 53
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    .line 64
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    goto :goto_2

    .line 66
    :catch_1
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    .line 71
    move-result v1

    .line 72
    :cond_1
    :goto_2
    return v1
.end method

.method public static isExistEFSFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 7
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v1, "isExistEFSFile : "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "RestrictionPolicy"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0
.end method

.method public static manageEFSFile(Ljava/lang/String;Z)V
    .locals 12

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    const-string/jumbo v1, "manageEFSFile"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    const-string v2, "/efs/MDM"

    .line 13
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 23
    move-result v4

    .line 24
    const-string v5, " setWritable - "

    .line 26
    const-string v6, "Exception : "

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    const/4 v9, 0x0

    .line 31
    if-nez v4, :cond_3

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 39
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 42
    move-result v4

    .line 43
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 46
    move-result v10

    .line 47
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    .line 49
    invoke-direct {v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    move-object v9, v11

    .line 65
    goto :goto_3

    .line 66
    :catch_0
    move-exception v1

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :catch_1
    move-exception v1

    .line 71
    move-object v11, v9

    .line 72
    :goto_1
    :try_start_3
    invoke-static {v0, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    if-eqz v11, :cond_0

    .line 77
    goto :goto_0

    .line 78
    :catch_2
    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v11, "manageEFSFile: setReadable - "

    .line 83
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_4

    .line 103
    :goto_3
    if-eqz v9, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 108
    :catch_3
    :cond_1
    throw p0

    .line 109
    :cond_2
    const-string/jumbo p0, "manageEFSFile : mkdirs fail"

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    return-void

    .line 119
    :cond_3
    invoke-virtual {v1, v7, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 122
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 125
    :goto_4
    new-instance v1, Ljava/io/File;

    .line 127
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    const-string/jumbo p0, "createEFSFile"

    .line 133
    if-eqz p1, :cond_5

    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_4

    .line 144
    const-string/jumbo p0, "deleteEFSFile : efsFile exist"

    .line 147
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    goto :goto_7

    .line 151
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    move-result p0

    .line 155
    const-string/jumbo p1, "deleteEFSFile : delete "

    .line 158
    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    goto :goto_7

    .line 162
    :cond_5
    const-string/jumbo p1, "createEFSFile: setReadable - "

    .line 165
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_6

    .line 174
    const-string/jumbo p0, "createEFSFile : efsFile exist"

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    goto :goto_7

    .line 181
    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 184
    move-result v7

    .line 185
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 188
    move-result p0

    .line 189
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 192
    move-result v4

    .line 193
    new-instance v8, Ljava/io/FileOutputStream;

    .line 195
    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 198
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p0

    .line 223
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 226
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 229
    goto :goto_6

    .line 230
    :catchall_2
    move-exception p0

    .line 231
    move-object v9, v8

    .line 232
    goto :goto_8

    .line 233
    :catch_4
    move-exception p0

    .line 234
    move-object v9, v8

    .line 235
    goto :goto_5

    .line 236
    :catchall_3
    move-exception p0

    .line 237
    goto :goto_8

    .line 238
    :catch_5
    move-exception p0

    .line 239
    :goto_5
    :try_start_8
    invoke-static {v0, v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 242
    if-eqz v9, :cond_7

    .line 244
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 247
    :catch_6
    :cond_7
    :goto_6
    const-string/jumbo p0, "createEFSFile : create "

    .line 250
    invoke-static {p0, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    return-void

    .line 257
    :goto_8
    if-eqz v9, :cond_8

    .line 259
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 262
    :catch_7
    :cond_8
    throw p0
.end method

.method private native readParamData()[B
.end method

.method public static writeData(Z)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1482

    .line 11
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    move-result v0

    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 21
    move-result v1

    .line 22
    if-ne v0, v1, :cond_2

    .line 24
    :goto_0
    const/16 v0, 0x20

    .line 26
    new-array v0, v0, [B

    .line 28
    new-instance v1, Ljava/security/SecureRandom;

    .line 30
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 33
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 36
    const/4 v1, 0x7

    .line 37
    const/16 v2, 0x1f

    .line 39
    const/16 v3, 0x1e

    .line 41
    if-nez p0, :cond_1

    .line 43
    const/16 p0, 0x8

    .line 45
    aput-byte p0, v0, v1

    .line 47
    const/4 p0, 0x2

    .line 48
    aput-byte p0, v0, v3

    .line 50
    const/4 p0, 0x6

    .line 51
    aput-byte p0, v0, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    aput-byte v1, v0, v1

    .line 56
    const/4 p0, 0x1

    .line 57
    aput-byte p0, v0, v3

    .line 59
    const/4 p0, 0x5

    .line 60
    aput-byte p0, v0, v2

    .line 62
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "writeData : index - 7 value - "

    .line 67
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    const-string v1, "RestrictionPolicy"

    .line 83
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeParamData([B)Z

    .line 89
    move-result p0

    .line 90
    return p0

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 93
    const-string v0, "Can only be called by system user"

    .line 95
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
.end method

.method private static native writeParamData([B)Z
.end method


# virtual methods
.method public final addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 8

    .line 1
    const-string v0, "RESTRICTION_ADMIN"

    .line 3
    invoke-static {p1, v0}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    if-eqz p2, :cond_1

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 30
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    move-result v2

    .line 36
    if-lez v2, :cond_0

    .line 38
    const-string v2, ","

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 50
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v7

    .line 56
    const/4 v4, 0x0

    .line 57
    const-string v5, "RESTRICTION"

    .line 59
    const-string/jumbo v6, "preventAdminActivationWhiteList"

    .line 62
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public final adjustPreferredSim(Ljava/util/List;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MultiSimPolicy"

    .line 7
    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 34
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 40
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 46
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-boolean v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 51
    if-eqz v4, :cond_0

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    const-string v5, "adjustPreferredSim disabledSubInfo.add : "

    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v3

    .line 79
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 91
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_2

    .line 97
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_2

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const/4 v4, 0x0

    .line 105
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 107
    if-eqz v3, :cond_4

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    const-string v5, "adjustPreferredSim availableSubInfo(P) : "

    .line 113
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_4
    if-nez v4, :cond_7

    .line 128
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v2

    .line 132
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_7

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 144
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_5

    .line 150
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 153
    move-result v5

    .line 154
    if-ltz v5, :cond_5

    .line 156
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 158
    if-eqz v2, :cond_6

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    const-string v4, "adjustPreferredSim availableSubInfo(E) : "

    .line 164
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    move-object v4, v3

    .line 178
    :cond_7
    const/4 v2, 0x0

    .line 179
    if-nez v4, :cond_9

    .line 181
    iget-boolean p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 183
    if-eqz p0, :cond_8

    .line 185
    const-string p0, "adjustPreferredSim availableSubInfo == null. returns false"

    .line 187
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_8
    return v2

    .line 191
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 194
    move-result-object v3

    .line 195
    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    move-result v5

    .line 199
    const/4 v6, 0x1

    .line 200
    if-eqz v5, :cond_c

    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 208
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    .line 211
    move-result v7

    .line 212
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 215
    move-result v8

    .line 216
    if-ne v7, v8, :cond_a

    .line 218
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 220
    if-eqz v2, :cond_b

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    const-string v7, "adjustPreferredSim prev sms : "

    .line 226
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v2

    .line 236
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_b
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 242
    move-result v2

    .line 243
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 246
    move v2, v6

    .line 247
    goto :goto_2

    .line 248
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 251
    move-result-object v3

    .line 252
    :cond_d
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_f

    .line 258
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 264
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 267
    move-result v7

    .line 268
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 271
    move-result v8

    .line 272
    if-ne v7, v8, :cond_d

    .line 274
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 276
    if-eqz v2, :cond_e

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    const-string v7, "adjustPreferredSim prev data : "

    .line 282
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v2

    .line 292
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_e
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 298
    move-result v2

    .line 299
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 302
    move v2, v6

    .line 303
    goto :goto_3

    .line 304
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    move-result-object p1

    .line 308
    :cond_10
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_13

    .line 314
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 320
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    .line 323
    move-result v3

    .line 324
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 327
    move-result v5

    .line 328
    if-ne v3, v5, :cond_10

    .line 330
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 332
    if-eqz v2, :cond_11

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 336
    const-string v3, "adjustPreferredSim prev call : "

    .line 338
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v0

    .line 348
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_11
    const-string/jumbo v0, "setPreferredCallSetting getSimSlotIndex : "

    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 357
    move-result-wide v2

    .line 358
    :try_start_0
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 361
    move-result v5

    .line 362
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPhoneAccountForSubId(I)Landroid/telecom/PhoneAccountHandle;

    .line 365
    move-result-object v7

    .line 366
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 368
    const-class v9, Landroid/telecom/TelecomManager;

    .line 370
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 373
    move-result-object v8

    .line 374
    check-cast v8, Landroid/telecom/TelecomManager;

    .line 376
    invoke-virtual {v8, v7}, Landroid/telecom/TelecomManager;->semSetUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    .line 382
    move-result-object v7

    .line 383
    invoke-virtual {v7, v5}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 386
    iget-boolean v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 388
    if-eqz v5, :cond_12

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    .line 392
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 398
    move-result v0

    .line 399
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v0

    .line 406
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    goto :goto_5

    .line 410
    :catchall_0
    move-exception p0

    .line 411
    goto :goto_6

    .line 412
    :cond_12
    :goto_5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 417
    move-result-object v0

    .line 418
    const-string/jumbo v5, "prefered_voice_call"

    .line 421
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 424
    move-result v7

    .line 425
    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    move v2, v6

    .line 432
    goto :goto_4

    .line 433
    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    throw p0

    .line 437
    :cond_13
    return v2
.end method

.method public final allowActivationLock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string v5, "allowActivationLock"

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 21
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v7

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v8

    .line 31
    const-string v2, "allowActivationLock"

    .line 33
    const-wide/32 v3, 0x8000000

    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 41
    return v0
.end method

.method public final allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "allowAirplaneMode : allow = "

    .line 7
    const-string v1, "RestrictionPolicy"

    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v3, "RESTRICTION"

    .line 19
    const-string v7, "allowAirplaneMode"

    .line 21
    move v5, p2

    .line 22
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 28
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v8

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v9

    .line 38
    const-string v3, "allowAirplaneMode"

    .line 40
    const-wide/16 v4, 0x80

    .line 42
    const/4 v6, 0x1

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 47
    if-eqz v0, :cond_2

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->turnOffAirPlaneMode()V

    .line 59
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAirplaneModeAllowedSystemUI(IZ)V

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    move-result-wide v2

    .line 66
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 69
    move-result v7

    .line 70
    const-string v8, "RestrictionPolicy"

    .line 72
    if-eqz p2, :cond_1

    .line 74
    const-string p0, "Admin %d has allowed airplane mode."

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const-string p0, "Admin %d has disallowed airplane mode."

    .line 81
    :goto_0
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p2

    .line 87
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v9

    .line 95
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 97
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 100
    move-result v10

    .line 101
    const/4 v4, 0x5

    .line 102
    const/4 v5, 0x1

    .line 103
    const/4 v6, 0x1

    .line 104
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    goto :goto_2

    .line 111
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    throw p0

    .line 115
    :cond_2
    :goto_2
    const-string p0, "allowAirplaneMode : "

    .line 117
    invoke-static {p0, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    return v0
.end method

.method public final allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string v5, "allowAudioRecording"

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    const-string v1, "allowAudioRecord : "

    .line 21
    const-string v2, "RestrictionPolicy"

    .line 23
    invoke-static {v1, v2, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    move-result v8

    .line 34
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v9

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v10

    .line 44
    const-string v4, "allowAudioRecording"

    .line 46
    const-wide/16 v5, 0x1

    .line 48
    const/4 v7, 0x1

    .line 49
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 52
    if-eqz v0, :cond_1

    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    const-string/jumbo p1, "g_knox_audiorecord_allowed=false"

    .line 66
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    const-string/jumbo p1, "g_knox_audiorecord_allowed=true"

    .line 75
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 78
    :cond_1
    :goto_0
    return v0
.end method

.method public final allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "RestrictionPolicy"

    .line 7
    if-nez p2, :cond_0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v1

    .line 13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 16
    move-result-object v3

    .line 17
    const/4 v4, -0x1

    .line 18
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "Fail getting ActivityManager "

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 39
    :goto_1
    if-eqz v1, :cond_1

    .line 41
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 45
    const/4 v6, 0x0

    .line 46
    const-string v3, "RESTRICTION"

    .line 48
    const-string/jumbo v7, "limitOfBackgroundProcess"

    .line 51
    move v5, p2

    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 55
    move-result v2

    .line 56
    and-int/2addr v1, v2

    .line 57
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 59
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v8

    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object v9

    .line 69
    const-string/jumbo v3, "limitOfBackgroundProcess"

    .line 72
    const-wide/16 v4, 0x4000

    .line 74
    const/4 v6, 0x1

    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 79
    :cond_1
    const-string p0, "allowBackgroundProcessLimit : "

    .line 81
    invoke-static {p0, v0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    return v1
.end method

.method public final allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v5

    .line 9
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const/4 v10, 0x0

    .line 14
    const-string v7, "RESTRICTION"

    .line 16
    const-string v11, "allowClipboardShare"

    .line 18
    move v9, p2

    .line 19
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 22
    move-result v8

    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 25
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v6

    .line 31
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v7

    .line 35
    const-string v1, "allowClipboardShare"

    .line 37
    const-wide/32 v2, 0x20000

    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 44
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 46
    const-string/jumbo p1, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    const-string p1, "allowClipboardShare : "

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string p1, ", ret = "

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p1, "RestrictionPolicy"

    .line 73
    invoke-static {p1, p0, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 76
    return v8
.end method

.method public final allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string v5, "allowDataSaving"

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 23
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v7

    .line 29
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v8

    .line 33
    const-string v2, "allowDataSaving"

    .line 35
    const-wide/high16 v3, 0x800000000000000L

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V

    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    move-result-wide v1

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 52
    move-result v6

    .line 53
    const-string v7, "RestrictionPolicy"

    .line 55
    if-eqz p2, :cond_0

    .line 57
    const-string p0, "Admin %d has allowed data saving."

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const-string p0, "Admin %d has disallowed data saving."

    .line 64
    :goto_0
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p2

    .line 70
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v8

    .line 78
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 80
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 83
    move-result v9

    .line 84
    const/4 v3, 0x5

    .line 85
    const/4 v4, 0x1

    .line 86
    const/4 v5, 0x1

    .line 87
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    goto :goto_2

    .line 94
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    throw p0

    .line 98
    :cond_1
    :goto_2
    const-string p0, "allowDataSaver : "

    .line 100
    const-string p1, "RestrictionPolicy"

    .line 102
    invoke-static {p0, p1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    return v0
.end method

.method public final allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v8

    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x1

    .line 9
    if-nez p2, :cond_5

    .line 11
    new-instance v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    .line 13
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-direct {v2, v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v3, "DeveloperModeSettings"

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v4

    .line 24
    :try_start_0
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string/jumbo v6, "persist.bluetooth.btsnoopenable"

    .line 31
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetMockLocationApps()Z

    .line 37
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 41
    move-result-object v6

    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-interface {v6, v7, v9, v10}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    move v6, v10

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move v6, v9

    .line 49
    :goto_0
    and-int/2addr v6, v0

    .line 50
    :try_start_2
    iget-object v0, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v7, "wifi"

    .line 55
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 61
    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiManager;->setVerboseLoggingEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    const-string v0, "adb"

    .line 66
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    .line 73
    move-result-object v0

    .line 74
    const-string/jumbo v7, "ro.adb.secure"

    .line 77
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    move-result v7

    .line 81
    const-string/jumbo v11, "trigger_restart_min_framework"

    .line 84
    const-string/jumbo v12, "vold.decrypt"

    .line 87
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v11

    .line 95
    if-eqz v7, :cond_0

    .line 97
    if-nez v11, :cond_0

    .line 99
    invoke-interface {v0}, Landroid/debug/IAdbManager;->clearDebuggingKeys()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    goto :goto_2

    .line 105
    :cond_0
    :goto_1
    move v0, v10

    .line 106
    goto :goto_3

    .line 107
    :goto_2
    :try_start_4
    const-string v7, "Unable to clear adb keys"

    .line 109
    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    move v0, v9

    .line 113
    :goto_3
    and-int/2addr v0, v6

    .line 114
    invoke-static {}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetDrawingOptions()Z

    .line 117
    move-result v6

    .line 118
    and-int/2addr v0, v6

    .line 119
    iget-object v6, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    move-result-object v6

    .line 125
    const-string/jumbo v7, "debug.force_rtl"

    .line 128
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    const-string v6, "0"

    .line 133
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v6, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 153
    invoke-static {}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetWindowManagerOptions()Z

    .line 156
    move-result v6

    .line 157
    and-int/2addr v6, v0

    .line 158
    iget-object v0, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 163
    move-result-object v0

    .line 164
    const-string/jumbo v7, "show_processes"

    .line 167
    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    new-instance v0, Landroid/content/Intent;

    .line 172
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    const-string/jumbo v7, "com.android.systemui"

    .line 178
    const-string/jumbo v11, "com.android.systemui.LoadAverageService"

    .line 181
    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    move-result-object v0

    .line 185
    iget-object v7, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v7, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 193
    move-result-object v0

    .line 194
    const/4 v7, -0x1

    .line 195
    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 198
    move v0, v10

    .line 199
    goto :goto_4

    .line 200
    :catch_2
    move-exception v0

    .line 201
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v11, "resetAppProcessLimitOptions: RemoteException ex -> "

    .line 206
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    move v0, v9

    .line 224
    :goto_4
    and-int/2addr v6, v0

    .line 225
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 228
    move-result-object v0

    .line 229
    invoke-interface {v0, v9}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    move v0, v10

    .line 233
    goto :goto_5

    .line 234
    :catch_3
    move-exception v0

    .line 235
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v11, "resetImmediatelyDestroyActivitiesOptions: RemoteException ex -> "

    .line 240
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move v0, v9

    .line 258
    :goto_5
    and-int/2addr v0, v6

    .line 259
    sget-object v6, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SYSTEM_SETTINGS_DEFAULT:Ljava/util/Map;

    .line 261
    check-cast v6, Ljava/util/HashMap;

    .line 263
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 266
    move-result-object v6

    .line 267
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 270
    move-result-object v6

    .line 271
    move v7, v10

    .line 272
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    move-result v11

    .line 276
    if-eqz v11, :cond_1

    .line 278
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    move-result-object v11

    .line 282
    check-cast v11, Ljava/util/Map$Entry;

    .line 284
    iget-object v12, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 289
    move-result-object v12

    .line 290
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 293
    move-result-object v13

    .line 294
    check-cast v13, Ljava/lang/String;

    .line 296
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 299
    move-result-object v11

    .line 300
    check-cast v11, Ljava/lang/String;

    .line 302
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    move-result v11

    .line 306
    and-int/2addr v7, v11

    .line 307
    goto :goto_6

    .line 308
    :cond_1
    and-int/2addr v0, v7

    .line 309
    sget-object v6, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->GLOBAL_SETTINGS_DEFAULT:Ljava/util/Map;

    .line 311
    check-cast v6, Ljava/util/HashMap;

    .line 313
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 316
    move-result-object v6

    .line 317
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 320
    move-result-object v6

    .line 321
    move v7, v10

    .line 322
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    move-result v11

    .line 326
    if-eqz v11, :cond_2

    .line 328
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    move-result-object v11

    .line 332
    check-cast v11, Ljava/util/Map$Entry;

    .line 334
    iget-object v12, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 339
    move-result-object v12

    .line 340
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 343
    move-result-object v13

    .line 344
    check-cast v13, Ljava/lang/String;

    .line 346
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 349
    move-result-object v11

    .line 350
    check-cast v11, Ljava/lang/String;

    .line 352
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    move-result v11

    .line 356
    and-int/2addr v7, v11

    .line 357
    goto :goto_7

    .line 358
    :cond_2
    and-int/2addr v0, v7

    .line 359
    sget-object v6, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SECURE_SETTINGS_DEFAULT:Ljava/util/Map;

    .line 361
    check-cast v6, Ljava/util/HashMap;

    .line 363
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 366
    move-result-object v6

    .line 367
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 370
    move-result-object v6

    .line 371
    move v7, v10

    .line 372
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    move-result v11

    .line 376
    if-eqz v11, :cond_3

    .line 378
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    move-result-object v11

    .line 382
    check-cast v11, Ljava/util/Map$Entry;

    .line 384
    iget-object v12, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 386
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 389
    move-result-object v12

    .line 390
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 393
    move-result-object v13

    .line 394
    check-cast v13, Ljava/lang/String;

    .line 396
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 399
    move-result-object v11

    .line 400
    check-cast v11, Ljava/lang/String;

    .line 402
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    move-result v11

    .line 406
    and-int/2addr v7, v11

    .line 407
    goto :goto_8

    .line 408
    :cond_3
    and-int v6, v0, v7

    .line 410
    invoke-static {}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetSystemProperties()V

    .line 413
    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;

    .line 415
    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    new-array v7, v9, [Ljava/lang/Void;

    .line 420
    invoke-virtual {v0, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 423
    iget-object v0, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 425
    invoke-static {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 428
    move-result-object v0

    .line 429
    if-eqz v0, :cond_4

    .line 431
    invoke-virtual {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->isSettingPolicyApplied()Z

    .line 434
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 435
    if-nez v0, :cond_4

    .line 437
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 440
    move-result-object v0

    .line 441
    const-string/jumbo v7, "com.android.settings"

    .line 444
    iget-object v2, v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 449
    move-result v2

    .line 450
    invoke-interface {v0, v7, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 453
    goto :goto_9

    .line 454
    :catchall_0
    move-exception v0

    .line 455
    goto :goto_a

    .line 456
    :catch_4
    move-exception v0

    .line 457
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 459
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    const-string/jumbo v7, "killSettings: RemoteException ex -> "

    .line 465
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    move-result-object v0

    .line 479
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 482
    :cond_4
    :goto_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    const-string v0, "allowDeveloperMode: false"

    .line 487
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    move v0, v6

    .line 491
    goto :goto_b

    .line 492
    :goto_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    throw v0

    .line 496
    :cond_5
    move v0, v10

    .line 497
    :goto_b
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 499
    iget v4, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 501
    const-string v3, "RESTRICTION"

    .line 503
    const-string v7, "allowDeveloperMode"

    .line 505
    const/4 v6, 0x0

    .line 506
    move/from16 v5, p2

    .line 508
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 511
    move-result v2

    .line 512
    iget-object v11, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 514
    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 516
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    move-result-object v17

    .line 520
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 523
    move-result-object v18

    .line 524
    const/4 v15, 0x1

    .line 525
    const/16 v16, 0x0

    .line 527
    const-string v12, "allowDeveloperMode"

    .line 529
    const-wide/16 v13, 0x40

    .line 531
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 534
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 537
    move-result v22

    .line 538
    if-eqz p2, :cond_6

    .line 540
    const-string v1, "Admin %d has allowed developer mode."

    .line 542
    goto :goto_c

    .line 543
    :cond_6
    const-string v1, "Admin %d has disallowed developer mode."

    .line 545
    :goto_c
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 547
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    move-result-object v3

    .line 551
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 554
    move-result-object v3

    .line 555
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 558
    move-result-object v24

    .line 559
    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 561
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 564
    move-result v25

    .line 565
    const/16 v21, 0x1

    .line 567
    const-string v23, "RestrictionPolicy"

    .line 569
    const/16 v19, 0x5

    .line 571
    const/16 v20, 0x1

    .line 573
    invoke-static/range {v19 .. v25}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 576
    if-eqz v2, :cond_7

    .line 578
    if-eqz v0, :cond_7

    .line 580
    move v9, v10

    .line 581
    :cond_7
    return v9
.end method

.method public final allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v9

    .line 15
    const/4 v11, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    const-string v2, "RESTRICTION"

    .line 22
    const-string v6, "allowFaceRecognitionEvenCameraBlocked"

    .line 24
    const/4 v5, 0x0

    .line 25
    move v4, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 29
    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 32
    const-string v2, "allowFaceRecognitionEvenCameraBlocked"

    .line 34
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v7

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v8

    .line 44
    const-wide/high16 v3, 0x2000000000000000L

    .line 46
    const/4 v5, 0x0

    .line 47
    move v6, v0

    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 51
    if-eqz v12, :cond_1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0, v11, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V

    .line 60
    if-eqz p2, :cond_0

    .line 62
    const/16 p0, 0x22

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/16 p0, 0x23

    .line 67
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p1

    .line 73
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p0, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_4

    .line 83
    :catch_0
    move-exception p0

    .line 84
    move v11, v12

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    goto :goto_3

    .line 90
    :catch_1
    move-exception p0

    .line 91
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    move v12, v11

    .line 98
    :goto_3
    return v12

    .line 99
    :goto_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw p0
.end method

.method public final allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v8

    .line 9
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 11
    const-wide/high16 v9, 0x8000000000000L

    .line 13
    const/4 v11, 0x1

    .line 14
    const/4 v12, 0x0

    .line 15
    invoke-virtual {v1, v12, v9, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 18
    move-result v13

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "allowFactoryReset : oldState - "

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, ", allow - "

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v14, "RestrictionPolicy"

    .line 43
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 50
    const-string v2, "RESTRICTION"

    .line 52
    const-string/jumbo v6, "factoryresetallowed"

    .line 55
    const/4 v5, 0x0

    .line 56
    move/from16 v4, p2

    .line 58
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 61
    move-result v1

    .line 62
    iget-object v15, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 64
    iget v2, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v21

    .line 70
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    move-result-object v22

    .line 74
    const/16 v19, 0x1

    .line 76
    const/16 v20, 0x0

    .line 78
    const-string/jumbo v16, "factoryresetallowed"

    .line 81
    const-wide/high16 v17, 0x8000000000000L

    .line 83
    invoke-virtual/range {v15 .. v22}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 86
    if-eqz v1, :cond_1

    .line 88
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 90
    invoke-virtual {v0, v12, v9, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 93
    move-result v0

    .line 94
    if-ne v13, v0, :cond_0

    .line 96
    const-string v0, "allowFactoryReset : do not need to update"

    .line 98
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v11

    .line 102
    :cond_0
    const-string v0, "/efs/MDM/FactoryReset"

    .line 104
    invoke-static {v0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Ljava/lang/String;Z)V

    .line 107
    :cond_1
    const-string v0, "allowFactoryReset : "

    .line 109
    invoke-static {v0, v14, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    return v1
.end method

.method public final allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string v5, "allowFastEncryption"

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    const-string v1, " allowFastEncryption : "

    .line 21
    const-string v2, "RestrictionPolicy"

    .line 23
    invoke-static {v1, v2, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 28
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v9

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v10

    .line 38
    const-string v4, "allowFastEncryption"

    .line 40
    const-wide/16 v5, 0x10

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 47
    return v0
.end method

.method public final allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, " allowFirmwareAutoUpdate : "

    .line 7
    const-string v1, "RestrictionPolicy"

    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v3, "RESTRICTION"

    .line 19
    const-string v7, "allowFirmwareAutoUpdate"

    .line 21
    move v5, p2

    .line 22
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 28
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v7

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v8

    .line 38
    const-string v2, "allowFirmwareAutoUpdate"

    .line 40
    const-wide/32 v3, 0x4000000

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 48
    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 53
    move-result-wide v1

    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 58
    move-result p1

    .line 59
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    move-result-object p0

    .line 65
    const-string p2, "SOFTWARE_UPDATE_WIFI_ONLY2"

    .line 67
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    :cond_0
    return v0
.end method

.method public final allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 9
    const-wide/32 v3, 0x1000000

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 17
    move-result v2

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    .line 20
    const-string v8, "allowFirmwareRecovery :oldState - "

    .line 22
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    const-string v8, ", allow - "

    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move/from16 v8, p2

    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v7

    .line 42
    const-string v15, "RestrictionPolicy"

    .line 44
    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 49
    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 51
    const-string v10, "RESTRICTION"

    .line 53
    const-string/jumbo v14, "firmwarerecoveryallowed"

    .line 56
    const/4 v13, 0x0

    .line 57
    move/from16 v12, p2

    .line 59
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 62
    move-result v7

    .line 63
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 65
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v22

    .line 71
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v23

    .line 75
    const/16 v20, 0x1

    .line 77
    const/16 v21, 0x0

    .line 79
    const-string/jumbo v17, "firmwarerecoveryallowed"

    .line 82
    const-wide/32 v18, 0x1000000

    .line 85
    move-object/from16 v16, v9

    .line 87
    invoke-virtual/range {v16 .. v23}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 90
    if-eqz v7, :cond_1

    .line 92
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 94
    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 97
    move-result v0

    .line 98
    if-ne v2, v0, :cond_0

    .line 100
    const-string v0, "allowFirmwareRecovery : do not need to update"

    .line 102
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v5

    .line 106
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 109
    move-result-wide v1

    .line 110
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(Z)Z

    .line 113
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    if-nez v0, :cond_1

    .line 119
    const-string v0, "allowFirmwareRecovery : write fail"

    .line 121
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    move-object v3, v0

    .line 127
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    throw v3

    .line 131
    :cond_1
    :goto_0
    const-string v0, "allowFirmwareRecovery : "

    .line 133
    invoke-static {v0, v15, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    return v7
.end method

.method public final allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v8

    .line 7
    iget v0, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v15

    .line 13
    if-nez p2, :cond_3

    .line 15
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v2

    .line 25
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 30
    move-result-object v0

    .line 31
    new-instance v4, Landroid/os/UserHandle;

    .line 33
    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 36
    const-string/jumbo v5, "com.google"

    .line 39
    invoke-virtual {v0, v5, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    .line 42
    move-result-object v0

    .line 43
    array-length v4, v0

    .line 44
    if-eqz v4, :cond_2

    .line 46
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    .line 49
    move-result-object v4

    .line 50
    :try_start_0
    invoke-interface {v4, v15}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    .line 53
    move-result-object v6

    .line 54
    array-length v7, v0

    .line 55
    const/4 v10, 0x0

    .line 56
    :goto_0
    if-ge v10, v7, :cond_2

    .line 58
    aget-object v11, v0, v10

    .line 60
    array-length v12, v6

    .line 61
    const/4 v13, 0x0

    .line 62
    :goto_1
    if-ge v13, v12, :cond_1

    .line 64
    aget-object v14, v6, v13

    .line 66
    iget-object v9, v14, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 68
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_0

    .line 74
    iget-object v9, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 76
    invoke-interface {v4, v11, v9, v15}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_0

    .line 82
    iget-object v9, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 84
    const/4 v14, 0x0

    .line 85
    invoke-interface {v4, v11, v9, v14, v15}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_3

    .line 91
    :cond_0
    const/4 v14, 0x0

    .line 92
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v14, 0x0

    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 98
    goto :goto_0

    .line 99
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    const-string v5, "Failed to get content service "

    .line 103
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    const-string v4, "RestrictionPolicy"

    .line 119
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    :cond_3
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 127
    iget v4, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 129
    const/4 v6, 0x0

    .line 130
    const-string v3, "RESTRICTION"

    .line 132
    const-string v7, "allowGoogleAccountsAutoSync"

    .line 134
    move/from16 v5, p2

    .line 136
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 145
    move-result-wide v2

    .line 146
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 149
    move-result v12

    .line 150
    const-string v13, "RestrictionPolicy"

    .line 152
    if-eqz p2, :cond_4

    .line 154
    const-string v4, "Admin %d has enabled Autosync of Google account."

    .line 156
    goto :goto_4

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    goto :goto_5

    .line 159
    :cond_4
    const-string v4, "Admin %d has disabled Autosync of Google account."

    .line 161
    :goto_4
    iget v5, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object v5

    .line 167
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 170
    move-result-object v5

    .line 171
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    move-result-object v14

    .line 175
    const/4 v9, 0x5

    .line 176
    const/4 v10, 0x1

    .line 177
    const/4 v11, 0x1

    .line 178
    move v4, v15

    .line 179
    invoke-static/range {v9 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    goto :goto_6

    .line 186
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v0

    .line 190
    :cond_5
    move v4, v15

    .line 191
    :goto_6
    iget-object v9, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 193
    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v15

    .line 199
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 202
    move-result-object v16

    .line 203
    const-string v10, "allowGoogleAccountsAutoSync"

    .line 205
    const-wide/32 v11, 0x2000000

    .line 208
    const/4 v13, 0x1

    .line 209
    move v14, v4

    .line 210
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 213
    return v0
.end method

.method public final allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string/jumbo v5, "googleCrashReportEnabled"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 22
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v6

    .line 28
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v7

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v8

    .line 38
    const-string/jumbo v2, "googleCrashReportEnabled"

    .line 41
    const-wide/high16 v3, 0x80000000000000L

    .line 43
    const/4 v5, 0x1

    .line 44
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 47
    const-string p0, "allowGoogleCrashReport : allow="

    .line 49
    const-string v1, " callingUid="

    .line 51
    invoke-static {p0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p0

    .line 55
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 57
    const-string p2, "RestrictionPolicy"

    .line 59
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 62
    return v0
.end method

.method public final allowIntelligenceOnlineProcessing(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "allowIntelligenceOnlineProcessing("

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ") : "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const-string v2, "RestrictionPolicy"

    .line 35
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 41
    move-result v1

    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v1, :cond_0

    .line 46
    if-nez p2, :cond_0

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v5

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    move-result-object v1

    .line 58
    const-string/jumbo v7, "prevent_online_processing"

    .line 61
    invoke-static {v1, v7, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 64
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    const-string/jumbo v1, "turnOffOnlineProcessing() failed. "

    .line 75
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    move v0, v4

    .line 82
    :goto_0
    if-nez v0, :cond_0

    .line 84
    return v4

    .line 85
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0

    .line 89
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 93
    const/4 v11, 0x0

    .line 94
    const-string v8, "RESTRICTION"

    .line 96
    const-string v12, "allowIntelligenceOnlineProcessing"

    .line 98
    move v10, p2

    .line 99
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 105
    return v4

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 108
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 110
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 113
    move-result v10

    .line 114
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v11

    .line 120
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    move-result-object v12

    .line 124
    const-string v6, "allowIntelligenceOnlineProcessing"

    .line 126
    const-wide v7, 0x200000000000L

    .line 131
    const/4 v9, 0x1

    .line 132
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 135
    return v3
.end method

.method public final allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p2, :cond_1

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v2

    .line 13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v4, p2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V

    .line 20
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object v4

    .line 26
    const-string v5, "always_finish_activities"

    .line 28
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v1

    .line 36
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "Fail getting ActivityManager "

    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    const-string v2, "RestrictionPolicy"

    .line 61
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move v0, v1

    .line 65
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 67
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 71
    const/4 v5, 0x0

    .line 72
    const-string v2, "RESTRICTION"

    .line 74
    const-string v6, "allowKeepActivities"

    .line 76
    move v4, p2

    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 80
    move-result v1

    .line 81
    and-int/2addr v0, v1

    .line 82
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 84
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v7

    .line 90
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object v8

    .line 94
    const-string v2, "allowKeepActivities"

    .line 96
    const-wide/32 v3, 0x8000

    .line 99
    const/4 v5, 0x1

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 104
    :cond_2
    return v0
.end method

.method public final allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    const-string v0, "Allow local contact storage state input DB : "

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "allowLocalContactStorage : "

    .line 9
    const-string v2, "RestrictionPolicy"

    .line 11
    invoke-static {v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    const-string v5, "RESTRICTION"

    .line 27
    const-string v9, "allowLocalContactStorage"

    .line 29
    const/4 v8, 0x0

    .line 30
    move v7, p2

    .line 31
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 34
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 37
    const-string v4, "allowLocalContactStorage"

    .line 39
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v9

    .line 45
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v10

    .line 49
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 51
    const/4 v7, 0x1

    .line 52
    move v8, v1

    .line 53
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 56
    if-eqz v11, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 60
    const-string/jumbo p1, "content://com.sec.knox.provider/RestrictionPolicy/isLocalContactStorageAllowed"

    .line 63
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    move v3, v11

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    goto :goto_2

    .line 90
    :catch_1
    move-exception p0

    .line 91
    :goto_1
    const-string p1, "Allow local contact storage state write fail"

    .line 93
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    move v11, v3

    .line 100
    :goto_2
    return v11
.end method

.method public final allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "RestrictionPolicy"

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq p2, v2, :cond_1

    .line 15
    const/4 v5, 0x2

    .line 16
    if-ne p2, v5, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 21
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    .line 24
    throw p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_9

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_6

    .line 29
    :catch_1
    move-exception p0

    .line 30
    goto :goto_7

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 37
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    .line 40
    move-result v5
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v5, v4

    .line 43
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    const-string v8, "RESTRICTION"

    .line 49
    const-string v9, "allowLockScreenViews"

    .line 51
    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 54
    move-result v6
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    goto :goto_2

    .line 56
    :catch_2
    :try_start_2
    const-string v6, "allowLockScreenView() failed: cannot get value from edmstorageprovider."

    .line 58
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const v6, 0xffff

    .line 64
    :goto_2
    if-ne v2, p3, :cond_3

    .line 66
    or-int v2, v6, p2

    .line 68
    :goto_3
    move v9, v2

    .line 69
    goto :goto_4

    .line 70
    :cond_3
    not-int v2, p2

    .line 71
    and-int/2addr v2, v6

    .line 72
    goto :goto_3

    .line 73
    :goto_4
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 77
    const-string v10, "RESTRICTION"

    .line 79
    const-string v11, "allowLockScreenViews"

    .line 81
    const/4 v8, 0x0

    .line 82
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 88
    if-nez v5, :cond_4

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 96
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :cond_4
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    goto :goto_8

    .line 103
    :goto_6
    :try_start_3
    const-string p1, "allowLockScreenView() failed: unexpected exception"

    .line 105
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    goto :goto_5

    .line 109
    :goto_7
    const-string p1, "allowLockScreenView() failed: INVALID PARAMETER INPUT"

    .line 111
    invoke-static {v3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    goto :goto_5

    .line 115
    :goto_8
    return v4

    .line 116
    :goto_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    throw p0
.end method

.method public final allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string v3, "allowOTAUpgrade : "

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    move/from16 v3, p2

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    const-string v4, "RestrictionPolicy"

    .line 25
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 32
    move-result v10

    .line 33
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 37
    const-string v5, "RESTRICTION"

    .line 39
    const-string v9, "OTAUpgradeEnabled"

    .line 41
    const/4 v8, 0x0

    .line 42
    move/from16 v7, p2

    .line 44
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 47
    iget-object v11, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 49
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v17

    .line 55
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object v18

    .line 59
    const/4 v15, 0x1

    .line 60
    const/16 v16, 0x0

    .line 62
    const-string v12, "OTAUpgradeEnabled"

    .line 64
    const-wide/high16 v13, 0x40000000000000L

    .line 66
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 72
    move-result v2

    .line 73
    if-eq v2, v10, :cond_3

    .line 75
    if-nez v10, :cond_3

    .line 77
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 79
    const-string v4, "application_policy"

    .line 81
    if-nez v3, :cond_0

    .line 83
    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 89
    iput-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 91
    :cond_0
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 93
    const-string/jumbo v5, "com.sec.android.fotaclient"

    .line 96
    invoke-virtual {v3, v1, v5, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 99
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 101
    if-nez v3, :cond_1

    .line 103
    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 109
    iput-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 111
    :cond_1
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 113
    const-string/jumbo v5, "com.wssyncmldm"

    .line 116
    invoke-virtual {v3, v1, v5, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 119
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 121
    if-nez v3, :cond_2

    .line 123
    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 129
    iput-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 131
    :cond_2
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 133
    const-string/jumbo v3, "com.ws.dm"

    .line 136
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 139
    :cond_3
    const/4 v0, 0x1

    .line 140
    return v0
.end method

.method public final allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v8

    .line 9
    invoke-static {v8}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v14

    .line 13
    const-string v15, "RestrictionPolicy"

    .line 15
    if-eqz v14, :cond_0

    .line 17
    const-string v0, "Failed. Caller is not owner"

    .line 19
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_0
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 28
    const-string v2, "RESTRICTION"

    .line 30
    const-string/jumbo v6, "powerOffAllowed"

    .line 33
    const/4 v5, 0x0

    .line 34
    move/from16 v4, p2

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 42
    iget v0, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v16

    .line 52
    const-wide/16 v11, 0x800

    .line 54
    const/4 v13, 0x1

    .line 55
    const-string/jumbo v10, "powerOffAllowed"

    .line 58
    move-object v2, v15

    .line 59
    move-object v15, v0

    .line 60
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 63
    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v0, "efs/MDM/PowerOff"

    .line 68
    invoke-static {v0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Ljava/lang/String;Z)V

    .line 71
    const-string/jumbo v0, "setMaintenanceModeDisallowedSetting - value = "

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    move-result-wide v3

    .line 78
    xor-int/lit8 v5, v7, 0x1

    .line 80
    :try_start_0
    invoke-static {v5}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->setDisallowedSetting(Z)V

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw v0

    .line 107
    :cond_1
    :goto_0
    return v1
.end method

.method public final allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string v5, "allowPowerSavingMode"

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 21
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v7

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v8

    .line 31
    const-string v2, "allowPowerSavingMode"

    .line 33
    const-wide/high16 v3, 0x1000000000000000L

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 40
    const-string p1, "allowPowerSavingMode : "

    .line 42
    const-string v1, "RestrictionPolicy"

    .line 44
    invoke-static {p1, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    if-nez p2, :cond_2

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    move-result-wide p1

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCurrentPowerSavingMode()I

    .line 56
    move-result v2

    .line 57
    const/4 v3, 0x1

    .line 58
    const/4 v4, 0x0

    .line 59
    if-ne v2, v3, :cond_0

    .line 61
    const-string v2, "allowPowerSavingMode : Power Saving Mode off"

    .line 63
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    move-result-object v2

    .line 72
    const-string/jumbo v3, "powersaving_switch"

    .line 75
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    move-result-object p0

    .line 84
    const-string/jumbo v2, "low_power"

    .line 87
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception p0

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCurrentPowerSavingMode()I

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 101
    const-string v2, "allowPowerSavingMode : send intent to PMS"

    .line 103
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v2, Landroid/content/Intent;

    .line 108
    const-string/jumbo v5, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    .line 111
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v5, "enabled"

    .line 117
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string/jumbo v4, "flag"

    .line 123
    const/16 v5, 0x200

    .line 125
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v4, "skipdialog"

    .line 131
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const/high16 v3, 0x10000000

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 141
    sget-object v3, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    goto :goto_3

    .line 150
    :goto_1
    :try_start_1
    const-string v2, "allowPowerSavingMode() failed. "

    .line 152
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    goto :goto_0

    .line 156
    :goto_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    throw p0

    .line 160
    :cond_2
    :goto_3
    return v0
.end method

.method public final allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v5

    .line 9
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    const-string v0, " allowSDCardMove : "

    .line 28
    const-string v1, "RestrictionPolicy"

    .line 30
    invoke-static {v0, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 37
    const-string v7, "RESTRICTION"

    .line 39
    const-string v11, "allowSDCardMove"

    .line 41
    const/4 v10, 0x0

    .line 42
    move v9, p2

    .line 43
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 46
    move-result v8

    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 49
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v6

    .line 55
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object v7

    .line 59
    const-wide/32 v2, 0x20000000

    .line 62
    const/4 v4, 0x1

    .line 63
    const-string v1, "allowSDCardMove"

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 68
    return v8
.end method

.method public final allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 9
    move-result v1

    .line 10
    const-string v2, "allowSDCardWrite : "

    .line 12
    const-string v3, "RestrictionPolicy"

    .line 14
    invoke-static {v2, v3, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 21
    const/4 v8, 0x0

    .line 22
    const-string v5, "RESTRICTION"

    .line 24
    const-string/jumbo v9, "sdCardWriteEnabled"

    .line 27
    move v7, p2

    .line 28
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 34
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v9

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v10

    .line 44
    const-string/jumbo v4, "sdCardWriteEnabled"

    .line 47
    const-wide v5, 0x800000000L

    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x0

    .line 54
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 57
    if-eqz v2, :cond_1

    .line 59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    move-result-wide p1

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 66
    move-result v0

    .line 67
    if-eq v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 72
    :cond_0
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    :cond_1
    return v2
.end method

.method public final allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v8

    .line 9
    invoke-static {v8}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v15

    .line 13
    const/4 v14, 0x0

    .line 14
    invoke-virtual {v0, v8, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 17
    move-result v17

    .line 18
    if-nez v7, :cond_0

    .line 20
    if-eqz v17, :cond_0

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v1

    .line 26
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v3

    .line 32
    const-string/jumbo v4, "wake_up_lock_screen"

    .line 35
    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 38
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v3

    .line 44
    const-string/jumbo v4, "voice_input_control"

    .line 47
    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 50
    move-result v3

    .line 51
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    const-string/jumbo v6, "voiceControl"

    .line 60
    invoke-virtual {v5, v15, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 63
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    :cond_0
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 79
    const-string v2, "RESTRICTION"

    .line 81
    const-string v6, "allowSVoice"

    .line 83
    const/4 v5, 0x0

    .line 84
    move/from16 v4, p2

    .line 86
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 89
    move-result v1

    .line 90
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 92
    iget v2, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v2

    .line 98
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    move-result-object v16

    .line 102
    const-wide/16 v11, 0x20

    .line 104
    const/4 v13, 0x1

    .line 105
    const-string v10, "allowSVoice"

    .line 107
    move v3, v14

    .line 108
    move v14, v15

    .line 109
    move v4, v15

    .line 110
    move-object v15, v2

    .line 111
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 114
    if-eqz v7, :cond_1

    .line 116
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    .line 119
    :cond_1
    const-string v2, "RestrictionPolicy"

    .line 121
    if-eqz v1, :cond_5

    .line 123
    if-eqz v17, :cond_5

    .line 125
    if-nez v7, :cond_5

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 130
    move-result-wide v5

    .line 131
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 133
    const-string v9, "activity"

    .line 135
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/app/ActivityManager;

    .line 141
    const/16 v9, 0xc

    .line 143
    invoke-virtual {v0, v9, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    .line 146
    move-result-object v9

    .line 147
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 150
    move-result v10

    .line 151
    if-nez v10, :cond_4

    .line 153
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v9

    .line 157
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_4

    .line 163
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v10

    .line 167
    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 169
    iget-object v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 171
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 174
    move-result-object v11

    .line 175
    if-eqz v11, :cond_2

    .line 177
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 180
    move-result-object v11

    .line 181
    const-string/jumbo v12, "packageName "

    .line 184
    invoke-static {v12, v11, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz v11, :cond_2

    .line 189
    const-string/jumbo v12, "com.vlingo.midas"

    .line 192
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v12

    .line 196
    if-nez v12, :cond_3

    .line 198
    const-string/jumbo v12, "com.samsung.voiceserviceplatform"

    .line 201
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v12

    .line 205
    if-eqz v12, :cond_2

    .line 207
    :cond_3
    iget v9, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 209
    invoke-virtual {v0, v9, v3}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    .line 212
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 215
    move-result-object v0

    .line 216
    invoke-interface {v0, v11, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    const-string v4, "Fail getting ActivityManager "

    .line 225
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 231
    move v14, v3

    .line 232
    goto :goto_1

    .line 233
    :cond_4
    :goto_0
    move v14, v1

    .line 234
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    move v1, v14

    .line 238
    :cond_5
    const-string v0, "allowSVoice : "

    .line 240
    invoke-static {v0, v2, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
    if-eqz v1, :cond_7

    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 248
    move-result-wide v2

    .line 249
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 252
    move-result v12

    .line 253
    const-string v13, "RestrictionPolicy"

    .line 255
    if-eqz v7, :cond_6

    .line 257
    const-string v0, "Admin %d has allowed SVoice."

    .line 259
    goto :goto_2

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    goto :goto_3

    .line 262
    :cond_6
    const-string v0, "Admin %d has disallowed SVoice."

    .line 264
    :goto_2
    iget v4, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    move-result-object v4

    .line 270
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 273
    move-result-object v4

    .line 274
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    move-result-object v14

    .line 278
    iget v0, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 280
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 283
    move-result v15

    .line 284
    const/4 v10, 0x1

    .line 285
    const/4 v11, 0x1

    .line 286
    const/4 v9, 0x5

    .line 287
    invoke-static/range {v9 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    goto :goto_4

    .line 294
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    throw v0

    .line 298
    :cond_7
    :goto_4
    return v1
.end method

.method public final allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "allowSafeMode : "

    .line 7
    const-string v1, "RestrictionPolicy"

    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)V

    .line 24
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 28
    const-string v4, "RESTRICTION"

    .line 30
    const-string v8, "allowSafeMode"

    .line 32
    const/4 v7, 0x0

    .line 33
    move v6, p2

    .line 34
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 37
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    const-string v2, "allowSafeMode() : failed with error."

    .line 42
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 p1, 0x0

    .line 46
    :goto_0
    if-nez p1, :cond_1

    .line 48
    if-nez p2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode()Z

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 56
    :cond_1
    if-eqz p1, :cond_3

    .line 58
    if-eqz p2, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode()Z

    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_3

    .line 66
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)V

    .line 73
    :cond_3
    return p1
.end method

.method public final allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v1

    .line 13
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 29
    return v3

    .line 30
    :cond_0
    if-nez p2, :cond_1

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v4

    .line 36
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v2

    .line 42
    const-string/jumbo v6, "lock_to_app_enabled"

    .line 45
    invoke-static {v2, v6, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 48
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 55
    const-string v8, "RESTRICTION"

    .line 57
    const-string/jumbo v12, "screenPinningAllowed"

    .line 60
    const/4 v11, 0x0

    .line 61
    move v10, p2

    .line 62
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 68
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 70
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 73
    move-result v7

    .line 74
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v8

    .line 80
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    move-result-object v9

    .line 84
    const-wide/high16 v4, 0x200000000000000L

    .line 86
    const/4 v6, 0x1

    .line 87
    const-string/jumbo v3, "screenPinningAllowed"

    .line 90
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 93
    if-eqz v1, :cond_2

    .line 95
    if-nez p2, :cond_2

    .line 97
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 99
    const-string p1, "activity"

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Landroid/app/ActivityManager;

    .line 107
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_2

    .line 113
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 116
    move-result-object p0

    .line 117
    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 121
    :catch_0
    const-string/jumbo p0, "trying to un pin app from different user, just ignore"

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_0

    .line 128
    :catch_1
    const-string/jumbo p0, "failed taking activity manager service"

    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    :goto_0
    return v1
.end method

.method public final allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    const-string/jumbo v0, "com.android.settings"

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 11
    move-result v9

    .line 12
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 24
    move-result v1

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 28
    return v10

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    const-string v3, "RESTRICTION"

    .line 35
    const-string v7, "allowSettingsChanges"

    .line 37
    const/4 v6, 0x0

    .line 38
    move v5, p2

    .line 39
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 42
    move-result v11

    .line 43
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 45
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v7

    .line 51
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object v8

    .line 55
    const-wide/16 v3, 0x8

    .line 57
    const/4 v5, 0x1

    .line 58
    const-string v2, "allowSettingsChanges"

    .line 60
    move v6, v9

    .line 61
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 64
    const-string v1, "allowSettingsChanges : "

    .line 66
    const-string v2, "RestrictionPolicy"

    .line 68
    invoke-static {v1, v2, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    if-eqz v11, :cond_3

    .line 73
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 76
    move-result-wide v3

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 79
    const-string v5, "activity"

    .line 81
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/app/ActivityManager;

    .line 87
    const/16 v5, 0xc

    .line 89
    invoke-virtual {v1, v5, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    .line 92
    move-result-object v5

    .line 93
    if-nez p2, :cond_2

    .line 95
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_2

    .line 101
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object p2

    .line 105
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_2

    .line 111
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 117
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 119
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 122
    move-result-object v6

    .line 123
    if-eqz v6, :cond_1

    .line 125
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 128
    move-result-object v6

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string/jumbo v8, "packageName "

    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v7

    .line 147
    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v6, :cond_1

    .line 152
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_1

    .line 158
    const-string/jumbo v6, "password_policy"

    .line 161
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    move-result-object v6

    .line 165
    check-cast v6, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 167
    if-eqz v6, :cond_1

    .line 169
    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_1

    .line 175
    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 177
    invoke-virtual {v1, v5, v10}, Landroid/app/ActivityManager;->semRemoveTask(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 183
    move-result-object v5

    .line 184
    invoke-interface {v5, v0, v9}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    goto :goto_0

    .line 188
    :catchall_0
    move-exception p0

    .line 189
    goto :goto_1

    .line 190
    :catch_0
    move-exception v5

    .line 191
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v7, "Fail getting ActivityManager "

    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v5

    .line 212
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move v11, v10

    .line 216
    goto :goto_0

    .line 217
    :cond_2
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 219
    new-instance v0, Landroid/content/Intent;

    .line 221
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.ALLOW_SETTINGS_CHANGES_INTERNAL"

    .line 224
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const/high16 v1, 0x1000000

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    move-result-object v0

    .line 233
    new-instance v1, Landroid/os/UserHandle;

    .line 235
    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 238
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    invoke-virtual {p0, p1, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 247
    move-result p1

    .line 248
    invoke-virtual {p0, v9, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSettingsChangeSystemUI(IZ)V

    .line 251
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 253
    const-string/jumbo p2, "content://com.sec.knox.provider/RestrictionPolicy3/isSettingsChangesAllowed"

    .line 256
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 259
    move-result-object p2

    .line 260
    invoke-static {p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 263
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 265
    const-string/jumbo p1, "content://com.sec.knox.provider/RestrictionPolicy/isSettingsChangesAllowed"

    .line 268
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 271
    move-result-object p1

    .line 272
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 275
    goto :goto_2

    .line 276
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw p0

    .line 280
    :cond_3
    :goto_2
    return v11
.end method

.method public final allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v5

    .line 9
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const/4 v10, 0x0

    .line 14
    const-string v7, "RESTRICTION"

    .line 16
    const-string v11, "allowShareList"

    .line 18
    move v9, p2

    .line 19
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 22
    move-result v8

    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 25
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v6

    .line 31
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v7

    .line 35
    const-string v1, "allowShareList"

    .line 37
    const-wide/32 v2, 0x100000

    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 44
    const-string p0, "allowShareList : allow="

    .line 46
    const-string v0, " containerId="

    .line 48
    invoke-static {p0, v0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 51
    move-result-object p0

    .line 52
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string p2, " = callingUid="

    .line 59
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 64
    const-string p2, "RestrictionPolicy"

    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 69
    return v8
.end method

.method public final allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string/jumbo v5, "smartClipAllowed"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 22
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v6

    .line 28
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v7

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v8

    .line 38
    const-string/jumbo v2, "smartClipAllowed"

    .line 41
    const-wide/high16 v3, 0x100000000000000L

    .line 43
    const/4 v5, 0x1

    .line 44
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 47
    return v0
.end method

.method public final allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v8

    .line 9
    const/4 v9, 0x0

    .line 10
    const-string v10, "RestrictionPolicy"

    .line 12
    if-eqz v8, :cond_0

    .line 14
    const-string p0, "Failed. Caller is not owner"

    .line 16
    invoke-static {v10, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return v9

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    const/4 v4, 0x0

    .line 25
    const-string v1, "RESTRICTION"

    .line 27
    const-string/jumbo v5, "statusBarExpansionEnabled"

    .line 30
    move v3, p2

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 34
    move-result v11

    .line 35
    if-eqz v11, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 39
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v6

    .line 45
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v7

    .line 49
    const-string/jumbo v1, "statusBarExpansionEnabled"

    .line 52
    const-wide/16 v2, 0x100

    .line 54
    const/4 v4, 0x1

    .line 55
    move v5, v8

    .line 56
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 59
    invoke-virtual {p0, v9, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    .line 62
    move-result p1

    .line 63
    invoke-virtual {p0, v8, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    const-string p1, "allowStatusBarExpansion : "

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string p1, ", ret = "

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v11
.end method

.method public final allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v5

    .line 9
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const/4 v10, 0x0

    .line 14
    const-string v7, "RESTRICTION"

    .line 16
    const-string v11, "allowStopSystemApp"

    .line 18
    move v9, p2

    .line 19
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 22
    move-result v8

    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 25
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v6

    .line 31
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v7

    .line 35
    const-string v1, "allowStopSystemApp"

    .line 37
    const-wide/16 v2, 0x1000

    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 43
    const-string p0, "allowStopSystemApp : "

    .line 45
    const-string p1, "RestrictionPolicy"

    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    return v8
.end method

.method public final allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v8

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v9

    .line 13
    const/4 v11, 0x0

    .line 14
    invoke-virtual {v1, v8, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 17
    move-result v12

    .line 18
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    iget v4, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    const-string v3, "RESTRICTION"

    .line 24
    const-string v7, "allowUsbHostStorage"

    .line 26
    const/4 v6, 0x0

    .line 27
    move/from16 v5, p2

    .line 29
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    const-string v3, "allowUsbHostStorage : "

    .line 35
    const-string v4, "RestrictionPolicy"

    .line 37
    invoke-static {v3, v4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    iget-object v13, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 42
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v19

    .line 48
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v20

    .line 52
    const/16 v17, 0x1

    .line 54
    const/16 v18, 0x0

    .line 56
    const-string v14, "allowUsbHostStorage"

    .line 58
    const-wide/32 v15, 0x80000

    .line 61
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 64
    if-eqz v2, :cond_1

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 69
    move-result v24

    .line 70
    if-eqz v0, :cond_0

    .line 72
    const-string v3, "Admin %d has allowed USB Host Storage."

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string v3, "Admin %d has disallowed USB Host Storage."

    .line 77
    :goto_0
    iget v5, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v5

    .line 83
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 87
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object v26

    .line 91
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 93
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 96
    move-result v27

    .line 97
    const/16 v23, 0x1

    .line 99
    const-string v25, "RestrictionPolicy"

    .line 101
    const/16 v21, 0x5

    .line 103
    const/16 v22, 0x1

    .line 105
    invoke-static/range {v21 .. v27}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 108
    :cond_1
    if-eqz v2, :cond_4

    .line 110
    if-nez v0, :cond_4

    .line 112
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 114
    const-string/jumbo v3, "storage"

    .line 117
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 123
    if-nez v0, :cond_2

    .line 125
    const-string v0, "Failed to get StorageManager"

    .line 127
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return v11

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto :goto_3

    .line 136
    :catch_0
    move-exception v0

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    .line 141
    move-result-object v3

    .line 142
    array-length v5, v3

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    .line 146
    move-result-object v6

    .line 147
    move v7, v11

    .line 148
    :goto_1
    if-ge v7, v5, :cond_4

    .line 150
    aget-object v13, v3, v7

    .line 152
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    .line 155
    move-result-object v14

    .line 156
    if-eqz v14, :cond_3

    .line 158
    const-string/jumbo v15, "usb"

    .line 161
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v14

    .line 165
    if-eqz v14, :cond_3

    .line 167
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 170
    move-result-object v13

    .line 171
    invoke-virtual {v0, v13}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v14

    .line 175
    const-string/jumbo v15, "mounted"

    .line 178
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v14

    .line 182
    if-eqz v14, :cond_3

    .line 184
    if-eqz v6, :cond_3

    .line 186
    const/4 v14, 0x1

    .line 187
    invoke-interface {v6, v13, v14, v11}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 192
    goto :goto_1

    .line 193
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    move v2, v11

    .line 200
    goto :goto_4

    .line 201
    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    throw v0

    .line 205
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    :goto_4
    if-eqz v2, :cond_9

    .line 210
    invoke-virtual {v1, v8, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 213
    move-result v0

    .line 214
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_5

    .line 220
    const-string v0, "allowUsbHostStorage() : failed to call updateUsbStorageStatebyIntent()"

    .line 222
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_5
    if-nez v12, :cond_9

    .line 227
    invoke-virtual {v1, v8, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_9

    .line 233
    const-string v0, "allowUsbHostStorage set true(false -> true). Sync UsbInterface Exception"

    .line 235
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    .line 241
    move-result v0

    .line 242
    const-string/jumbo v3, "syncUsbExceptionList."

    .line 245
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v3, -0x1

    .line 249
    if-ne v0, v3, :cond_6

    .line 251
    const-string/jumbo v0, "syncUsbExceptionList. -1 -> return"

    .line 254
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    goto :goto_5

    .line 258
    :cond_6
    :try_start_3
    new-instance v3, Ljava/io/File;

    .line 260
    const-string/jumbo v5, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    .line 263
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_8

    .line 272
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbDriverExceptionList()I

    .line 275
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    .line 278
    const-string v6, "UsbInterface Exception mask USB Driver = None( 0x"

    .line 280
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 286
    move-result-object v6

    .line 287
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v6, " )"

    .line 292
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v5

    .line 299
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-ne v0, v3, :cond_7

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    const-string v3, "UsbExceptionList already applied : 0x"

    .line 308
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    goto :goto_5

    .line 326
    :cond_7
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    .line 329
    goto :goto_5

    .line 330
    :cond_8
    :try_start_4
    const-string/jumbo v0, "usbDriverFile.exists : false"

    .line 333
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 336
    goto :goto_5

    .line 337
    :catch_1
    const-string/jumbo v0, "usbDriverFile read fail"

    .line 340
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_9
    :goto_5
    return v2
.end method

.method public final allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string v5, "allowMobileDataLimit"

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 21
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v7

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v8

    .line 31
    const-string v2, "allowMobileDataLimit"

    .line 33
    const-wide/32 v3, 0x10000

    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 41
    if-nez p2, :cond_3

    .line 43
    if-eqz v0, :cond_3

    .line 45
    const/4 p1, 0x0

    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    move-result-wide v1

    .line 50
    const-string/jumbo p2, "netpolicy"

    .line 53
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_2

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-interface {p2, p0}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_0

    .line 80
    array-length v4, p0

    .line 81
    if-lez v4, :cond_0

    .line 83
    array-length v4, p0

    .line 84
    move v5, p1

    .line 85
    :goto_0
    if-ge v5, v4, :cond_0

    .line 87
    aget-object v6, p0, v5

    .line 89
    const-wide/16 v7, -0x1

    .line 91
    iput-wide v7, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 93
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 104
    move-result p0

    .line 105
    if-lez p0, :cond_1

    .line 107
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 110
    move-result p0

    .line 111
    new-array p0, p0, [Landroid/net/NetworkPolicy;

    .line 113
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    move-result-object p0

    .line 117
    check-cast p0, [Landroid/net/NetworkPolicy;

    .line 119
    invoke-interface {p2, p0}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 122
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 128
    const-string/jumbo p2, "networkPolicyService is null"

    .line 131
    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 134
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "RestrictionPolicy.allowUserMobileDataLimit() exception : "

    .line 142
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v0, "RestrictionPolicy"

    .line 147
    invoke-static {p0, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 150
    move v0, p1

    .line 151
    :cond_3
    :goto_2
    return v0
.end method

.method public final allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string v5, "allowVideoRecording"

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    const-string v1, "allowVideoRecord : "

    .line 21
    const-string v2, "RestrictionPolicy"

    .line 23
    invoke-static {v1, v2, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 28
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    move-result v8

    .line 34
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v9

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v10

    .line 44
    const-string v4, "allowVideoRecording"

    .line 46
    const-wide/16 v5, 0x2

    .line 48
    const/4 v7, 0x1

    .line 49
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 52
    return v0
.end method

.method public final allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string/jumbo v5, "nativeVpnAllowed"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 22
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v7

    .line 28
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v8

    .line 32
    const-string/jumbo v2, "nativeVpnAllowed"

    .line 35
    const-wide/high16 v3, 0x20000000000000L

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 42
    if-eqz v0, :cond_1

    .line 44
    if-nez p2, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 48
    if-nez v1, :cond_0

    .line 50
    const-string/jumbo v1, "vpn_policy"

    .line 53
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 59
    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "allowVpn():set :"

    .line 70
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "ret:"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    const-string v1, "RestrictionPolicy"

    .line 91
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v0, :cond_3

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 99
    move-result-wide v1

    .line 100
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 103
    move-result v6

    .line 104
    const-string v7, "RestrictionPolicy"

    .line 106
    if-eqz p2, :cond_2

    .line 108
    const-string p0, "Admin %d has enabled Vpn."

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const-string p0, "Admin %d has disabled Vpn."

    .line 115
    :goto_0
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object p2

    .line 121
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 124
    move-result-object p2

    .line 125
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    move-result-object v8

    .line 129
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 131
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 134
    move-result v9

    .line 135
    const/4 v3, 0x5

    .line 136
    const/4 v4, 0x1

    .line 137
    const/4 v5, 0x1

    .line 138
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    goto :goto_2

    .line 145
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    throw p0

    .line 149
    :cond_3
    :goto_2
    return v0
.end method

.method public final allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string/jumbo v5, "wallpaperEnabled"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 22
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v6

    .line 28
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v7

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v8

    .line 38
    const-string/jumbo v2, "wallpaperEnabled"

    .line 41
    const-wide v3, 0x400000000L

    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 50
    const-string p0, "allowWallpaperChange : "

    .line 52
    const-string p1, "RestrictionPolicy"

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    return v0
.end method

.method public final allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "allowWifiDirect - caller uid: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", allow: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "RestrictionPolicy"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v3, "RESTRICTION"

    .line 41
    const-string v7, "allowWifiDirect"

    .line 43
    move v5, p2

    .line 44
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 50
    const-string p0, "allowWifiDirect - fail to store value to database"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v0

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 58
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v8

    .line 64
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v9

    .line 68
    const-string v3, "allowWifiDirect"

    .line 70
    const-wide/16 v4, 0x2000

    .line 72
    const/4 v6, 0x1

    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 80
    move-result-wide v0

    .line 81
    :try_start_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 83
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 86
    move-result v2

    .line 87
    if-eqz p2, :cond_1

    .line 89
    const/16 p2, 0x39

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/16 p2, 0x3a

    .line 94
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object p1

    .line 100
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {v2, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    const/4 p1, 0x0

    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 115
    move-result p1

    .line 116
    const/4 p2, 0x1

    .line 117
    xor-int/2addr p1, p2

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiDirectUserRestriction(Z)V

    .line 121
    return p2

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw p0
.end method

.method public final applyBackgroundDataRestriction()V
    .locals 9

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    const-string v3, "Applying Background Data Policy"

    .line 9
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string/jumbo v3, "netpolicy"

    .line 15
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-interface {v3, p0}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 42
    new-instance p0, Ljava/util/ArrayList;

    .line 44
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v4

    .line 51
    if-lez v4, :cond_3

    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v4

    .line 57
    new-array v4, v4, [Landroid/net/NetworkPolicy;

    .line 59
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    check-cast p0, [Landroid/net/NetworkPolicy;

    .line 65
    invoke-interface {v3, p0}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto/16 :goto_5

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_0
    if-nez v4, :cond_3

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-interface {v3, v4}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 80
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    move-result-object v5

    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v6, "user"

    .line 91
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Landroid/os/UserManager;

    .line 97
    if-eqz p0, :cond_3

    .line 99
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_3

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p0

    .line 109
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_3

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 121
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 123
    const/16 v7, 0x40

    .line 125
    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 128
    move-result-object v6

    .line 129
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    move-result-object v6

    .line 133
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_1

    .line 139
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v7

    .line 143
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 145
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 147
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 149
    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_2

    .line 155
    invoke-interface {v3, v7, v4}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V

    .line 158
    goto :goto_0

    .line 159
    :cond_3
    :goto_1
    const-string p0, "Applied Background Data Policy"

    .line 161
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    goto :goto_4

    .line 168
    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 170
    const-string/jumbo v3, "networkPolicyService is null"

    .line 173
    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string/jumbo v4, "setBackgroundData EX: "

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    goto :goto_2

    .line 199
    :goto_4
    return-void

    .line 200
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw p0
.end method

.method public final applySdCardWriteAccessPolicy()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const-string v1, "0"

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "1"

    .line 13
    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    .line 15
    const-string/jumbo v3, "sdCardWriteAccessBlocked"

    .line 18
    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 23
    const-class v2, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 31
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 38
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    .line 41
    move-result-object v1

    .line 42
    array-length v1, v1

    .line 43
    const/4 v2, 0x2

    .line 44
    if-lt v1, v2, :cond_2

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 54
    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 58
    const-string/jumbo v1, "storage"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 71
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_2

    .line 82
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_2

    .line 88
    const/4 v1, 0x1

    .line 89
    const/4 v2, 0x0

    .line 90
    :try_start_0
    invoke-interface {p0, v0, v1, v2}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_2
    :goto_1
    return-void
.end method

.method public final checkAdminActivationEnabled(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPackageOnExclusionList(ILjava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 22
    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 25
    invoke-interface {v0, p0, p2, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    const p0, 0x1040cb8

    .line 34
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return v1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 45
    return v1
.end method

.method public final checkIfRestrictionWasSetByKC(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final checkMultiSimPolicyPermission(I)Z
    .locals 10

    .line 1
    const-string/jumbo v0, "checkMultiSimPolicyPermission uid "

    .line 4
    const-string v1, "MultiSimPolicy"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 12
    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    move-result-object p1

    .line 19
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v3, "checkMultiSimPolicyPermission enforceRestrictionPermission uid "

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    move-result-wide v2

    .line 43
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    array-length v6, v5

    .line 54
    move v7, v0

    .line 55
    :goto_0
    if-ge v7, v6, :cond_1

    .line 57
    aget-object v8, v5, v7

    .line 59
    if-eqz v8, :cond_0

    .line 61
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    .line 64
    invoke-virtual {v4, v9, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    move-result v8

    .line 68
    if-nez v8, :cond_0

    .line 70
    const-string/jumbo v8, "checkPermission RESTRICTION_PERMISSION returns true"

    .line 73
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    add-int/lit8 v7, v7, 0x1

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto/16 :goto_5

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto/16 :goto_3

    .line 85
    :cond_0
    const-string/jumbo p1, "checkPermission RESTRICTION_PERMISSION returns false"

    .line 88
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 96
    move-result-object p0

    .line 97
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 100
    move-result-object p0

    .line 101
    const-string/jumbo p1, "knox_multisim_policy"

    .line 104
    const-string v1, ""

    .line 106
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    return v0

    .line 116
    :cond_1
    :try_start_2
    const-string/jumbo v4, "ro.organization_owned"

    .line 119
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    const-string/jumbo v5, "true"

    .line 126
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_2

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string/jumbo p1, "checkMultiSimPolicyPermission organizationOwnedDevice "

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    return v0

    .line 157
    :catch_1
    move-exception p0

    .line 158
    goto/16 :goto_4

    .line 160
    :cond_2
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid$6(I)Ljava/lang/String;

    .line 163
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-nez v4, :cond_3

    .line 166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    return v0

    .line 170
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDevicePolicyManager$2()Landroid/app/admin/DevicePolicyManager;

    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 177
    move-result-object v5

    .line 178
    const/4 v6, 0x1

    .line 179
    if-eqz v5, :cond_4

    .line 181
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_4

    .line 191
    move v5, v6

    .line 192
    goto :goto_1

    .line 193
    :cond_4
    move v5, v0

    .line 194
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDevicePolicyManager$2()Landroid/app/admin/DevicePolicyManager;

    .line 197
    move-result-object p0

    .line 198
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 201
    move-result p1

    .line 202
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 205
    move-result-object p0

    .line 206
    if-eqz p0, :cond_5

    .line 208
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result p0

    .line 216
    if-eqz p0, :cond_5

    .line 218
    move p0, v6

    .line 219
    goto :goto_2

    .line 220
    :cond_5
    move p0, v0

    .line 221
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const-string/jumbo v4, "checkMultiSimPolicyPermission isDeviceOwner "

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    const-string/jumbo v4, "checkMultiSimPolicyPermission isProfileOwner "

    .line 250
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object p1

    .line 260
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    if-nez v5, :cond_6

    .line 265
    if-nez p0, :cond_6

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    return v0

    .line 271
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    const-string/jumbo p0, "checkMultiSimPolicyPermission returns true "

    .line 277
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v6

    .line 281
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    return v0

    .line 288
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 291
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return v0

    .line 295
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    throw p0

    .line 299
    :catch_2
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    return v0
.end method

.method public final checkPackageSource(ILjava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid$6(I)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    const-string/jumbo v4, "preventAdminActivationWhiteList"

    .line 32
    const-string v5, ""

    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "RESTRICTION"

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 27
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->disableConstrainedState(I)Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    const-string v3, "android.permission.DUMP"

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string v0, "Permission Denial: can\'t dump Restriction Policy"

    .line 17
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "[Restriction Policy]"

    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 37
    const-string v4, "]"

    .line 39
    iget-object v5, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    iget-object v7, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 48
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 55
    :try_start_0
    const-string v7, "[Admin Info : "

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v8, v5, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 67
    if-eqz v8, :cond_1

    .line 69
    check-cast v8, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_1

    .line 77
    iget-object v8, v5, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 79
    invoke-interface {v8}, Ljava/util/Map;->toString()Ljava/lang/String;

    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v7, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 105
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 108
    move-result-object v7

    .line 109
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v7

    .line 113
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_5

    .line 119
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v8

    .line 129
    const-string v9, "[Restrictions applied for user : "

    .line 131
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 154
    move-result-wide v9

    .line 155
    sget-object v11, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    .line 157
    check-cast v11, Ljava/util/HashMap;

    .line 159
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 162
    move-result-object v11

    .line 163
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object v11

    .line 167
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result v12

    .line 171
    if-eqz v12, :cond_4

    .line 173
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object v12

    .line 177
    check-cast v12, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 182
    move-result-object v13

    .line 183
    check-cast v13, Ljava/lang/Long;

    .line 185
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 188
    move-result-wide v14

    .line 189
    const-string v0, "   "

    .line 191
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v0, ": "

    .line 205
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    and-long v16, v9, v14

    .line 210
    cmp-long v0, v16, v14

    .line 212
    if-nez v0, :cond_2

    .line 214
    const/4 v0, 0x1

    .line 215
    goto :goto_2

    .line 216
    :cond_2
    const/4 v0, 0x0

    .line 217
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 223
    move-result-wide v12

    .line 224
    const-wide v18, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    .line 229
    and-long v12, v12, v18

    .line 231
    cmp-long v0, v16, v12

    .line 233
    if-eqz v0, :cond_3

    .line 235
    const-string v0, "(Enforced) "

    .line 237
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_3

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    goto :goto_4

    .line 243
    :cond_3
    :goto_3
    invoke-virtual {v5, v8, v14, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->dump(IJ)Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    move-object/from16 v0, p0

    .line 259
    goto :goto_1

    .line 260
    :cond_4
    move-object/from16 v0, p0

    .line 262
    goto/16 :goto_0

    .line 264
    :cond_5
    iget-object v0, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 266
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 273
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    const-string v3, "   UsbExceptionList: 0x"

    .line 284
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    .line 290
    move-result v3

    .line 291
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 319
    return-void

    .line 320
    :goto_4
    iget-object v1, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 322
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 329
    throw v0
.end method

.method public final enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 27
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    move-object v2, p2

    .line 30
    move-object v3, p3

    .line 31
    move-object v4, p4

    .line 32
    move-object v5, p5

    .line 33
    move v6, p6

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "enableODETrustedBootVerification  : "

    .line 8
    const-string v1, "RestrictionPolicy"

    .line 10
    invoke-static {v0, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v3, "RESTRICTION"

    .line 20
    const-string v7, "ODETrustedBootVerification"

    .line 22
    move v5, p2

    .line 23
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 29
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v7

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v8

    .line 39
    const-string v2, "ODETrustedBootVerification"

    .line 41
    const-wide v3, 0x80000000L

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 51
    return v0
.end method

.method public final enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "enableGearPolicy() : userId = "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ", enable = "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "RestrictionPolicy"

    .line 36
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 51
    move-result v1

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo p0, "enableGearPolicy() : this api doesn\'t support multi-user. userId = "

    .line 58
    invoke-static {v0, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    return v3

    .line 62
    :cond_0
    const/4 v1, 0x1

    .line 63
    if-ne p2, v1, :cond_3

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 69
    const-string v6, "RESTRICTION"

    .line 71
    const-string/jumbo v7, "wearablePolicyEnabled"

    .line 74
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 77
    move-result v4
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    const v4, 0xffff

    .line 82
    :goto_0
    if-ne v1, p3, :cond_1

    .line 84
    not-int p2, p2

    .line 85
    and-int/2addr p2, v4

    .line 86
    :goto_1
    move v7, p2

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    or-int/2addr p2, v4

    .line 89
    goto :goto_1

    .line 90
    :goto_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 94
    const-string v8, "RESTRICTION"

    .line 96
    const-string/jumbo v9, "wearablePolicyEnabled"

    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_2

    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 109
    move-result-wide p1

    .line 110
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 112
    new-instance p3, Landroid/content/Intent;

    .line 114
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.GEARPOLICY_ENABLE_INTERNAL"

    .line 117
    invoke-direct {p3, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const/high16 v3, 0x1000000

    .line 122
    invoke-virtual {p3, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    move-result-object p3

    .line 126
    new-instance v3, Landroid/os/UserHandle;

    .line 128
    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 131
    invoke-virtual {p0, p3, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_3
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    goto :goto_4

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_5

    .line 140
    :catch_1
    move-exception p0

    .line 141
    :try_start_2
    const-string/jumbo p3, "sendIntentGearManagerforUpdate() fas failed."

    .line 144
    invoke-static {v2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    goto :goto_3

    .line 148
    :goto_4
    move v3, v1

    .line 149
    goto :goto_6

    .line 150
    :goto_5
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    throw p0

    .line 154
    :cond_2
    :goto_6
    return v3

    .line 155
    :cond_3
    const-string/jumbo p0, "enableGearPolicy() : this api called unsupport device. device = "

    .line 158
    invoke-static {p2, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    return v3
.end method

.method public final enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndAdvancedRestrictionPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final evaluateAndMigrateWifiRelatedPolicyAPIs()V
    .locals 9

    .line 1
    const-string/jumbo v0, "evaluateAndMigrateWifiRelatedPolicyAPIs - END"

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 11
    move-result v2

    .line 12
    if-ne v1, v2, :cond_7

    .line 14
    const-string v1, "RestrictionPolicy"

    .line 16
    const-string/jumbo v2, "evaluateAndMigrateWifiRelatedPolicyAPIs - START"

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string/jumbo v2, "wifiTetheringEnabled"

    .line 25
    const-string v3, "allowWifiDirect"

    .line 27
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x0

    .line 32
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    const-string v7, "RESTRICTION"

    .line 36
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_4

    .line 42
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 45
    move-result v4

    .line 46
    if-lez v4, :cond_4

    .line 48
    const/4 v4, 0x0

    .line 49
    move v6, v4

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 53
    move-result v7

    .line 54
    const/4 v8, 0x1

    .line 55
    if-eqz v7, :cond_2

    .line 57
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 60
    move-result v7

    .line 61
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_1

    .line 67
    move v4, v8

    .line 68
    :cond_1
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 71
    move-result v7

    .line 72
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_0

    .line 78
    move v6, v8

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_4

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringUserRestriction(Z)V

    .line 89
    :cond_3
    if-eqz v6, :cond_4

    .line 91
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiDirectUserRestriction(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_4
    if-eqz v5, :cond_5

    .line 96
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_3

    .line 103
    :goto_2
    :try_start_1
    const-string/jumbo v2, "evaluateAndMigrateWifiRelatedPolicyAPIs"

    .line 106
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v5, :cond_5

    .line 111
    goto :goto_1

    .line 112
    :goto_3
    return-void

    .line 113
    :goto_4
    if-eqz v5, :cond_6

    .line 115
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    throw p0

    .line 122
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 124
    const-string v0, "Can only be called by system process"

    .line 126
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0
.end method

.method public final getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 v1, 0x40000000

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->updateMdfStatus()I

    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v1, "getCCModeState : mdm ret = "

    .line 28
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, ", MdfUtils ret = : "

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    const-string v0, "RestrictionPolicy"

    .line 48
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return p0
.end method

.method public final getConstrainedState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;->getConstrainedState()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getCurrentPowerSavingMode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "low_power"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v3, "ultra_powersaving_mode"

    .line 30
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 36
    const/4 v2, 0x2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    if-eqz v0, :cond_2

    .line 40
    move v2, v1

    .line 41
    :cond_2
    :goto_1
    const-string/jumbo p0, "getCurrentPowerSavingMode : "

    .line 44
    const-string v0, "RestrictionPolicy"

    .line 46
    invoke-static {v2, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    return v2
.end method

.method public final getDevicePolicyManager$2()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v1, "device_policy"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 20
    return-object p0
.end method

.method public final getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getKcActionDisabledText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 3
    const v0, 0x10401b5

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final declared-synchronized getMountService()Landroid/os/storage/IStorageManager;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "mount"

    .line 5
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public final getMultiSimPolicy()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v1, "knox_multisim_policy"

    .line 12
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    return-object v0
.end method

.method public final getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 34
    const-string v1, "RESTRICTION"

    .line 36
    const-string/jumbo v2, "preventAdminActivationWhiteList"

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 50
    const-string p0, ""

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string p1, ","

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :goto_0
    return-object v0
.end method

.method public final getPackageNameForUid$6(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x3e8

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v2, "ADMIN_INFO"

    .line 12
    const-string v3, "adminName"

    .line 14
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 20
    return-object v1

    .line 21
    :cond_1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_2

    .line 27
    return-object p0

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final getPhoneAccountForSubId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    const-class v1, Landroid/telecom/TelecomManager;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/telecom/TelecomManager;

    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 19
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_4

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 47
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 49
    if-nez v2, :cond_2

    .line 51
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 53
    const-class v3, Landroid/telecom/TelecomManager;

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/telecom/TelecomManager;

    .line 61
    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 65
    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_1

    .line 71
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    if-nez v3, :cond_3

    .line 75
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 77
    const-class v4, Landroid/telephony/TelephonyManager;

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 85
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    .line 92
    move-result v2

    .line 93
    if-ne p1, v2, :cond_1

    .line 95
    return-object v1

    .line 96
    :cond_4
    const/4 p0, 0x0

    .line 97
    return-object p0
.end method

.method public final getRestrictedKeyCodes()Ljava/util/Set;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    new-instance p0, Ljava/util/HashSet;

    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 27
    return-object p0

    .line 28
    :cond_0
    return-object v1
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RestrictionPolicy"

    .line 3
    return-object p0
.end method

.method public final getSubScriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 19
    return-object p0
.end method

.method public final getUidForAdminActivation(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "RESTRICTION"

    .line 6
    const-string v3, "adminUid"

    .line 8
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    const/4 v3, -0x1

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v5

    .line 35
    const-string/jumbo v6, "preventAdminActivation"

    .line 38
    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string p1, "RestrictionPolicy"

    .line 52
    const-string v0, "Admin not found on database "

    .line 54
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_1
    return v3
.end method

.method public final getUidForAdminInstallation(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "RESTRICTION"

    .line 6
    const-string v3, "adminUid"

    .line 8
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    const/4 v3, -0x1

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v5

    .line 35
    const-string/jumbo v6, "preventAdminInstallation"

    .line 38
    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string p1, "RestrictionPolicy"

    .line 52
    const-string v0, "Admin not found on database "

    .line 54
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_1
    return v3
.end method

.method public final getUsbExceptionList()I
    .locals 4

    .line 1
    const-string/jumbo v0, "getUsbExceptionList."

    .line 4
    const-string v1, "RestrictionPolicy"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbInterfaceExceptionMaskListInDb()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eqz v0, :cond_0

    .line 22
    return v2

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 43
    and-int/2addr v2, v0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v0, "UsbInterface Exception mask MDM DB = 0x"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p0, Ljava/io/File;

    .line 73
    const-string/jumbo v0, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    .line 76
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x0

    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-static {p0, v0, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v3, "UsbInterface Exception mask USB Driver = "

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_2
    return v2

    .line 116
    :goto_1
    const-string v0, "Failed get DB exception mask"

    .line 118
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/16 p0, -0x3e8

    .line 123
    return p0
.end method

.method public final getUsbInterfaceExceptionMaskListInDb()Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "UsbExceptionMask"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const-string v2, "RESTRICTION"

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    check-cast p0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/content/ContentValues;

    .line 39
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v3

    .line 51
    const/4 v4, -0x1

    .line 52
    if-le v3, v4, :cond_0

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object v1
.end method

.method public final getUserRestrictionSafeMode()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 6
    const-string/jumbo p0, "no_safe_boot"

    .line 9
    const-string v0, "PackageManagerAdapter"

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v3, "user"

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/UserManager;

    .line 23
    new-instance v3, Landroid/os/UserHandle;

    .line 25
    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 28
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string/jumbo v2, "getUserRestrictions() failed. (0, no_safe_boot)"

    .line 41
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo p0, "getUserRestrictions(0, no_safe_boot) = "

    .line 49
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    :cond_0
    return v1
.end method

.method public final isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/32 v1, 0x8000000

    .line 8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p2, :cond_0

    .line 14
    if-nez p0, :cond_0

    .line 16
    const p1, 0x1040cad

    .line 19
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 22
    :cond_0
    const-string/jumbo p1, "isActivationLockAllowed : "

    .line 25
    const-string p2, "RestrictionPolicy"

    .line 27
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    return p0
.end method

.method public final isAdminEnforcementAllowed(II)Z
    .locals 8

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid$6(I)Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 13
    if-nez v4, :cond_0

    .line 15
    const-string/jumbo v4, "enterprise_policy"

    .line 18
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    move-result-object v4

    .line 22
    invoke-static {v4}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 25
    move-result-object v4

    .line 26
    iput-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 28
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 30
    if-eqz v4, :cond_3

    .line 32
    invoke-interface {v4, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v4

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3

    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v7, " preventAdminActivation packageName : "

    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_1

    .line 86
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPackageOnExclusionList(ILjava/lang/String;)Z

    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_1

    .line 96
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 99
    move-result-object v5

    .line 100
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 103
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 107
    invoke-interface {v6, v7, v5, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 110
    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-nez v5, :cond_2

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p0

    .line 115
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    const/4 p0, 0x0

    .line 122
    return p0

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_4

    .line 125
    :catch_1
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    goto :goto_3

    .line 131
    :goto_2
    :try_start_3
    const-string p1, "RestrictionPolicy.preventAdminInstallation exception : "

    .line 133
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    goto :goto_1

    .line 137
    :goto_3
    const/4 p0, 0x1

    .line 138
    return p0

    .line 139
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    throw p0
.end method

.method public final isAirplaneModeAllowed(Z)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const-wide/16 v2, 0x80

    .line 7
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p1, :cond_0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const p1, 0x10401ae

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 21
    :cond_0
    const-string/jumbo p1, "isAirplaneModeAllowed : "

    .line 24
    const-string v0, "RestrictionPolicy"

    .line 26
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return p0
.end method

.method public final isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/16 v0, 0x1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, "userId: "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " isAudioRecordAllowed : "

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string v0, "RestrictionPolicy"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-eqz p2, :cond_0

    .line 44
    if-nez p0, :cond_0

    .line 46
    const p1, 0x1040cbb

    .line 49
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 52
    :cond_0
    return p0
.end method

.method public final isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/high16 v1, 0x4000000000000L

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v0, "isBackgroundDataEnabled : "

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "RestrictionPolicy"

    .line 28
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return p0
.end method

.method public final isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x4000

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    const-string/jumbo p1, "isBackgroundProcessLimitAllowed : "

    .line 14
    const-string v0, "RestrictionPolicy"

    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    return p0
.end method

.method public final isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide v1, 0x100000000000L

    .line 10
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p2, :cond_0

    .line 16
    if-nez p0, :cond_0

    .line 18
    const p1, 0x1040227

    .line 21
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 24
    :cond_0
    const-string/jumbo p1, "isBackupAllowed : "

    .line 27
    const-string p2, "RestrictionPolicy"

    .line 29
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    return p0
.end method

.method public final isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide v0, 0x8000000000L

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 19
    move-result-object p0

    .line 20
    const/16 v0, 0x10

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, p1

    .line 30
    :goto_0
    const-string/jumbo p0, "isBluetoothTetheringEnabled : "

    .line 33
    const-string p1, "RestrictionPolicy"

    .line 35
    invoke-static {p0, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return v3
.end method

.method public final isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 p1, 0x40000000

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 14
    move-result p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, " isCCModeEnabled:"

    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "security.mdf"

    .line 25
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "    mdm ret1 :"

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, "   ret :"

    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p0, "RestrictionPolicy"

    .line 47
    invoke-static {p0, p2, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 50
    return p1
.end method

.method public final isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "ro.security.mdf.ux"

    .line 4
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const-string p1, "Enabled"

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    const-string/jumbo p1, "isCCModeSupported : "

    .line 24
    const-string v0, "RestrictionPolicy"

    .line 26
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    if-eqz p2, :cond_1

    .line 31
    if-nez p0, :cond_1

    .line 33
    const p1, 0x1040cbc

    .line 36
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 39
    :cond_1
    return p0
.end method

.method public final isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 11
    iget-object v2, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Long;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 26
    move-result-wide v2

    .line 27
    const-wide/16 v4, -0x1

    .line 29
    cmp-long v2, v2, v4

    .line 31
    const-string v3, "RestrictionPolicy"

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v2, :cond_0

    .line 36
    goto/16 :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    move-result-wide v5

    .line 42
    const-wide/16 v7, 0x0

    .line 44
    cmp-long v2, v5, v7

    .line 46
    const/4 v5, 0x1

    .line 47
    const-string/jumbo v6, "isCameraEnabledEx isRestrictedByConstrainedState return true"

    .line 50
    if-nez v2, :cond_4

    .line 52
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 54
    const-wide v9, 0x1000000000L

    .line 59
    invoke-virtual {v1, v4, v9, v10, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 65
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 67
    if-lez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 71
    if-eqz v1, :cond_1

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 75
    iget-object v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Long;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 90
    move-result-wide v5

    .line 91
    cmp-long v2, v5, v7

    .line 93
    if-lez v2, :cond_1

    .line 95
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 97
    const v5, 0x186a0

    .line 100
    mul-int/2addr v2, v5

    .line 101
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 104
    move-result v1

    .line 105
    add-int/2addr v2, v1

    .line 106
    const-string/jumbo v1, "checking for camera in ApplicationPolicy when camera disabled in user 0 "

    .line 109
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 114
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 116
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isCameraAllowlistedApp(II)Z

    .line 119
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :cond_1
    const-string/jumbo p0, "isCameraEnabledEx isCameraEnabledEx with OWNER return false"

    .line 128
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_3

    .line 142
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 148
    invoke-virtual {p0, v0, v9, v10, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 151
    move-result v4

    .line 152
    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_5

    .line 163
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto :goto_0

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 169
    if-eqz v2, :cond_6

    .line 171
    :try_start_1
    const-string/jumbo v2, "checking for camera in ApplicationPolicy"

    .line 174
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 179
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 181
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 184
    move-result v1

    .line 185
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isCameraAllowlistedApp(II)Z

    .line 188
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    goto :goto_0

    .line 190
    :catch_1
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    :cond_6
    move v4, v5

    .line 195
    :goto_0
    if-eqz p2, :cond_7

    .line 197
    if-nez v4, :cond_7

    .line 199
    const p0, 0x1040276

    .line 202
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 205
    :cond_7
    const-string/jumbo p0, "isCameraEnabled ret("

    .line 208
    const-string p2, ") userId("

    .line 210
    const-string v1, ") cxtInfo.mCallerUid("

    .line 212
    invoke-static {v0, p0, p2, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 215
    move-result-object p0

    .line 216
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 218
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string p2, ") cxtInfo.mContainerId("

    .line 223
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 228
    const-string p2, ")"

    .line 230
    invoke-static {p0, p1, p2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    return v4
.end method

.method public final isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide v1, 0x400000000000L

    .line 10
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    const-string/jumbo p1, "isCellularDataAllowed: "

    .line 17
    const-string v0, "RestrictionPolicy"

    .line 19
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return p0
.end method

.method public final isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isClipboardAllowedAsUser(ZI)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/16 v0, 0x200

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 9
    move-result p0

    .line 10
    if-eqz p1, :cond_0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const p1, 0x10402c2

    .line 17
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 20
    :cond_0
    const-string/jumbo p1, "isClipboardAllowed : "

    .line 23
    const-string p2, "RestrictionPolicy"

    .line 25
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    return p0
.end method

.method public final isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isClipboardShareAllowedAsUser(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 v0, 0x20000

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    const-string/jumbo p1, "isClipboardShareAllowed : "

    .line 14
    const-string v0, "RestrictionPolicy"

    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    return p0
.end method

.method public final isDataSavingAllowed()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const-wide/high16 v2, 0x800000000000000L

    .line 7
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "isDataSavingAllowed : "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "RestrictionPolicy"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return p0
.end method

.method public final isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x40

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p2, :cond_0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const p1, 0x1040cbd

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 21
    :cond_0
    const-string/jumbo p1, "isDeveloperModeAllowed : "

    .line 24
    const-string p2, "RestrictionPolicy"

    .line 26
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return p0
.end method

.method public final isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/high16 v0, 0x2000000000000000L

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/high16 v0, 0x8000000000000L

    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    const-string p1, "/efs/MDM/FactoryReset"

    .line 13
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExistEFSFile(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v2, "isFactoryResetAllowed(): isExistEFSFile - "

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, " DB - "

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    const-string v2, "RestrictionPolicy"

    .line 42
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-ne v0, p0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v1, "isFactoryResetAllowed(): need to sync DB("

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ") and efs"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Ljava/lang/String;Z)V

    .line 73
    :cond_0
    return p0
.end method

.method public final isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/16 v0, 0x10

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 9
    move-result p0

    .line 10
    const-string/jumbo p1, "isFastEncryptionAllowed : "

    .line 13
    const-string v0, "RestrictionPolicy"

    .line 15
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    if-eqz p2, :cond_0

    .line 20
    if-nez p0, :cond_0

    .line 22
    const p1, 0x1040cb0

    .line 25
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 28
    :cond_0
    return p0
.end method

.method public final isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 v0, 0x4000000

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p2, :cond_0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const p1, 0x1040cb1

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 21
    :cond_0
    const-string/jumbo p1, "isFirmwareAutoUpdateAllowed : "

    .line 24
    const-string p2, "RestrictionPolicy"

    .line 26
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return p0
.end method

.method public final isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 v0, 0x1000000

    .line 6
    const/4 p2, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 11
    move-result p1

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->readParamData()[B

    .line 19
    move-result-object p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    const-string v0, "RestrictionPolicy"

    .line 25
    if-nez p0, :cond_0

    .line 27
    const-string/jumbo p0, "readParamData : fail to read"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v3, "readParamData : "

    .line 39
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v1, 0x1e

    .line 58
    aget-byte v1, p0, v1

    .line 60
    const/4 v3, 0x2

    .line 61
    if-ne v1, v3, :cond_1

    .line 63
    const/16 v1, 0x1f

    .line 65
    aget-byte v1, p0, v1

    .line 67
    const/4 v3, 0x6

    .line 68
    if-ne v1, v3, :cond_1

    .line 70
    const/4 v1, 0x7

    .line 71
    aget-byte p0, p0, v1

    .line 73
    const/16 v1, 0x8

    .line 75
    if-ne p0, v1, :cond_1

    .line 77
    move p2, v2

    .line 78
    :cond_1
    const-string/jumbo p0, "readParamData : index - 7 ret - "

    .line 81
    invoke-static {p0, v0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, "isFirmwareRecoveryAllowed(): ret -  "

    .line 89
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, " param - "

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eq p2, p1, :cond_2

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo p2, "isFirmwareRecoveryAllowed(): need to sync DB("

    .line 117
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string p2, ") and param"

    .line 125
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 138
    move-result-wide v0

    .line 139
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    goto :goto_1

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw p0

    .line 151
    :cond_2
    :goto_1
    return p1
.end method

.method public final isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 v0, 0x2000000

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isGoogleCrashReportAllowedAsUser(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/high16 v0, 0x80000000000000L

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 9
    move-result p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v1, "isGoogleCrashReportAllowed : ret="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " userId ="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "RestrictionPolicy"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return p0
.end method

.method public final isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/32 v1, 0x10000000

    .line 8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p2, :cond_0

    .line 14
    if-nez p0, :cond_0

    .line 16
    const p1, 0x1040cb2

    .line 19
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 22
    :cond_0
    const-string/jumbo p1, "isHeadphoneEnabled : "

    .line 25
    const-string p2, "RestrictionPolicy"

    .line 27
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    return p0
.end method

.method public final isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/high16 v1, 0x10000000000000L

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p2, :cond_0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const p1, 0x1040627

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 21
    :cond_0
    const-string/jumbo p1, "isHomeKeyEnabled :"

    .line 24
    const-string p2, "RestrictionPolicy"

    .line 26
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return p0
.end method

.method public final isHomeKeyEnabledInDb()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "RESTRICTION"

    .line 5
    const-string/jumbo v1, "homeKeyEnabled"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    const-string v1, "RestrictionPolicy"

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 37
    const-string/jumbo p0, "isHomeKeyEnabledInDb : false"

    .line 40
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v2

    .line 44
    :cond_1
    const-string/jumbo p0, "isHomeKeyEnabledInDb : true"

    .line 47
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 p0, 0x1

    .line 51
    return p0
.end method

.method public final isIntelligenceOnlineProcessingAllowed(I)Z
    .locals 3

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x200000000000L

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    move-result p0

    .line 4
    const-string/jumbo p1, "isIntelligenceOnlineProcessingAllowed : "

    const-string v0, "RestrictionPolicy"

    .line 5
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/high16 v0, 0x400000000000000L

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    if-eqz p2, :cond_0

    .line 16
    if-nez p0, :cond_0

    .line 18
    const p1, 0x10406ac

    .line 21
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 24
    :cond_0
    const-string/jumbo p1, "isIrisCameraEnabledAsUser : "

    .line 27
    const-string p2, "RestrictionPolicy"

    .line 29
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    return p0
.end method

.method public final isKeyCodeInputAllowed(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public final isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/32 v1, 0x8000

    .line 8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/high16 v0, -0x8000000000000000L

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "isLocalContactStorageAllowed"

    .line 4
    const-string v1, "RestrictionPolicy"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 15
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 21
    move-result p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "isLocalContactStorageAllowed("

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ") : "

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return p0
.end method

.method public final isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/32 v0, 0x800000

    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 14
    move-result p0

    .line 15
    const-string/jumbo p1, "isLockScreenEnabled : "

    .line 18
    const-string p2, "RestrictionPolicy"

    .line 20
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    return p0
.end method

.method public final isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 4

    .line 1
    const-string p1, "RestrictionPolicy"

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p2, v1, :cond_1

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne p2, v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 13
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    .line 16
    throw p0
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :catch_1
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    const-string v2, "RESTRICTION"

    .line 25
    const-string v3, "allowLockScreenViews"

    .line 27
    invoke-virtual {p0, v0, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p0

    .line 35
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v3

    .line 51
    if-ltz v3, :cond_2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v2
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    and-int/2addr v2, p2

    .line 58
    if-eq p2, v2, :cond_2

    .line 60
    goto :goto_3

    .line 61
    :catch_2
    move-exception p0

    .line 62
    move v0, v1

    .line 63
    goto :goto_1

    .line 64
    :catch_3
    move-exception p0

    .line 65
    move v0, v1

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v0, v1

    .line 68
    goto :goto_3

    .line 69
    :goto_1
    const-string/jumbo p2, "isLockScreenViewAllowed() failed: unexpected exception"

    .line 72
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    const-string/jumbo p2, "isLockScreenViewAllowed() failed: INVALID PARAMETER INPUT"

    .line 79
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_3
    const-string/jumbo p0, "isLockScreenViewAllowed : "

    .line 85
    invoke-static {p0, p1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    return v0
.end method

.method public final isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isMicrophoneEnabledAsUser(ZI)Z
    .locals 6

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    const-wide/16 v1, 0x4

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 8
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 14
    move-result v4

    .line 15
    const-string/jumbo v5, "isMicrophoneEnabledAsUser (owner) : "

    .line 18
    invoke-static {v5, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v3

    .line 23
    :goto_0
    if-ne v4, v3, :cond_1

    .line 25
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 27
    invoke-virtual {v4, p2, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 30
    move-result v4

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v2, "userId: "

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string p2, ", isMicrophoneEnabledAsUser : "

    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    .line 59
    if-nez v4, :cond_2

    .line 61
    const p1, 0x1040856

    .line 64
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 67
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    .line 69
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 72
    move-result-object p1

    .line 73
    const-wide/16 v0, 0x1388

    .line 75
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    :cond_2
    return v4
.end method

.method public final isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide v0, 0x80000000000L

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 16
    move-result p0

    .line 17
    const-string/jumbo p1, "isMockLocationEnabled : "

    .line 20
    const-string v0, "RestrictionPolicy"

    .line 22
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    return p0
.end method

.method public final isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 10
    const-string/jumbo v0, "user"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/os/UserManager;

    .line 19
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 40
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 42
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    .line 52
    move-result v0

    .line 53
    :cond_2
    :goto_0
    return v0
.end method

.method public final isNewAdminActivationEnabledInternal(IZ)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide v0, 0x200000000L

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p2, :cond_0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const p1, 0x1040cb8

    .line 20
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo p2, "isNewAdminActivationEnabledInternal : "

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    xor-int/lit8 p2, p0, 0x1

    .line 33
    const-string v0, "RestrictionPolicy"

    .line 35
    invoke-static {v0, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 38
    xor-int/lit8 p0, p0, 0x1

    .line 40
    return p0
.end method

.method public final isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isNewAdminInstallationEnabledAsUser(IZ)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 6
    const-string/jumbo v0, "user"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/os/UserManager;

    .line 15
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 36
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 38
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 44
    :cond_1
    return v0

    .line 45
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final isNewAdminInstallationEnabledInternal(IZ)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide v0, 0x100000000L

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 12
    move-result p0

    .line 13
    const-string/jumbo p1, "isNewAdminInstallationEnabledInternal : "

    .line 16
    const-string v0, "RestrictionPolicy"

    .line 18
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    if-eqz p2, :cond_0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const p1, 0x1040cb9

    .line 28
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 31
    :cond_0
    xor-int/lit8 p0, p0, 0x1

    .line 33
    return p0
.end method

.method public final isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/high16 v1, 0x1000000000000L

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    const-string/jumbo p1, "isNonMarketAppAllowed : "

    .line 14
    const-string v0, "RestrictionPolicy"

    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    return p0
.end method

.method public final isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isNonTrustedAppInstallBlockedAsUser(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 v0, 0x400000

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide v0, 0x80000000L

    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 12
    move-result p0

    .line 13
    const-string/jumbo p1, "isODETruestedBootVerfiicationEnabled : "

    .line 16
    const-string v0, "RestrictionPolicy"

    .line 18
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    return p0
.end method

.method public final isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/high16 v1, 0x40000000000000L

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    const-string/jumbo p1, "isOTAUpgradeAllowed : "

    .line 14
    const-string v0, "RestrictionPolicy"

    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    return p0
.end method

.method public final isPackageOnExclusionList(ILjava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    const/4 v0, 0x0

    .line 18
    const-string v2, "RESTRICTION"

    .line 20
    const-string/jumbo v3, "preventAdminActivationWhiteList"

    .line 23
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 33
    const-string p1, ","

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    array-length p1, p0

    .line 40
    move v2, v0

    .line 41
    :goto_0
    if-ge v2, p1, :cond_2

    .line 43
    aget-object v3, p0, v2

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 51
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 57
    return v1

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return v0
.end method

.method public final isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x800

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    const-string/jumbo p1, "efs/MDM/PowerOff"

    .line 14
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExistEFSFile(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    const-string v1, "RestrictionPolicy"

    .line 20
    if-ne v0, p0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "isPowerOffAllowed(): need to sync DB("

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, ") and efs"

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Ljava/lang/String;Z)V

    .line 48
    :cond_0
    if-eqz p2, :cond_1

    .line 50
    if-nez p0, :cond_1

    .line 52
    const p1, 0x10405d7

    .line 55
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 58
    :cond_1
    const-string/jumbo p1, "isPowerOffAllowed : "

    .line 61
    invoke-static {p1, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    return p0
.end method

.method public final isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/high16 v1, 0x1000000000000000L

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/32 v0, 0x20000000

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p2, :cond_0

    .line 17
    if-nez p0, :cond_0

    .line 19
    const p1, 0x1040cb4

    .line 22
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 25
    :cond_0
    const-string/jumbo p1, "isSDCardMoveAllowed : "

    .line 28
    const-string p2, "RestrictionPolicy"

    .line 30
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    return p0
.end method

.method public final isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide v1, 0x800000000L

    .line 10
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    const-string/jumbo p1, "isSDCardWriteAllowed : "

    .line 17
    const-string v0, "RestrictionPolicy"

    .line 19
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return p0
.end method

.method public final isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isSVoiceAllowedAsUser(ZI)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 10
    const-wide/16 v0, 0x20

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p1, :cond_0

    .line 19
    if-nez p0, :cond_0

    .line 21
    const p1, 0x1040f0a

    .line 24
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v0, "isSVoiceAllowedAsUser, userId "

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string p2, " : "

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const-string p2, "RestrictionPolicy"

    .line 52
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return p0
.end method

.method public final isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string p1, "RestrictionPolicy"

    .line 3
    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    const-string v1, "RESTRICTION"

    .line 8
    const-string v2, "allowSafeMode"

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-nez v1, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    const-string/jumbo p0, "isSafeModeAllowed() failed"

    .line 41
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    move v1, v0

    .line 45
    :goto_0
    if-eq v1, v0, :cond_2

    .line 47
    const-string/jumbo p0, "isSafeModeAllowed() - not allowed "

    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2
    const-string/jumbo p0, "isSafeModeAllowed : "

    .line 56
    invoke-static {p0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    return v1
.end method

.method public final isScreenCaptureEnabled(IZ)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result p0

    return p0
.end method

.method public final isScreenCaptureEnabledEx(IZ)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    .line 17
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 21
    move p1, v3

    .line 22
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    .line 54
    move-result p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 58
    const-wide v1, 0x10000000000L

    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 73
    move-result-object p0

    .line 74
    const/16 v1, 0x40

    .line 76
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_2

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move v3, v0

    .line 84
    :goto_0
    move p0, v3

    .line 85
    :goto_1
    if-eqz p2, :cond_3

    .line 87
    if-nez p0, :cond_3

    .line 89
    const p2, 0x1040d34

    .line 92
    invoke-static {p2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 95
    :cond_3
    const-string p2, "RestrictionPolicy"

    .line 97
    if-nez p0, :cond_4

    .line 99
    const-string/jumbo v0, "isScreenCaptureEnabledEx() : screencapture has disabled in user "

    .line 102
    invoke-static {p1, v0, p2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, "isScreenCaptureEnabled : ret="

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, " userId="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return p0

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    throw p0
.end method

.method public final isScreenCaptureEnabledInternal(Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/high16 v0, 0x200000000000000L

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    const-string/jumbo p1, "isScreenPinningAllowed : "

    .line 17
    const-string v0, "RestrictionPolicy"

    .line 19
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return p0
.end method

.method public final isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 27
    return v0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 30
    const-wide v1, 0x800000000000L

    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 39
    move-result p0

    .line 40
    const-string/jumbo p1, "isSdCardEnabled : "

    .line 43
    const-string v0, "RestrictionPolicy"

    .line 45
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw p0
.end method

.method public final isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v0

    .line 9
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v0

    .line 18
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 26
    const-string v1, ":"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x1

    .line 33
    if-eq v1, v2, :cond_1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    :cond_1
    const-string v1, "android.uid.systemui"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v0

    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 55
    move-result p1

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 63
    move-result p1

    .line 64
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 67
    move-result p0

    .line 68
    return p0
.end method

.method public final isSettingsChangesAllowedAsUser(ZI)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/16 v0, 0x8

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 9
    move-result p0

    .line 10
    if-eqz p1, :cond_0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const p1, 0x10401b5

    .line 17
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v0, "isSettingsChangesAllowedAsUser, userId "

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p2, " : "

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string p2, "RestrictionPolicy"

    .line 45
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return p0
.end method

.method public final isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isShareListAllowedAsUser(IZ)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/32 v0, 0x100000

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p2, :cond_0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const p2, 0x1040e5e

    .line 18
    invoke-static {p2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 21
    :cond_0
    const-string/jumbo p2, "isShareListAllowed : userId("

    .line 24
    const-string v0, ")"

    .line 26
    const-string v1, "RestrictionPolicy"

    .line 28
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return p0
.end method

.method public final isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(IZ)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isSmartClipModeAllowedAsUser(IZ)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/high16 v0, 0x100000000000000L

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 9
    move-result p0

    .line 10
    if-eqz p2, :cond_0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const p1, 0x1040ea0

    .line 17
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 20
    :cond_0
    const-string/jumbo p1, "isSmartClipModeAllowed : "

    .line 23
    const-string p2, "RestrictionPolicy"

    .line 25
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    return p0
.end method

.method public final isSmartClipModeAllowedInternal(Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(IZ)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isStatusBarExpansionAllowedAsUser(ZI)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide/16 p1, 0x100

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo p2, "isStatusBarExpansionAllowedAsUser : "

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string p2, ", userId = 0"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string p2, "RestrictionPolicy"

    .line 33
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return p0
.end method

.method public final isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/16 v0, 0x1000

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    const-string/jumbo p1, "isStopSystemAppAllowed : "

    .line 17
    const-string v0, "RestrictionPolicy"

    .line 19
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return p0
.end method

.method public final isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 13
    move-result p0

    .line 14
    const-string/jumbo p1, "isTetheringEnabled : ret1 = "

    .line 17
    const-string v2, " ret2 = "

    .line 19
    const-string v3, " ret3 = "

    .line 21
    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p1

    .line 25
    const-string v2, "RestrictionPolicy"

    .line 27
    invoke-static {v2, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 30
    if-nez v0, :cond_1

    .line 32
    if-nez v1, :cond_1

    .line 34
    if-eqz p0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 40
    :goto_1
    return p0
.end method

.method public final isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide v0, 0x20000000000L

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 19
    move-result-object p0

    .line 20
    const/16 v0, 0x20

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, p1

    .line 30
    :goto_0
    const-string/jumbo p0, "isUsbDebuggingEnabled : "

    .line 33
    const-string p1, "RestrictionPolicy"

    .line 35
    invoke-static {p0, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return v3
.end method

.method public final isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/32 v1, 0x80000

    .line 8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p2, :cond_0

    .line 14
    if-nez p0, :cond_0

    .line 16
    const p1, 0x1040ff1

    .line 19
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 22
    :cond_0
    const-string/jumbo p1, "isUsbHostStorageAllowed : "

    .line 25
    const-string p2, "RestrictionPolicy"

    .line 27
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    return p0
.end method

.method public final isUsbKiesAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 16
    const-wide/high16 v1, 0x2000000000000L

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 22
    move-result v0

    .line 23
    :goto_0
    if-eqz p2, :cond_1

    .line 25
    if-nez v0, :cond_1

    .line 27
    const p0, 0x10407e9

    .line 30
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 33
    :cond_1
    const-string/jumbo p0, "isUsbMediaPlayerAvailable : "

    .line 36
    const-string p1, "RestrictionPolicy"

    .line 38
    invoke-static {p0, p1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    return v0
.end method

.method public final isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide v0, 0x2000000000L

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 19
    move-result-object p0

    .line 20
    const/16 v0, 0x10

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, p1

    .line 30
    :goto_0
    const-string/jumbo p0, "isUsbTetheringEnabled : "

    .line 33
    const-string p1, "RestrictionPolicy"

    .line 35
    invoke-static {p0, p1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return v3
.end method

.method public final isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 9
    const-wide/32 v1, 0x200000

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 16
    move-result p0

    .line 17
    const-string/jumbo v1, "isUseSecureKeypadEnabled:"

    .line 20
    const-string v2, " cxtInfo.mContainerId:"

    .line 22
    invoke-static {v1, v2, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v1

    .line 26
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, " userid:"

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "RestrictionPolicy"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return p0
.end method

.method public final isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/32 v1, 0x10000

    .line 8
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide/16 v0, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, "userId: "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " isVideoRecordAllowed : "

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string v0, "RestrictionPolicy"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-eqz p2, :cond_0

    .line 44
    if-nez p0, :cond_0

    .line 46
    const p1, 0x1040cc4

    .line 49
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 52
    :cond_0
    return p0
.end method

.method public final isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/high16 v1, 0x20000000000000L

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    const-string/jumbo p1, "isVpnAllowed():ret:"

    .line 14
    const-string v0, "RestrictionPolicy"

    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    return p0
.end method

.method public final isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 7
    const-wide v0, 0x400000000L

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p2, :cond_0

    .line 19
    if-nez p0, :cond_0

    .line 21
    const p1, 0x104102f

    .line 24
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 27
    :cond_0
    const-string/jumbo p1, "isWallpaperChangeAllowed : "

    .line 30
    const-string p2, "RestrictionPolicy"

    .line 32
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return p0
.end method

.method public final isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "RestrictionPolicy"

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p2, p1, :cond_2

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const-string v2, "RESTRICTION"

    .line 11
    const-string/jumbo v3, "wearablePolicyEnabled"

    .line 14
    invoke-virtual {p0, v1, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v2

    .line 38
    and-int/2addr v2, p2

    .line 39
    if-eq p2, v2, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move p1, v1

    .line 43
    :goto_0
    move v1, p1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 47
    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    .line 50
    throw p0
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    const-string/jumbo p0, "isWearablePolicyEnabled() failed."

    .line 54
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    const-string/jumbo p0, "isWearablePolicyEnabled() failed: INVALID PARAMETER INPUT"

    .line 61
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_1
    const-string/jumbo p0, "isWearablePolicyEnabled() : "

    .line 67
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return v1
.end method

.method public final isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x2000

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p2, :cond_0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const p1, 0x1040cba

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 21
    :cond_0
    const-string/jumbo p1, "isWifiDirectAllowed: "

    .line 24
    const-string p2, "RestrictionPolicy"

    .line 26
    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return p0
.end method

.method public final isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 3
    const-wide v0, 0x4000000000L

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 19
    move-result-object p0

    .line 20
    const/16 v0, 0x10

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, p1

    .line 30
    :goto_0
    const-string/jumbo p0, "isWifiTetheringEnabled: "

    .line 33
    const-string p1, "RestrictionPolicy"

    .line 35
    invoke-static {p0, p1, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return v3
.end method

.method public final mountSdCard()Z
    .locals 4

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    const-string/jumbo v1, "mountSdCard() : Unable to mount media - error code : "

    .line 6
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    .line 9
    move-result-object p0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p0, :cond_2

    .line 13
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_0

    .line 19
    const-string/jumbo p0, "mountSdCard() : fail to mount media because path is null."

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {p0, v3}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I

    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_2

    .line 54
    :goto_0
    const-string/jumbo v1, "mountSdCard() : failed by Exception."

    .line 57
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    const-string/jumbo v1, "mountSdCard() : failed by RemoteException."

    .line 64
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_2
    :goto_2
    return v2
.end method

.method public final notifyChanges(I)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    .line 9
    move-result v0

    .line 10
    xor-int/2addr v0, v2

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    .line 17
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    move v3, v1

    .line 26
    :goto_0
    if-ge v3, v0, :cond_1

    .line 28
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 34
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 36
    invoke-virtual {p0, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    .line 39
    move-result v5

    .line 40
    xor-int/2addr v5, v2

    .line 41
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 59
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1/isCameraEnabled"

    .line 76
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 83
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3/isSettingsChangesAllowed"

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 95
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 97
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy/isSettingsChangesAllowed"

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    move-result-object v0

    .line 104
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 107
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 109
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy/isCameraEnabled"

    .line 112
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 115
    move-result-object v0

    .line 116
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 121
    const-string/jumbo p1, "content://com.sec.knox.provider/RestrictionPolicy/isMicEnabled"

    .line 124
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 127
    move-result-object p1

    .line 128
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 131
    return-void
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    new-instance p1, Landroid/content/ContentValues;

    .line 8
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 11
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->KC_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "adminName"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string v1, "ADMIN_INFO"

    .line 26
    const-string v2, "adminUid"

    .line 28
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 34
    :cond_0
    return-void
.end method

.method public final onAdminRemoved(IZ)V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result v0

    .line 11
    if-nez p2, :cond_0

    .line 13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    move-result p2

    .line 17
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 19
    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->load(I)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    .line 25
    :cond_0
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    .line 27
    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 33
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    const-string v2, ""

    .line 40
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 45
    invoke-direct {v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 48
    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 51
    move-result v3

    .line 52
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    const-string/jumbo v3, "microphoneEnabled"

    .line 62
    const-string v4, "/data/system/enterprise.conf"

    .line 64
    invoke-static {v3, p2, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 74
    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 77
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    const-string/jumbo v2, "screenCaptureEnabled"

    .line 91
    invoke-static {v2, p2, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 98
    move-result v2

    .line 99
    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 101
    if-eq v2, v3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 106
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 108
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 111
    move-result v2

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    .line 115
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 120
    move-result v3

    .line 121
    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 124
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 127
    move-result v2

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    .line 131
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    .line 133
    const/4 v3, 0x1

    .line 134
    if-nez v2, :cond_2

    .line 136
    invoke-virtual {p0, p2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {p0, v3, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    .line 145
    iput-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    .line 147
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    .line 149
    if-nez v2, :cond_3

    .line 151
    const/4 v2, 0x2

    .line 152
    invoke-virtual {p0, p2, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_3

    .line 158
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    .line 161
    iput-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    .line 163
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 166
    move-result v2

    .line 167
    if-ne v0, v2, :cond_4

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor$7(I)V

    .line 172
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    .line 174
    if-nez v2, :cond_5

    .line 176
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_5

    .line 182
    if-nez v0, :cond_5

    .line 184
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode()Z

    .line 187
    move-result p2

    .line 188
    if-nez p2, :cond_5

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)V

    .line 193
    :cond_5
    iget-boolean p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 195
    if-eqz p2, :cond_6

    .line 197
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    .line 200
    move-result p2

    .line 201
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    .line 204
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 206
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateNonMarketAppOnUserManager()V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabledInDb()Z

    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_7

    .line 215
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setHomeKeyVisibilityOnNavi(Z)V

    .line 218
    :cond_7
    iget p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 220
    if-ne p2, p1, :cond_9

    .line 222
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 224
    check-cast p1, Landroid/util/ArraySet;

    .line 226
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object p1

    .line 230
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result p2

    .line 234
    if-eqz p2, :cond_8

    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    .line 244
    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    .line 247
    goto :goto_0

    .line 248
    :cond_8
    new-instance p1, Landroid/util/ArraySet;

    .line 250
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 255
    const/4 p1, -0x1

    .line 256
    iput p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 258
    :cond_9
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    const-string v3, "UsbExceptionMask"

    .line 7
    const-string v4, "RESTRICTION"

    .line 9
    const-string/jumbo v5, "resetWifiRelatedPolicyAPIs - END"

    .line 12
    const-string/jumbo v0, "resetWifiRelatedPolicyAPIs - "

    .line 15
    const-string v6, "RestrictionPolicy"

    .line 17
    const-string/jumbo v7, "resetWifiRelatedPolicyAPIs - START"

    .line 20
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v7, "adminUid"

    .line 25
    const-string/jumbo v8, "wifiTetheringEnabled"

    .line 28
    const-string v9, "allowWifiDirect"

    .line 30
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    .line 33
    move-result-object v10

    .line 34
    const/4 v11, -0x1

    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x0

    .line 37
    :try_start_0
    iget-object v14, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    invoke-virtual {v14, v4, v10, v13}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 42
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    if-eqz v10, :cond_8

    .line 45
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 48
    move-result v14

    .line 49
    if-gtz v14, :cond_0

    .line 51
    goto :goto_5

    .line 52
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    move v0, v12

    .line 56
    move v14, v0

    .line 57
    :goto_0
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 60
    move-result v15

    .line 61
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 64
    move-result v15

    .line 65
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    move-result v13

    .line 69
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 72
    move-result v13

    .line 73
    if-nez v13, :cond_2

    .line 75
    if-nez v0, :cond_1

    .line 77
    move v0, v15

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    if-eq v0, v11, :cond_2

    .line 81
    move v0, v11

    .line 82
    :cond_2
    :goto_1
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    move-result v13

    .line 86
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 89
    move-result v13

    .line 90
    if-nez v13, :cond_4

    .line 92
    if-nez v14, :cond_3

    .line 94
    move v14, v15

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    if-eq v14, v11, :cond_4

    .line 98
    move v14, v11

    .line 99
    :cond_4
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 102
    move-result v13

    .line 103
    if-nez v13, :cond_7

    .line 105
    if-ne v0, v2, :cond_5

    .line 107
    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringUserRestriction(Z)V

    .line 110
    goto :goto_3

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object v13, v10

    .line 113
    goto/16 :goto_d

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto :goto_8

    .line 117
    :cond_5
    :goto_3
    if-ne v14, v2, :cond_6

    .line 119
    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiDirectUserRestriction(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_6
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 125
    goto :goto_7

    .line 126
    :cond_7
    const/4 v13, 0x0

    .line 127
    goto :goto_0

    .line 128
    :cond_8
    :goto_5
    if-nez v10, :cond_9

    .line 130
    :try_start_2
    const-string v8, "Cursor is null"

    .line 132
    goto :goto_6

    .line 133
    :cond_9
    const-string v8, "Cursor is empty"

    .line 135
    :goto_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    if-eqz v10, :cond_a

    .line 144
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_a
    :goto_7
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v5, 0x0

    .line 151
    goto :goto_9

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    const/4 v13, 0x0

    .line 154
    goto/16 :goto_d

    .line 156
    :catch_1
    move-exception v0

    .line 157
    const/4 v10, 0x0

    .line 158
    :goto_8
    :try_start_3
    const-string/jumbo v8, "resetWifiRelatedPolicyAPIs"

    .line 161
    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-eqz v10, :cond_a

    .line 166
    goto :goto_4

    .line 167
    :goto_9
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 170
    move-result v0

    .line 171
    iput-boolean v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 173
    const/4 v0, 0x1

    .line 174
    invoke-virtual {v1, v5, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 177
    move-result v8

    .line 178
    iput-boolean v8, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    .line 180
    const/4 v8, 0x2

    .line 181
    invoke-virtual {v1, v5, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 184
    move-result v8

    .line 185
    iput-boolean v8, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    .line 187
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 190
    move-result v5

    .line 191
    iput-boolean v5, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    .line 193
    :try_start_4
    filled-new-array {v3}, [Ljava/lang/String;

    .line 196
    move-result-object v5

    .line 197
    iget-object v8, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 199
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    new-instance v9, Landroid/content/ContentValues;

    .line 204
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 207
    invoke-static {v2, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    .line 210
    move-result-wide v13

    .line 211
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v9, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    invoke-virtual {v8, v4, v5, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_b

    .line 230
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Landroid/content/ContentValues;

    .line 236
    goto :goto_a

    .line 237
    :cond_b
    new-instance v2, Landroid/content/ContentValues;

    .line 239
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 242
    :goto_a
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 245
    move-result-object v2

    .line 246
    if-eqz v2, :cond_c

    .line 248
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 251
    move-result v3

    .line 252
    if-ne v3, v11, :cond_c

    .line 254
    iput-boolean v12, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 256
    goto :goto_b

    .line 257
    :cond_c
    iput-boolean v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 259
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string/jumbo v3, "onPreAdminRemoval - Exception mask : "

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    const-string v2, " | Sync : "

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-boolean v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 287
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 290
    goto :goto_c

    .line 291
    :catch_2
    const-string v0, "Read DB Error"

    .line 293
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_c
    return-void

    .line 297
    :goto_d
    if-eqz v13, :cond_d

    .line 299
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_d
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    throw v0
.end method

.method public final preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "RESTRICTION_ADMIN"

    .line 5
    move-object/from16 v2, p1

    .line 7
    invoke-static {v2, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 15
    move-result v3

    .line 16
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 19
    move-result v9

    .line 20
    if-eqz v3, :cond_1

    .line 22
    const-string v3, " preventAdminActivation : "

    .line 24
    const-string v4, "RestrictionPolicy"

    .line 26
    move/from16 v5, p2

    .line 28
    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    :try_start_0
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    invoke-virtual {v0, v3, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 39
    return v2

    .line 40
    :cond_0
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    const-string v11, "RESTRICTION"

    .line 46
    const-string/jumbo v15, "preventAdminActivation"

    .line 49
    const/4 v14, 0x0

    .line 50
    move/from16 v13, p2

    .line 52
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 55
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    const-string v3, "RestrictionPolicy.preventAdminActivation exception : "

    .line 59
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move/from16 v5, p2

    .line 65
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    .line 68
    move-result v3

    .line 69
    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 71
    if-ne v12, v3, :cond_2

    .line 73
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    const/4 v14, 0x0

    .line 76
    const-string v11, "RESTRICTION"

    .line 78
    const-string/jumbo v15, "preventAdminActivation"

    .line 81
    move/from16 v13, p2

    .line 83
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 86
    move-result v2

    .line 87
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 89
    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v10

    .line 95
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object v11

    .line 99
    const-string/jumbo v5, "preventAdminActivation"

    .line 102
    const-wide v6, 0x200000000L

    .line 107
    const/4 v8, 0x0

    .line 108
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 111
    return v2
.end method

.method public final preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "RESTRICTION_ADMIN"

    .line 5
    move-object/from16 v2, p1

    .line 7
    invoke-static {v2, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 15
    move-result v3

    .line 16
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 19
    move-result v9

    .line 20
    if-eqz v3, :cond_1

    .line 22
    const-string v3, " preventAdminInstallation : "

    .line 24
    const-string v4, "RestrictionPolicy"

    .line 26
    move/from16 v5, p2

    .line 28
    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    invoke-virtual {v0, v3, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 39
    return v2

    .line 40
    :cond_0
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    const/4 v14, 0x0

    .line 45
    const-string v11, "RESTRICTION"

    .line 47
    const-string/jumbo v15, "preventAdminInstallation"

    .line 50
    move/from16 v13, p2

    .line 52
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 55
    move-result v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move/from16 v5, p2

    .line 59
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    .line 62
    move-result v3

    .line 63
    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 65
    if-ne v12, v3, :cond_2

    .line 67
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    const/4 v14, 0x0

    .line 70
    const-string v11, "RESTRICTION"

    .line 72
    const-string/jumbo v15, "preventAdminInstallation"

    .line 75
    move/from16 v13, p2

    .line 77
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 80
    move-result v2

    .line 81
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 83
    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v10

    .line 89
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    move-result-object v11

    .line 93
    const-string/jumbo v5, "preventAdminInstallation"

    .line 96
    const-wide v6, 0x100000000L

    .line 101
    const/4 v8, 0x0

    .line 102
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 105
    return v2
.end method

.method public final registerSubscriptionCallback()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mSubscriptionsChangedListener:Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    .line 12
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    .line 14
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/os/Looper;)V

    .line 21
    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mSubscriptionsChangedListener:Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v1

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    .line 29
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v4, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

    .line 34
    invoke-direct {v4, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mSubscriptionsChangedListener:Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    .line 39
    invoke-virtual {v0, v4, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    throw p0
.end method

.method public final rollBackSVoice(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    const-string/jumbo v1, "voiceControl"

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v1

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object p0

    .line 29
    const-string/jumbo v3, "voice_input_control"

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    move-result v0

    .line 36
    invoke-static {p0, v3, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    :cond_0
    return-void
.end method

.method public final setAirplaneModeAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setAirplaneModeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "RestrictionPolicy"

    .line 23
    const-string/jumbo p2, "setAirplaneModeAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    const-string v0, "MiscPolicy.setAllowNonMarketApps"

    .line 3
    const-string v1, "RestrictionPolicy"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo v0, "setAllowNonMarketApps : "

    .line 15
    invoke-static {v0, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v3, "RESTRICTION"

    .line 25
    const-string v7, "allowNonMarketApp"

    .line 27
    move v5, p2

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 34
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v7

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v8

    .line 44
    const-string v2, "allowNonMarketApp"

    .line 46
    const-wide/high16 v3, 0x1000000000000L

    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateNonMarketAppOnUserManager()V

    .line 56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 59
    move-result-wide v1

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 63
    move-result v6

    .line 64
    const-string v7, "RestrictionPolicy"

    .line 66
    if-eqz p2, :cond_0

    .line 68
    const-string p0, "Admin %d has allowed installation of non-Google-Play application."

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const-string p0, "Admin %d has disallowed installation of non-Google-Play application."

    .line 75
    :goto_0
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object p2

    .line 81
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 84
    move-result-object p2

    .line 85
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v8

    .line 89
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 91
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 94
    move-result v9

    .line 95
    const/4 v3, 0x5

    .line 96
    const/4 v4, 0x1

    .line 97
    const/4 v5, 0x1

    .line 98
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    return v0

    .line 105
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    throw p0
.end method

.method public final setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v3, "RESTRICTION"

    .line 16
    const-string v7, "backgroundDataEnabled"

    .line 18
    move v5, p2

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    const-string v3, "RestrictionPolicy"

    .line 25
    if-eqz v2, :cond_2

    .line 27
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 29
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v10

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v11

    .line 39
    const-string v5, "backgroundDataEnabled"

    .line 41
    const-wide/high16 v6, 0x4000000000000L

    .line 43
    const/4 v8, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 48
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 56
    :try_start_0
    const-string/jumbo p0, "netpolicy"

    .line 59
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    .line 72
    move-result p1

    .line 73
    const/4 v4, 0x1

    .line 74
    if-ne p1, v4, :cond_2

    .line 76
    invoke-interface {p0, v4}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 79
    const-string p0, "Applied Background Data Removal Policy"

    .line 81
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 89
    const-string/jumbo p1, "networkPolicyService is null"

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    const-string/jumbo p1, "setBackgroundData EX: "

    .line 99
    invoke-static {p0, p1, v3}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V

    .line 106
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo p1, "setBackgroundData : "

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    return v2
.end method

.method public final setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v0

    .line 9
    const-string/jumbo v2, "setBackup : "

    .line 12
    const-string v3, "RestrictionPolicy"

    .line 14
    if-nez p2, :cond_1

    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_0
    const-string v5, "backup"

    .line 19
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 22
    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    .line 26
    move-result-object v5

    .line 27
    if-nez v5, :cond_0

    .line 29
    const-string v5, "Failed to get BackupManager"

    .line 31
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    return v4

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :catch_0
    move-exception v5

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    :try_start_1
    invoke-interface {v5}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 63
    invoke-interface {v5, v4}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_1

    .line 67
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    const/4 v4, 0x1

    .line 72
    :goto_2
    if-eqz v4, :cond_2

    .line 74
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 78
    const-string v6, "RESTRICTION"

    .line 80
    const-string v10, "backupEnabled"

    .line 82
    const/4 v9, 0x0

    .line 83
    move v8, p2

    .line 84
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 87
    move-result v5

    .line 88
    and-int/2addr v4, v5

    .line 89
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 91
    const-string v6, "backupEnabled"

    .line 93
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v11

    .line 99
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    move-result-object v12

    .line 103
    const-wide v7, 0x100000000000L

    .line 108
    const/4 v9, 0x1

    .line 109
    const/4 v10, 0x0

    .line 110
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    goto :goto_4

    .line 114
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw p0

    .line 133
    :cond_2
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 145
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    return v4
.end method

.method public final setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    const-string/jumbo v1, "setBluetoothTethering : "

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v2

    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 19
    const-string v6, "RESTRICTION"

    .line 21
    const-string/jumbo v10, "bluetoothTetheringEnabled"

    .line 24
    const/4 v9, 0x0

    .line 25
    move v8, p2

    .line 26
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 29
    move-result v4

    .line 30
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 32
    const-string/jumbo v6, "bluetoothTetheringEnabled"

    .line 35
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v11

    .line 41
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v12

    .line 45
    const-wide v7, 0x8000000000L

    .line 50
    const/4 v9, 0x1

    .line 51
    const/4 v10, 0x0

    .line 52
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v4, :cond_1

    .line 72
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 75
    move-result v9

    .line 76
    const-string v10, "RestrictionPolicy"

    .line 78
    if-eqz p2, :cond_0

    .line 80
    const-string v5, "Admin %d has enabled bluetooth Tethering."

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const-string v5, "Admin %d has disabled bluetooth Tethering."

    .line 87
    :goto_0
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v6

    .line 93
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 96
    move-result-object v6

    .line 97
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v11

    .line 101
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 103
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 106
    move-result v12

    .line 107
    const/4 v6, 0x5

    .line 108
    const/4 v7, 0x1

    .line 109
    const/4 v8, 0x1

    .line 110
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 113
    if-nez p2, :cond_1

    .line 115
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 117
    const-string/jumbo p1, "connectivity"

    .line 120
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 126
    const/4 p1, 0x2

    .line 127
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_2

    .line 131
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v5, "setBluetoothTethering Ex:"

    .line 136
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 142
    :cond_1
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v4
.end method

.method public final setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v8, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v9

    .line 9
    invoke-static {v9}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v10

    .line 13
    const/4 v11, 0x0

    .line 14
    invoke-virtual {v1, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 17
    move-result v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v3, "setCCMode() : "

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, " and current MDM state:"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v12, "RestrictionPolicy"

    .line 43
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    move-result-wide v2

    .line 50
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 55
    move-result-object v0

    .line 56
    const/4 v4, -0x1

    .line 57
    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {v0, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enableCCMode(Z)I

    .line 62
    move-result v4

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_6

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const-string/jumbo v0, "setCCMode() : securtyManagerService is not available."

    .line 72
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    :try_start_1
    const-string/jumbo v5, "setCCMode(): failed to set CCMode with exception"

    .line 82
    invoke-static {v12, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :goto_2
    const-string/jumbo v0, "setCCMode() result : "

    .line 89
    invoke-static {v4, v0, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    if-nez v4, :cond_2

    .line 94
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 96
    iget v4, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 98
    const/4 v6, 0x0

    .line 99
    const-string v3, "RESTRICTION"

    .line 101
    const-string/jumbo v7, "setCCMode"

    .line 104
    move/from16 v5, p2

    .line 106
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 109
    move-result v0

    .line 110
    iget-object v13, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 112
    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v19

    .line 118
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    move-result-object v20

    .line 122
    const-string/jumbo v14, "setCCMode"

    .line 125
    const-wide/32 v15, 0x40000000

    .line 128
    const/16 v17, 0x0

    .line 130
    const/16 v18, 0x0

    .line 132
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 135
    if-nez v0, :cond_1

    .line 137
    const-string/jumbo v2, "setCCMode() : failed to update enterprise db. enable = "

    .line 140
    const-string v3, ", state="

    .line 142
    invoke-static {v2, v3, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    move v11, v0

    .line 161
    goto :goto_3

    .line 162
    :cond_2
    const-string/jumbo v0, "setCCMode() : failed. securtyManagerService has failed to enforce CCMode. result = "

    .line 165
    invoke-static {v4, v0, v12}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_3
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    .line 171
    move-result v0

    .line 172
    const/4 v1, 0x2

    .line 173
    if-eq v0, v1, :cond_3

    .line 175
    const/4 v1, 0x4

    .line 176
    if-ne v0, v1, :cond_5

    .line 178
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 181
    move-result-wide v12

    .line 182
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 185
    move-result v4

    .line 186
    const-string v5, "RestrictionPolicy"

    .line 188
    if-eqz v8, :cond_4

    .line 190
    const-string v0, "Admin %d has requested to enable CCMode."

    .line 192
    goto :goto_4

    .line 193
    :catchall_1
    move-exception v0

    .line 194
    goto :goto_5

    .line 195
    :cond_4
    const-string v0, "Admin %d has requested to disable CCMode."

    .line 197
    :goto_4
    iget v1, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v1

    .line 203
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    move-result-object v6

    .line 211
    const/4 v1, 0x5

    .line 212
    const/4 v2, 0x1

    .line 213
    const/4 v3, 0x1

    .line 214
    move v7, v10

    .line 215
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    :cond_5
    return v11

    .line 222
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    throw v0

    .line 226
    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    throw v0
.end method

.method public final setCCModeOnlyForCallerSystem(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move/from16 v9, p2

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x3e8

    .line 17
    const-string v10, "RestrictionPolicy"

    .line 19
    if-ne v0, v4, :cond_6

    .line 21
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 24
    move-result v4

    .line 25
    if-ne v3, v4, :cond_6

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 30
    move-result v17

    .line 31
    const/4 v11, 0x0

    .line 32
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 35
    move-result v0

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v4, "setCCMode() : "

    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, " and current MDM state:"

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    move-result-wide v3

    .line 66
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 71
    move-result-object v0

    .line 72
    const/4 v5, -0x1

    .line 73
    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {v0, v9}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enableCCMode(Z)I

    .line 78
    move-result v5

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto/16 :goto_6

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const-string/jumbo v0, "setCCMode() : MdfPolicy is not available."

    .line 88
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    goto :goto_2

    .line 95
    :goto_1
    :try_start_1
    const-string/jumbo v6, "setCCMode(): failed to set CCMode with exception"

    .line 98
    invoke-static {v10, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    goto :goto_0

    .line 102
    :goto_2
    const-string/jumbo v0, "setCCMode() result : "

    .line 105
    invoke-static {v5, v0, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    if-nez v5, :cond_1

    .line 110
    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 112
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 114
    const/4 v7, 0x0

    .line 115
    const-string v4, "RESTRICTION"

    .line 117
    const-string/jumbo v8, "setCCMode"

    .line 120
    move/from16 v6, p2

    .line 122
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 125
    move-result v0

    .line 126
    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 128
    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v24

    .line 134
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    move-result-object v25

    .line 138
    const-string/jumbo v19, "setCCMode"

    .line 141
    const-wide/32 v20, 0x40000000

    .line 144
    const/16 v22, 0x0

    .line 146
    const/16 v23, 0x0

    .line 148
    move-object/from16 v18, v3

    .line 150
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 153
    if-nez v0, :cond_2

    .line 155
    const-string/jumbo v3, "setCCMode() : failed to update enterprise db. enable = "

    .line 158
    const-string v4, ", state="

    .line 160
    invoke-static {v3, v4, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 167
    move-result v4

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v3

    .line 175
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    goto :goto_3

    .line 179
    :cond_1
    const-string/jumbo v0, "setCCMode() : failed. MdfPolicy has failed to enforce CCMode. result = "

    .line 182
    invoke-static {v5, v0, v10}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    move v0, v11

    .line 186
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    .line 189
    move-result v1

    .line 190
    const/4 v3, 0x2

    .line 191
    if-eq v1, v3, :cond_3

    .line 193
    const/4 v3, 0x4

    .line 194
    if-ne v1, v3, :cond_5

    .line 196
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 199
    move-result-wide v3

    .line 200
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 203
    move-result v14

    .line 204
    const-string v15, "RestrictionPolicy"

    .line 206
    if-eqz v9, :cond_4

    .line 208
    const-string v1, "Admin %d has requested to enable CCMode."

    .line 210
    goto :goto_4

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    goto :goto_5

    .line 213
    :cond_4
    const-string v1, "Admin %d has requested to disable CCMode."

    .line 215
    :goto_4
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v2

    .line 221
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 224
    move-result-object v2

    .line 225
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    move-result-object v16

    .line 229
    const/4 v11, 0x5

    .line 230
    const/4 v12, 0x1

    .line 231
    const/4 v13, 0x1

    .line 232
    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    :cond_5
    return v0

    .line 239
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw v0

    .line 243
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    throw v0

    .line 247
    :cond_6
    const-string/jumbo v1, "setCCModeOnlyForCallerSystem() caller uid : "

    .line 250
    const-string v2, " caller pid : "

    .line 252
    const-string v4, " Process.mypid() : "

    .line 254
    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    move-result-object v0

    .line 258
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 261
    move-result v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Ljava/lang/SecurityException;

    .line 274
    const-string v1, "Caller is not a system process.."

    .line 276
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 279
    throw v0
.end method

.method public final setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p2

    .line 5
    const-string/jumbo v8, "com.sec.android.app.camera"

    .line 8
    const-string v9, "RestrictionPolicy"

    .line 10
    const-string/jumbo v10, "setCamera - enable: "

    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 16
    move-result-object v11

    .line 17
    iget v12, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 19
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 22
    move-result v15

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v21

    .line 27
    const/4 v14, 0x0

    .line 28
    :try_start_0
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    iget v3, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    const-string v2, "RESTRICTION"

    .line 34
    const-string/jumbo v6, "cameraEnabled"

    .line 37
    const/4 v5, 0x0

    .line 38
    move/from16 v4, p2

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 43
    move-result v1

    .line 44
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v4, ", CallerUid: "

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v4, ", CallerPkgName: "

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, ", userId: "

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 95
    invoke-virtual {v2, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->updateCameraDisabledAdmin(I)V

    .line 98
    iget-object v13, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 100
    const-string/jumbo v2, "cameraEnabled"

    .line 103
    iget v3, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v19

    .line 109
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    move-result-object v20
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const-wide v3, 0x1000000000L

    .line 118
    const/16 v17, 0x1

    .line 120
    move v5, v14

    .line 121
    move-object v14, v2

    .line 122
    move v2, v15

    .line 123
    move-wide v15, v3

    .line 124
    move/from16 v18, v2

    .line 126
    :try_start_1
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 129
    if-eqz v1, :cond_0

    .line 131
    if-nez v7, :cond_0

    .line 133
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v3, v8, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 140
    invoke-static {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 143
    move-result-object v3

    .line 144
    if-eqz v3, :cond_0

    .line 146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v3

    .line 150
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_0

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Ljava/lang/Integer;

    .line 162
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 165
    move-result v4

    .line 166
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 169
    move-result-object v6

    .line 170
    invoke-interface {v6, v8, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 173
    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    goto :goto_6

    .line 176
    :catch_0
    move-exception v0

    .line 177
    goto :goto_4

    .line 178
    :cond_0
    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v0, v11, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 183
    move-result v3

    .line 184
    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCameraAllowedSystemUI(IZ)V

    .line 187
    if-eqz v7, :cond_1

    .line 189
    const/16 v3, 0x22

    .line 191
    goto :goto_1

    .line 192
    :cond_1
    const/16 v3, 0x23

    .line 194
    :goto_1
    iget v4, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v4

    .line 200
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 203
    move-result-object v4

    .line 204
    invoke-static {v2, v3, v4}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 207
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 209
    const-string/jumbo v3, "content://com.sec.knox.provider/RestrictionPolicy1/isCameraEnabled"

    .line 212
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 215
    move-result-object v3

    .line 216
    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 219
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 221
    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy/isCameraEnabled"

    .line 224
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 227
    move-result-object v2

    .line 228
    invoke-static {v0, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :cond_2
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    return v1

    .line 235
    :catch_1
    move v5, v14

    .line 236
    goto :goto_2

    .line 237
    :catch_2
    move-exception v0

    .line 238
    move v5, v14

    .line 239
    goto :goto_4

    .line 240
    :catch_3
    :goto_2
    :try_start_2
    const-string/jumbo v0, "is EDMStorageProvider running?"

    .line 243
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :goto_3
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    goto :goto_5

    .line 250
    :goto_4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string v2, "Fail getting ActivityManager "

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    goto :goto_3

    .line 275
    :goto_5
    return v5

    .line 276
    :goto_6
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw v0
.end method

.method public final setCameraAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCameraAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "RestrictionPolicy"

    .line 23
    const-string/jumbo p2, "setCameraAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v8, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v9

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v10, "setCellularData() : "

    .line 14
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v11, "RestrictionPolicy"

    .line 26
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v12

    .line 33
    const/4 v14, 0x0

    .line 34
    const/4 v0, 0x1

    .line 35
    :try_start_0
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    iget v3, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    const-string v4, "RESTRICTION"

    .line 41
    const-string/jumbo v5, "cellularDataEnabled"

    .line 44
    invoke-virtual {v2, v3, v14, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 47
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    move/from16 v18, v2

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v3, "setCellularData() : fail to get admin policy value = "

    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget v3, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 61
    invoke-static {v2, v3, v11}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    move/from16 v18, v0

    .line 66
    :goto_0
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    iget v4, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 70
    const/4 v6, 0x0

    .line 71
    const-string v3, "RESTRICTION"

    .line 73
    const-string/jumbo v7, "cellularDataEnabled"

    .line 76
    move/from16 v5, p2

    .line 78
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 81
    move-result v2

    .line 82
    if-nez v8, :cond_2

    .line 84
    :try_start_1
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v3, "phone"

    .line 89
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 95
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v2, v14}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 106
    goto :goto_3

    .line 107
    :catch_1
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    const-string/jumbo v2, "setCellularData() : mobile data has already disabled"

    .line 112
    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    const-string/jumbo v0, "setCellularData() : Failed to get Telephony Manager"

    .line 119
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    goto :goto_2

    .line 123
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :goto_2
    move v0, v14

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    move v0, v2

    .line 129
    :goto_3
    if-nez v0, :cond_3

    .line 131
    iget-object v15, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 133
    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 135
    const/16 v19, 0x0

    .line 137
    const-string v16, "RESTRICTION"

    .line 139
    const-string/jumbo v20, "cellularDataEnabled"

    .line 142
    move/from16 v17, v2

    .line 144
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 147
    move-result v2

    .line 148
    and-int/2addr v0, v2

    .line 149
    goto :goto_4

    .line 150
    :cond_3
    iget-object v15, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 152
    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v21

    .line 158
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    move-result-object v22

    .line 162
    const-string/jumbo v16, "cellularDataEnabled"

    .line 165
    const-wide v17, 0x400000000000L

    .line 170
    const/16 v19, 0x1

    .line 172
    const/16 v20, 0x0

    .line 174
    invoke-virtual/range {v15 .. v22}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 177
    :goto_4
    if-eqz v0, :cond_5

    .line 179
    const/4 v2, 0x0

    .line 180
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 183
    move-result v2

    .line 184
    invoke-virtual {v1, v14, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularDataAllowedSystemUI(IZ)V

    .line 187
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 190
    move-result v18

    .line 191
    if-eqz v8, :cond_4

    .line 193
    const-string v1, "Admin %d has enabled cellular data."

    .line 195
    goto :goto_5

    .line 196
    :cond_4
    const-string v1, "Admin %d has disabled cellular data."

    .line 198
    :goto_5
    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v2

    .line 204
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 207
    move-result-object v2

    .line 208
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    move-result-object v20

    .line 212
    iget v1, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 214
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 217
    move-result v21

    .line 218
    const/4 v15, 0x5

    .line 219
    const/16 v16, 0x1

    .line 221
    const/16 v17, 0x1

    .line 223
    const-string v19, "RestrictionPolicy"

    .line 225
    invoke-static/range {v15 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 228
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, ", ret = "

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    return v0
.end method

.method public final setCellularDataAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "RestrictionPolicy"

    .line 23
    const-string/jumbo p2, "setCellularDataAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "RESTRICTION"

    .line 12
    const-string/jumbo v5, "clipboardEnabled"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 22
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v6

    .line 28
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v7

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v8

    .line 38
    const-string/jumbo v2, "clipboardEnabled"

    .line 41
    const-wide/16 v3, 0x200

    .line 43
    const/4 v5, 0x1

    .line 44
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 47
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo p1, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    .line 52
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo p1, "setClipboardEnabled : "

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    const-string p1, ", ret = "

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string p1, "RestrictionPolicy"

    .line 77
    invoke-static {p1, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 80
    return v0
.end method

.method public final setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setFaceRecognitionEvenCameraBlockedAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "RestrictionPolicy"

    .line 23
    const-string/jumbo p2, "setFaceRecognitionEvenCameraBlockedAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    const-string/jumbo v1, "setHeadphoneState : "

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 14
    move-result v3

    .line 15
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " old state : "

    .line 25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, " WiredHeadsetOn : "

    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 38
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/16 v1, 0x8

    .line 54
    const/4 v4, 0x4

    .line 55
    const-string v5, ""

    .line 57
    const-string/jumbo v6, "h2w"

    .line 60
    if-eqz p2, :cond_0

    .line 62
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    invoke-virtual {v7}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_1

    .line 70
    if-nez v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    const/4 v7, 0x1

    .line 75
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    invoke-virtual {v3, v1, v7, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 106
    const-string v8, "RESTRICTION"

    .line 108
    const-string/jumbo v12, "setHeadphoneState"

    .line 111
    const/4 v11, 0x0

    .line 112
    move v10, p2

    .line 113
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 116
    move-result v2

    .line 117
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 119
    const-string/jumbo v4, "setHeadphoneState"

    .line 122
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v9

    .line 128
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    move-result-object v10

    .line 132
    const-wide/32 v5, 0x10000000

    .line 135
    const/4 v7, 0x1

    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    goto :goto_1

    .line 141
    :catch_0
    const-string p0, "RestrictionPolicy.setHeadphoneState() exception : "

    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_1
    return v2
.end method

.method public final setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "RestrictionPolicy"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string/jumbo p0, "setHomeKeyState() : Failed. Caller is not owner"

    .line 17
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v1

    .line 21
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    const-string v4, "RESTRICTION"

    .line 27
    const-string/jumbo v8, "homeKeyEnabled"

    .line 30
    const/4 v7, 0x0

    .line 31
    move v6, p2

    .line 32
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 38
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 40
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    move-result v8

    .line 44
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v9

    .line 50
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    move-result-object v10

    .line 54
    const-wide/high16 v5, 0x10000000000000L

    .line 56
    const/4 v7, 0x1

    .line 57
    const-string/jumbo v4, "homeKeyEnabled"

    .line 60
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 63
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 66
    move-result p1

    .line 67
    if-ne p2, p1, :cond_1

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setHomeKeyVisibilityOnNavi(Z)V

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 74
    if-nez p0, :cond_2

    .line 76
    const-string/jumbo p0, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 79
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 p1, 0x3

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 87
    :goto_0
    return v0
.end method

.method public final setHomeKeyVisibilityOnNavi(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 7
    if-nez v2, :cond_1

    .line 9
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 12
    if-nez v2, :cond_0

    .line 14
    const-string/jumbo v2, "statusbar"

    .line 17
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 24
    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 27
    if-nez v2, :cond_0

    .line 29
    const-string v2, "RestrictionPolicy"

    .line 31
    const-string/jumbo v3, "warning: no STATUS_BAR_SERVICE"

    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    monitor-exit p0

    .line 43
    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 45
    goto :goto_2

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1

    .line 48
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 50
    if-eqz v2, :cond_3

    .line 52
    if-nez p1, :cond_2

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mToken:Landroid/os/IBinder;

    .line 56
    const-string p1, "RestrictionPolicy"

    .line 58
    const/high16 v3, 0x200000

    .line 60
    invoke-interface {v2, v3, p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mToken:Landroid/os/IBinder;

    .line 66
    const-string p1, "RestrictionPolicy"

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-interface {v2, v3, p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    goto :goto_3

    .line 73
    :catch_0
    const-string p0, "RestrictionPolicy"

    .line 75
    const-string/jumbo p1, "setHomeAndRecentKey was failed"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    return-void
.end method

.method public final setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v5

    .line 9
    const-string/jumbo v0, "setIrisCameraState : "

    .line 12
    const-string v1, "RestrictionPolicy"

    .line 14
    invoke-static {v0, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 21
    const/4 v10, 0x0

    .line 22
    const-string v7, "RESTRICTION"

    .line 24
    const-string/jumbo v11, "iriscameraEnabled"

    .line 27
    move v9, p2

    .line 28
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 31
    move-result v8

    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 34
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v6

    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v7

    .line 44
    const-string/jumbo v1, "iriscameraEnabled"

    .line 47
    const-wide/high16 v2, 0x400000000000000L

    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 53
    return v8
.end method

.method public final setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string/jumbo v2, "setKnoxDelegationEnabled result : "

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 11
    move-result v8

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v4, "setKnoxDelegationEnabled : "

    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    move/from16 v4, p2

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v5, " with userId : "

    .line 27
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const-string v15, "RestrictionPolicy"

    .line 39
    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez v8, :cond_0

    .line 44
    :try_start_0
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v3}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    move-result v5

    .line 57
    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 59
    iget-boolean v7, v1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 61
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/enterprise/utils/KpuHelper;->isUidValidKpu(IIZ)Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 67
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 71
    const-string v10, "RESTRICTION"

    .line 73
    const-string/jumbo v14, "knox_delegation"

    .line 76
    const/4 v13, 0x0

    .line 77
    move/from16 v12, p2

    .line 79
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 82
    move-result v11

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 100
    const-string/jumbo v0, "knox_delegation"

    .line 103
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v9

    .line 109
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    move-result-object v10

    .line 113
    const-wide/high16 v5, -0x8000000000000000L

    .line 115
    const/4 v7, 0x0

    .line 116
    move-object v4, v0

    .line 117
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return v11

    .line 121
    :catch_0
    const-string/jumbo v0, "is EDMStorageProvider running?"

    .line 124
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 128
    return v0
.end method

.method public final setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v0

    .line 11
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string v1, " setLockScreenState : "

    .line 30
    const-string v2, "RestrictionPolicy"

    .line 32
    invoke-static {v1, v2, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    const-string v4, "RESTRICTION"

    .line 41
    const-string/jumbo v8, "lockScreenEnabled"

    .line 44
    const/4 v7, 0x0

    .line 45
    move v6, p2

    .line 46
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 49
    move-result v9

    .line 50
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 52
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v7

    .line 58
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    move-result-object v8

    .line 62
    const-wide/32 v3, 0x800000

    .line 65
    const/4 v5, 0x1

    .line 66
    const-string/jumbo v2, "lockScreenEnabled"

    .line 69
    move v6, v0

    .line 70
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 73
    if-eqz v9, :cond_2

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 78
    move-result-wide v1

    .line 79
    if-eqz p2, :cond_1

    .line 81
    const/16 p0, 0x32

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/16 p0, 0x33

    .line 86
    :goto_0
    :try_start_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p1

    .line 92
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0, p0, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw p0

    .line 108
    :cond_2
    :goto_1
    return v9
.end method

.method public final setLockScreenViewProperty(IZ)Z
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo v0, "kg_multiple_lockscreen"

    .line 15
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v1, "kg_enable_camera_widget"

    .line 28
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 31
    move-result v0

    .line 32
    and-int/2addr p1, v0

    .line 33
    if-nez p2, :cond_2

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    move-result-wide v0

    .line 39
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 41
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.KNOX_FACE_WIDGET_OFF_INTERNAL"

    .line 44
    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v2, "com.android.settings"

    .line 50
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0

    .line 67
    :cond_0
    const/4 v0, 0x2

    .line 68
    and-int/2addr p1, v0

    .line 69
    if-ne p1, v0, :cond_1

    .line 71
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    move-result-object p1

    .line 77
    const-string/jumbo v0, "lock_screen_shortcut"

    .line 80
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    move-result p1

    .line 84
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object p0

    .line 90
    const-string/jumbo v0, "set_shortcuts_mode"

    .line 93
    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    move-result p0

    .line 97
    and-int/2addr p1, p0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 p1, 0x0

    .line 100
    :cond_2
    :goto_0
    return p1
.end method

.method public final setMediator(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 7
    iget-object p1, p1, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 9
    check-cast p1, Ljava/util/HashSet;

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public final setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v8, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v9

    .line 9
    invoke-static {v9}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v15

    .line 13
    const/4 v14, 0x0

    .line 14
    invoke-virtual {v1, v9, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 17
    move-result v0

    .line 18
    const-string v12, "RestrictionPolicy"

    .line 20
    if-eqz v0, :cond_2

    .line 22
    if-nez v8, :cond_2

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v2

    .line 28
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v4, "wake_up_lock_screen"

    .line 37
    invoke-static {v0, v4, v14, v15}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 40
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v0

    .line 46
    const-string/jumbo v4, "voice_input_control"

    .line 49
    invoke-static {v0, v4, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 52
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 64
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const-string/jumbo v4, "com.sec.android.app.voicenote.Controller"

    .line 68
    const-string/jumbo v5, "com.sec.android.app.voicenote.rec_save"

    .line 71
    const-string/jumbo v6, "com.sec.android.app.voicerecorder.rec_save"

    .line 74
    const-string/jumbo v7, "com.samsung.media.save_fmrecording_only"

    .line 77
    if-eqz v0, :cond_0

    .line 79
    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 81
    new-instance v10, Landroid/content/Intent;

    .line 83
    invoke-direct {v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v7, Landroid/os/UserHandle;

    .line 88
    invoke-direct {v7, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 91
    invoke-virtual {v0, v10, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 94
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 96
    new-instance v7, Landroid/content/Intent;

    .line 98
    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v6, Landroid/os/UserHandle;

    .line 103
    invoke-direct {v6, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 106
    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 111
    new-instance v6, Landroid/content/Intent;

    .line 113
    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v5, Landroid/os/UserHandle;

    .line 118
    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 121
    invoke-virtual {v0, v6, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 124
    goto/16 :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto/16 :goto_1

    .line 129
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v0

    .line 144
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_1

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v10

    .line 154
    check-cast v10, Ljava/lang/Integer;

    .line 156
    const-string v11, "TAG"

    .line 158
    new-instance v13, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v14, "IF = FALSE(isValidKnoxId) i:"

    .line 165
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v14, " enable:"

    .line 173
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v13

    .line 183
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v11, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 188
    new-instance v13, Landroid/content/Intent;

    .line 190
    invoke-direct {v13, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v14, Landroid/os/UserHandle;

    .line 195
    move-object/from16 v16, v0

    .line 197
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 200
    move-result v0

    .line 201
    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 204
    invoke-virtual {v11, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 207
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 209
    new-instance v11, Landroid/content/Intent;

    .line 211
    invoke-direct {v11, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v13, Landroid/os/UserHandle;

    .line 216
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 219
    move-result v14

    .line 220
    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 223
    invoke-virtual {v0, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 226
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 228
    new-instance v11, Landroid/content/Intent;

    .line 230
    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v13, Landroid/os/UserHandle;

    .line 235
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 238
    move-result v10

    .line 239
    invoke-direct {v13, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 242
    invoke-virtual {v0, v11, v13, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    move-object/from16 v0, v16

    .line 247
    const/4 v14, 0x0

    .line 248
    goto :goto_0

    .line 249
    :goto_1
    const-string/jumbo v4, "setMicrophoneState Broadcast error "

    .line 252
    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    :cond_1
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    :cond_2
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 263
    iget v4, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 265
    const-string v3, "RESTRICTION"

    .line 267
    const-string/jumbo v7, "microphoneEnabled"

    .line 270
    const/4 v6, 0x0

    .line 271
    move/from16 v5, p2

    .line 273
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 276
    move-result v0

    .line 277
    const/4 v2, 0x0

    .line 278
    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {v1, v9, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 283
    move-result v3

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    const-string v5, ""

    .line 288
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v3

    .line 298
    const-string v4, "/data/system/enterprise.conf"

    .line 300
    const-string/jumbo v5, "microphoneEnabled"

    .line 303
    invoke-static {v5, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 309
    move-result-wide v3

    .line 310
    if-eqz v8, :cond_3

    .line 312
    const/16 v5, 0x26

    .line 314
    goto :goto_3

    .line 315
    :cond_3
    const/16 v5, 0x27

    .line 317
    :goto_3
    :try_start_2
    iget v6, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 319
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    move-result-object v6

    .line 323
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 326
    move-result-object v6

    .line 327
    invoke-static {v15, v5, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    goto :goto_4

    .line 334
    :catchall_0
    move-exception v0

    .line 335
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw v0

    .line 339
    :cond_4
    :goto_4
    iget-object v10, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 341
    iget v3, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    move-result-object v16

    .line 347
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 350
    move-result-object v17

    .line 351
    const-wide/16 v3, 0x4

    .line 353
    const/4 v14, 0x1

    .line 354
    const-string/jumbo v11, "microphoneEnabled"

    .line 357
    move-object v5, v12

    .line 358
    move-wide v12, v3

    .line 359
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 362
    if-eqz v0, :cond_6

    .line 364
    invoke-virtual {v1, v9, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 367
    move-result v2

    .line 368
    if-nez v2, :cond_5

    .line 370
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 372
    const-string/jumbo v3, "g_knox_microphone_allowed=false"

    .line 375
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 378
    goto :goto_5

    .line 379
    :cond_5
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 381
    const-string/jumbo v3, "g_knox_microphone_allowed=true"

    .line 384
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 387
    :goto_5
    iget-object v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 389
    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy/isMicEnabled"

    .line 392
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 395
    move-result-object v2

    .line 396
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 399
    :cond_6
    const-string/jumbo v1, "setMicrophoneState : "

    .line 402
    invoke-static {v1, v5, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 405
    return v0
.end method

.method public final setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v8, p2

    .line 5
    const-string/jumbo v2, "killSettings: RemoteException ex -> "

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    move-result-object v0

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_LOCATION"

    .line 17
    filled-new-array {v4}, [Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    move-result-object v4

    .line 25
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    move-object/from16 v4, p1

    .line 30
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 33
    move-result-object v9

    .line 34
    iget v0, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    move-result v15

    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    move-result-wide v18

    .line 44
    const-string v14, "RestrictionPolicy"

    .line 46
    if-nez v8, :cond_0

    .line 48
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    .line 50
    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {v0, v3}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetMockLocationApps()Z

    .line 58
    move-result v3

    .line 59
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->isSettingPolicyApplied()Z

    .line 70
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-nez v0, :cond_1

    .line 73
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 76
    move-result-object v0

    .line 77
    const-string/jumbo v4, "com.android.settings"

    .line 80
    iget-object v5, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 85
    move-result v5

    .line 86
    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    goto :goto_1

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v0, 0x0

    .line 117
    goto :goto_2

    .line 118
    :cond_0
    const/4 v3, 0x1

    .line 119
    :cond_1
    :goto_1
    move v0, v3

    .line 120
    :goto_2
    if-eqz v0, :cond_2

    .line 122
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 124
    iget v4, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 126
    const/4 v6, 0x0

    .line 127
    const-string v3, "RESTRICTION"

    .line 129
    const-string/jumbo v7, "mockLocationEnabled"

    .line 132
    move/from16 v5, p2

    .line 134
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 137
    move-result v2

    .line 138
    and-int/2addr v0, v2

    .line 139
    iget-object v10, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 141
    iget v1, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v16

    .line 147
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    move-result-object v17

    .line 151
    const-string/jumbo v11, "mockLocationEnabled"

    .line 154
    const-wide v12, 0x80000000000L

    .line 159
    const/4 v1, 0x1

    .line 160
    move-object v2, v14

    .line 161
    move v14, v1

    .line 162
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 165
    goto :goto_3

    .line 166
    :cond_2
    move-object v2, v14

    .line 167
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v3, "setMockLocationState : "

    .line 172
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return v0
.end method

.method public final setMultiSimEnabled(Landroid/telephony/SubscriptionInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 22
    const v1, 0x1040718

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    .line 47
    move-result p1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v3, "setMultiSimEnabled : id : "

    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, " isEmbedded : "

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, " port : "

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v3, " enable : false"

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    const-string v3, "MultiSimPolicy"

    .line 86
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    move-result-wide v2

    .line 93
    const/4 v4, 0x0

    .line 94
    if-eqz v1, :cond_2

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 98
    const-string/jumbo v1, "euicc"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 107
    new-instance v1, Landroid/content/Intent;

    .line 109
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.POC_ESIM"

    .line 112
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 117
    const/high16 v5, 0x4000000

    .line 119
    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 122
    move-result-object p0

    .line 123
    const/4 v1, -0x1

    .line 124
    invoke-virtual {v0, v1, p1, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto :goto_4

    .line 130
    :catch_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0, v0, v4}, Landroid/telephony/SubscriptionManager;->setSubscriptionEnabled(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    goto :goto_3

    .line 143
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    goto :goto_1

    .line 147
    :goto_3
    return-void

    .line 148
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    throw p0
.end method

.method public final setMultiSimPolicy(II[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 78
    const-string v7, "-"

    iget-boolean v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    const-string v8, "MultiSimPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setMultiSimPolicy count : 10000 maxP : "

    const-string v9, " maxE : "

    const-string v10, " mccMncArray : "

    .line 79
    invoke-static {v2, v3, v0, v9, v10}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string v9, ","

    invoke-static {v9, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " numberArray : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " iccIdArray : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " allow : true debug : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 81
    invoke-static {v8, v0, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 82
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->supportEsim()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 83
    const-string/jumbo v0, "setMultiSimPolicy : can not disable pSIM. "

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_1
    const-string/jumbo v0, "isAdminValid : adminUid : "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMultiSimPolicy()Ljava/lang/String;

    move-result-object v9

    .line 85
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    :goto_0
    move v0, v12

    goto :goto_1

    .line 86
    :cond_2
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v9, "uid"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 88
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkMultiSimPolicyPermission(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :goto_1
    if-nez v0, :cond_3

    .line 91
    const-string/jumbo v0, "setMultiSimPolicy : admin is not available."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_3
    array-length v0, v4

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    array-length v0, v4

    if-ne v0, v9, :cond_4

    aget-object v0, v4, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v11, v12

    goto :goto_3

    .line 93
    :cond_5
    :goto_2
    const-string/jumbo v0, "setMultiSimPolicy empty mccMnc policy. allow all."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v9

    .line 94
    :goto_3
    array-length v0, v5

    if-eqz v0, :cond_7

    array-length v0, v5

    if-ne v0, v9, :cond_6

    aget-object v0, v5, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v13, v12

    goto :goto_5

    .line 95
    :cond_7
    :goto_4
    const-string/jumbo v0, "setMultiSimPolicy empty number policy. allow all."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    .line 96
    :goto_5
    array-length v0, v6

    if-eqz v0, :cond_9

    array-length v0, v6

    if-ne v0, v9, :cond_8

    aget-object v0, v6, v12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v14, v12

    goto :goto_7

    .line 97
    :cond_9
    :goto_6
    const-string/jumbo v0, "setMultiSimPolicy empty ICCID policy. allow all."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v9

    .line 98
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 100
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 103
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 104
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 105
    :cond_a
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const/4 v9, 0x1

    goto :goto_8

    .line 106
    :cond_b
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 108
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 109
    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 111
    iget-boolean v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    const-string v12, "active subscription info : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_d
    move-object/from16 v18, v12

    .line 112
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v9

    .line 115
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v2

    .line 116
    iget-boolean v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    move-object/from16 v21, v7

    const-string v7, "activeMccMnc : "

    if-eqz v2, :cond_e

    .line 117
    invoke-static {v7, v12, v8}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_e
    iget-boolean v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v2, :cond_f

    const-string v2, "activeNumber : "

    .line 119
    invoke-static {v2, v3, v8}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_f
    iget-boolean v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    move-object/from16 v22, v7

    const-string v7, "activeIccId : "

    if-eqz v2, :cond_10

    .line 121
    invoke-static {v7, v9, v8}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_10
    iget-boolean v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v2, :cond_11

    const-string v2, "activeNumberInfo : "

    .line 123
    invoke-static {v2, v0, v8}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_11
    array-length v2, v4

    move-object/from16 v23, v7

    move/from16 v24, v15

    const/4 v7, 0x0

    :goto_d
    const-string v15, " / "

    if-ge v7, v2, :cond_15

    aget-object v0, v4, v7

    move/from16 v25, v2

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 127
    :try_start_1
    invoke-virtual {v12, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v26, v0

    .line 128
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_12

    goto :goto_f

    :cond_12
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v25

    goto :goto_d

    .line 129
    :cond_13
    :goto_f
    iget-boolean v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mccMnc match : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v0, 0x1

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    .line 130
    :goto_10
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x1

    if-ge v2, v7, :cond_16

    .line 131
    const-string v0, "activeMccMnc : empty. allow this subscription."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_16
    if-eqz v11, :cond_17

    const/4 v2, 0x1

    goto :goto_11

    :cond_17
    move v2, v0

    .line 132
    :goto_11
    array-length v7, v5

    move/from16 v25, v11

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v7, :cond_1b

    aget-object v0, v5, v11

    move/from16 v26, v7

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 134
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 135
    :try_start_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v27, v0

    .line 136
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_18

    goto :goto_14

    :cond_18
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v26

    goto :goto_12

    .line 137
    :cond_19
    :goto_14
    iget-boolean v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "number match : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x1

    goto :goto_15

    :cond_1b
    const/4 v0, 0x0

    :goto_15
    if-eqz v3, :cond_1d

    .line 138
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_16

    :cond_1c
    const/4 v7, 0x0

    goto :goto_17

    .line 139
    :cond_1d
    :goto_16
    const-string v0, "activeNumber : empty. allow this subscription."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_17
    if-eqz v13, :cond_1e

    move-object/from16 v26, v3

    const/4 v11, 0x1

    goto :goto_18

    :cond_1e
    move v11, v0

    move-object/from16 v26, v3

    .line 140
    :goto_18
    array-length v3, v6

    move-object/from16 v27, v12

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v3, :cond_22

    aget-object v0, v6, v12

    move/from16 v28, v3

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 143
    :try_start_3
    invoke-virtual {v9, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1a

    :catch_3
    move-exception v0

    move-object/from16 v29, v0

    .line 144
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_1f

    goto :goto_1b

    :cond_1f
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v28

    goto :goto_19

    .line 145
    :cond_20
    :goto_1b
    iget-boolean v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "iccId match : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v0, 0x1

    goto :goto_1c

    :cond_22
    const/4 v0, 0x0

    :goto_1c
    if-eqz v9, :cond_23

    .line 146
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 147
    :cond_23
    const-string v0, "activeIccId : empty. allow this subscription."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_24
    if-eqz v14, :cond_25

    const/4 v0, 0x1

    .line 148
    :cond_25
    const-string/jumbo v3, "match? : "

    .line 149
    invoke-static {v3, v2, v15, v11, v15}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    invoke-static {v8, v3, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v2, :cond_26

    if-eqz v11, :cond_26

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_1d

    :cond_26
    const/4 v0, 0x1

    :goto_1d
    if-nez v0, :cond_27

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->supportEsim()Z

    move-result v2

    if-nez v2, :cond_27

    if-eqz v7, :cond_27

    if-nez v13, :cond_27

    add-int/lit8 v15, v24, 0x1

    .line 152
    const-string/jumbo v2, "empty number. disableCount : "

    .line 153
    invoke-static {v15, v2, v8}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_27
    move/from16 v15, v24

    :goto_1e
    if-eqz v0, :cond_2e

    .line 154
    const-string/jumbo v0, "setMultiSimPolicy policy : "

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_4
    array-length v0, v4

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_28

    aget-object v3, v4, v2

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MCC/MNC : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v11, v21

    :try_start_5
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v11

    move/from16 v0, v24

    goto :goto_1f

    :catch_4
    move-exception v0

    goto :goto_20

    :catch_5
    move-exception v0

    move-object/from16 v11, v21

    goto :goto_20

    :cond_28
    move-object/from16 v11, v21

    goto :goto_21

    .line 157
    :goto_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :goto_21
    :try_start_6
    array-length v0, v5

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v0, :cond_29

    aget-object v12, v5, v7

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number  : ***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v28, v0

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, p3

    move/from16 v0, v28

    goto :goto_22

    :catch_6
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    :cond_29
    :try_start_7
    array-length v0, v6

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v0, :cond_2a

    aget-object v3, v6, v2

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ICCID  : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v28, v0

    const/4 v7, 0x0

    const/4 v12, 0x3

    invoke-virtual {v3, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v28

    goto :goto_23

    :catch_7
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :cond_2a
    const-string/jumbo v0, "setMultiSimPolicy actual values : "

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_24

    :catch_8
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :goto_24
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeNumber : ***"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_25

    :catch_9
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    :goto_25
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_b
    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_27

    :catch_a
    move-exception v0

    goto :goto_26

    :catch_b
    move-exception v0

    const/4 v2, 0x0

    .line 170
    :goto_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_27
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    if-nez v0, :cond_2b

    .line 172
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v0, v15, 0x1

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "disableCount "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->supportEsim()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 175
    const-string/jumbo v7, "ro.multisim.simslotcount"

    const/4 v9, 0x1

    invoke-static {v7, v9}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 176
    const-string/jumbo v2, "getSimSlotCount "

    .line 177
    invoke-static {v12, v2, v8}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-lt v0, v12, :cond_2d

    .line 178
    const-string/jumbo v12, "can not disable pSIM. disableCount : "

    const-string v9, "  getSimSlotCount() : "

    .line 179
    invoke-static {v0, v12, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v9, 0x1

    .line 180
    invoke-static {v7, v9}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_2c
    const/4 v9, 0x1

    .line 183
    :cond_2d
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setMultiSimEnabled(Landroid/telephony/SubscriptionInfo;)V

    move v15, v0

    goto :goto_28

    :cond_2e
    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v11, v21

    const/4 v9, 0x1

    .line 184
    :goto_28
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 185
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-ltz v0, :cond_31

    add-int/lit8 v0, v17, 0x1

    move/from16 v2, p2

    if-le v0, v2, :cond_30

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setMultiSimPolicy maxE : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setMultiSimEnabled(Landroid/telephony/SubscriptionInfo;)V

    :cond_2f
    :goto_29
    move/from16 v7, p1

    goto :goto_2a

    :cond_30
    move/from16 v7, p1

    move/from16 v17, v0

    goto :goto_2a

    :cond_31
    move/from16 v2, p2

    goto :goto_29

    :cond_32
    move/from16 v2, p2

    .line 188
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    add-int/lit8 v0, v16, 0x1

    move/from16 v7, p1

    if-le v0, v7, :cond_34

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setMultiSimPolicy maxP : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_33

    .line 191
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_33
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setMultiSimEnabled(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_2a

    :cond_34
    move/from16 v16, v0

    :goto_2a
    add-int v0, v17, v16

    const/16 v12, 0x2710

    if-le v0, v12, :cond_36

    .line 193
    const-string/jumbo v0, "setMultiSimPolicy count : 10000"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_35

    .line 195
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_35
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setMultiSimEnabled(Landroid/telephony/SubscriptionInfo;)V

    :cond_36
    move-object/from16 v4, p3

    move-object v9, v3

    move-object/from16 v12, v18

    move v3, v2

    move v2, v7

    move-object v7, v11

    move/from16 v11, v25

    goto/16 :goto_b

    :cond_37
    move/from16 v7, p1

    move-object v3, v9

    move/from16 v25, v11

    const/4 v4, 0x2

    .line 197
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->adjustPreferredSim(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_39

    if-lt v7, v4, :cond_38

    if-eqz v13, :cond_38

    if-eqz v14, :cond_38

    if-nez v25, :cond_39

    :cond_38
    const/4 v0, 0x0

    .line 198
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->adjustPreferredSim(Ljava/util/List;)Z

    :cond_39
    return-void
.end method

.method public final setMultiSimPolicy(Lcom/samsung/android/knox/ContextInfo;II[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    const-string/jumbo v2, "knox_multisim_policy"

    .line 2
    const-string v3, "MultiSimPolicy"

    const-string/jumbo v0, "checkMultiSimPolicyPermission uid -1"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 4
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const v7, 0x186a0

    .line 5
    rem-int/2addr v0, v7

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    mul-int/2addr v8, v7

    add-int/2addr v8, v0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "checkMultiSimPolicyPermission enforceRestrictionPermission uid "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 9
    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 11
    array-length v11, v7

    move v12, v6

    :goto_0
    if-ge v12, v11, :cond_1

    aget-object v13, v7, v12

    if-eqz v13, :cond_0

    .line 12
    const-string/jumbo v14, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    invoke-virtual {v0, v14, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 13
    const-string/jumbo v13, "checkPermission RESTRICTION_PERMISSION returns true"

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 14
    :cond_0
    const-string/jumbo v0, "checkPermission RESTRICTION_PERMISSION returns false"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 17
    const-string v7, ""

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    move v8, v5

    goto/16 :goto_8

    .line 20
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ro.organization_owned"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMultiSimPolicyPermission organizationOwnedDevice "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 23
    :cond_2
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid$6(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDevicePolicyManager$2()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 25
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v6

    .line 26
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDevicePolicyManager$2()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 27
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v6

    .line 28
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkMultiSimPolicyPermission isDeviceOwner "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkMultiSimPolicyPermission isProfileOwner "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_6

    if-nez v0, :cond_6

    goto/16 :goto_1

    .line 30
    :cond_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    const-string/jumbo v0, "checkMultiSimPolicyPermission returns true "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 32
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 33
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 34
    :goto_7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw v0

    :catch_2
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :goto_8
    if-ne v8, v5, :cond_7

    return-void

    .line 37
    :cond_7
    const-string v0, ".*"

    if-nez p4, :cond_8

    .line 38
    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v6

    goto :goto_9

    :cond_8
    move-object/from16 v5, p4

    :goto_9
    if-nez p5, :cond_9

    .line 39
    new-array v7, v4, [Ljava/lang/String;

    aput-object v0, v7, v6

    goto :goto_a

    :cond_9
    move-object/from16 v7, p5

    :goto_a
    if-nez p6, :cond_a

    .line 40
    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v6

    move-object v9, v4

    goto :goto_b

    :cond_a
    move-object/from16 v9, p6

    .line 41
    :goto_b
    const-string/jumbo v0, "writeMultiSimPolicy uid "

    .line 42
    invoke-static {v8, v0, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string/jumbo v4, "uid"

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v4, "maxP"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move/from16 v8, p2

    :try_start_6
    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v4, "maxE"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v10, p3

    :try_start_7
    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 48
    array-length v11, v5

    move v12, v6

    :goto_c
    if-ge v12, v11, :cond_b

    aget-object v13, v5, v12

    .line 49
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 50
    const-string/jumbo v15, "mccMnc"

    invoke-virtual {v14, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_10

    .line 52
    :cond_b
    const-string/jumbo v11, "mccMncArray"

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 54
    array-length v11, v7

    move v12, v6

    :goto_d
    if-ge v12, v11, :cond_c

    aget-object v13, v7, v12

    .line 55
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string/jumbo v15, "number"

    invoke-virtual {v14, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 58
    :cond_c
    const-string/jumbo v11, "numberArray"

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 60
    array-length v11, v9

    :goto_e
    if-ge v6, v11, :cond_d

    aget-object v12, v9, v6

    .line 61
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 62
    const-string/jumbo v14, "iccId"

    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 64
    :cond_d
    const-string/jumbo v6, "iccIdArray"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-boolean v4, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "policy json string "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_e
    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 69
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_11

    :catch_4
    move-exception v0

    :goto_f
    move/from16 v10, p3

    goto :goto_10

    :catch_5
    move-exception v0

    move/from16 v8, p2

    goto :goto_f

    .line 71
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v5

    move-object v5, v7

    move-object v6, v9

    .line 72
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setMultiSimPolicy(II[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 28
    move-result v5

    .line 29
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    const/4 v10, 0x0

    .line 34
    const-string v7, "RESTRICTION"

    .line 36
    const-string/jumbo v11, "blockNonTrustedApp"

    .line 39
    move v9, p2

    .line 40
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 43
    move-result v8

    .line 44
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 46
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v6

    .line 52
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v7

    .line 56
    const-string/jumbo v1, "blockNonTrustedApp"

    .line 59
    const-wide/32 v2, 0x400000

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 66
    return v8
.end method

.method public final setSafeModeProperty(Z)V
    .locals 8

    .line 1
    const-string/jumbo v0, "safe_boot_disallowed"

    .line 4
    const-string v1, "RestrictionPolicy"

    .line 6
    const-string/jumbo v2, "setSafeModeProperty() : already applied. = "

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v6

    .line 20
    invoke-static {v6, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    move-result v6

    .line 24
    if-eqz p1, :cond_0

    .line 26
    if-nez v6, :cond_1

    .line 28
    :cond_0
    const/4 v7, 0x1

    .line 29
    if-nez p1, :cond_2

    .line 31
    if-eq v6, v7, :cond_2

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object p0

    .line 39
    xor-int/lit8 v2, p1, 0x1

    .line 41
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    goto :goto_2

    .line 69
    :catch_1
    move-exception p0

    .line 70
    move v5, v7

    .line 71
    :goto_1
    :try_start_2
    const-string/jumbo v0, "setSafeModeProperty() failed."

    .line 74
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    move v7, v5

    .line 81
    :goto_2
    if-nez v7, :cond_3

    .line 83
    const-string/jumbo p0, "setSafeModeProperty() failed, allow = "

    .line 86
    invoke-static {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :cond_3
    return-void

    .line 90
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw p0
.end method

.method public final setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p2

    .line 5
    const-string v8, ""

    .line 7
    const-string/jumbo v9, "setScreenCapture : enable="

    .line 10
    const-string/jumbo v1, "setScreenCapture: enable="

    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 16
    move-result-object v10

    .line 17
    iget v2, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 19
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result v11

    .line 23
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 35
    move-result v2

    .line 36
    const-string v12, " callingUid="

    .line 38
    const-string v13, "RestrictionPolicy"

    .line 40
    const/4 v14, 0x1

    .line 41
    const/4 v15, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 44
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    :try_start_0
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    invoke-virtual {v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 56
    move-result v2

    .line 57
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 62
    move-result-object v2

    .line 63
    const-string/jumbo v3, "device_policy"

    .line 66
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_0

    .line 76
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    xor-int/lit8 v5, v7, 0x1

    .line 84
    invoke-interface {v3, v2, v4, v5, v15}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    invoke-virtual {v0, v11, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    .line 113
    move-result v1

    .line 114
    xor-int/2addr v1, v14

    .line 115
    invoke-virtual {v0, v11, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    goto/16 :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    move v14, v15

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    move v14, v15

    .line 126
    goto/16 :goto_4

    .line 128
    :goto_0
    const-string/jumbo v1, "setScreenCapture failed : result "

    .line 131
    invoke-static {v0, v1, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    goto/16 :goto_4

    .line 136
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 139
    move-result-wide v16

    .line 140
    :try_start_2
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 142
    iget v3, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 144
    const-string v2, "RESTRICTION"

    .line 146
    const-string/jumbo v6, "screenCaptureEnabled"

    .line 149
    const/4 v5, 0x0

    .line 150
    move/from16 v4, p2

    .line 152
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 155
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 156
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v3, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 176
    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 181
    const-string/jumbo v19, "screenCaptureEnabled"

    .line 184
    iget v3, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 186
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 189
    move-result v23

    .line 190
    iget v3, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v24

    .line 196
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    move-result-object v25

    .line 200
    const-wide v20, 0x10000000000L

    .line 205
    const/16 v22, 0x1

    .line 207
    move-object/from16 v18, v2

    .line 209
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 212
    if-eqz v1, :cond_2

    .line 214
    iget v2, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 216
    if-nez v2, :cond_2

    .line 218
    const-string/jumbo v2, "screenCaptureEnabled"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v10, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 229
    move-result v4

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v3

    .line 237
    const-string v4, "/data/system/enterprise.conf"

    .line 239
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    goto :goto_1

    .line 243
    :catch_2
    move v15, v1

    .line 244
    goto :goto_2

    .line 245
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {v0, v11, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    .line 250
    move-result v2

    .line 251
    xor-int/2addr v2, v14

    .line 252
    invoke-virtual {v0, v11, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 255
    :cond_3
    move v14, v1

    .line 256
    goto :goto_3

    .line 257
    :catch_3
    :goto_2
    const-string/jumbo v0, "setScreenCapture error"

    .line 260
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move v14, v15

    .line 264
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    :goto_4
    return v14
.end method

.method public final setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM$23()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 32
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez v2, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v2, "setSdCardState : "

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    const-string v2, "RestrictionPolicy"

    .line 57
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    move-result-wide v3

    .line 64
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 66
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 68
    const-string v6, "RESTRICTION"

    .line 70
    const-string/jumbo v10, "sdCardEnabled"

    .line 73
    const/4 v9, 0x0

    .line 74
    move v8, p2

    .line 75
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 78
    move-result v1

    .line 79
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 81
    const-string/jumbo v6, "sdCardEnabled"

    .line 84
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v11

    .line 90
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object v12

    .line 94
    const/4 v9, 0x1

    .line 95
    const/4 v10, 0x0

    .line 96
    const-wide v7, 0x800000000000L

    .line 101
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 104
    if-nez p2, :cond_1

    .line 106
    const-string v5, "SdCard unmount : "

    .line 108
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_2

    .line 117
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    .line 120
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    if-eqz v2, :cond_2

    .line 123
    const/4 v5, 0x1

    .line 124
    :try_start_2
    invoke-interface {p0, v2, v5, v0}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception p0

    .line 129
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 136
    :cond_2
    :goto_0
    move v0, v1

    .line 137
    :catch_1
    if-eqz v0, :cond_4

    .line 139
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 142
    move-result v8

    .line 143
    if-eqz p2, :cond_3

    .line 145
    const-string p0, "Admin %d has enabled access to external SDCard."

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const-string p0, "Admin %d has disabled access to external SDCard."

    .line 150
    :goto_1
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object p2

    .line 156
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 159
    move-result-object p2

    .line 160
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    move-result-object v10

    .line 164
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 166
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 169
    move-result v11

    .line 170
    const/4 v7, 0x1

    .line 171
    const-string v9, "RestrictionPolicy"

    .line 173
    const/4 v5, 0x5

    .line 174
    const/4 v6, 0x1

    .line 175
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 178
    :cond_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    return v0

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw p0
.end method

.method public final setSettingsChangeSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setSettingsChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "RestrictionPolicy"

    .line 23
    const-string/jumbo p2, "setSettingsChangeSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setStatusBarExpansionSystemUI(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v2, "setStatusBarExpansionSystemUI() package(UID) : "

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v2, 0x0

    .line 24
    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, "("

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    move-result v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, ")"

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    const-string v3, "RestrictionPolicy"

    .line 52
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    move-result-wide v4

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 64
    move-result-object p0

    .line 65
    aget-object v0, v0, v2

    .line 67
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setStatusBarExpansionAllowedAsUser(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception p0

    .line 77
    :try_start_1
    const-string/jumbo p1, "setStatusBarExpansionSystemUI() failed. "

    .line 80
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    goto :goto_0

    .line 84
    :goto_1
    return-void

    .line 85
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0
.end method

.method public final setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 12
    move-result p0

    .line 13
    const-string/jumbo p1, "setTethering : "

    .line 16
    const-string v2, "RestrictionPolicy"

    .line 18
    invoke-static {p1, v2, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    if-eqz v0, :cond_0

    .line 23
    if-eqz v1, :cond_0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public final setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    const-string v0, "0"

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v1

    .line 11
    if-nez p2, :cond_0

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v3

    .line 19
    const-string v4, "adb_enabled"

    .line 21
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v3

    .line 30
    const-string v4, "adb_wifi_enabled"

    .line 32
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 39
    :goto_1
    if-eqz v0, :cond_1

    .line 41
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v4, "RESTRICTION"

    .line 48
    const-string/jumbo v8, "usbDebuggingEnabled"

    .line 51
    move v6, p2

    .line 52
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 55
    move-result v3

    .line 56
    and-int/2addr v0, v3

    .line 57
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 59
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v9

    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object v10

    .line 69
    const-string/jumbo v4, "usbDebuggingEnabled"

    .line 72
    const-wide v5, 0x20000000000L

    .line 77
    const/4 v7, 0x1

    .line 78
    const/4 v8, 0x0

    .line 79
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 82
    :cond_1
    if-eqz v0, :cond_3

    .line 84
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 87
    move-result v6

    .line 88
    if-eqz p2, :cond_2

    .line 90
    const-string p0, "Admin %d has enabled USB debugging."

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    const-string p0, "Admin %d has disabled USB debugging."

    .line 95
    :goto_2
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v3

    .line 101
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 111
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 114
    move-result v9

    .line 115
    const/4 v3, 0x5

    .line 116
    const/4 v4, 0x1

    .line 117
    const/4 v5, 0x1

    .line 118
    const-string v7, "RestrictionPolicy"

    .line 120
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 123
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo p1, "setUSBDebugging : "

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    const-string p1, "RestrictionPolicy"

    .line 140
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    return v0
.end method

.method public final setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    const-string v0, "Usb Exception mask input DB : "

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "setUsbExceptionList. exception mask : 0x"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "RestrictionPolicy"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    move-result-wide v3

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 33
    const-string/jumbo v5, "usb"

    .line 36
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 42
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isSupportDexRestrict()Z

    .line 45
    move-result v1

    .line 46
    const/4 v5, 0x0

    .line 47
    if-nez v1, :cond_0

    .line 49
    const-string/jumbo p0, "isSupportDexRestrict is false"

    .line 52
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    return v5

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 67
    move-result-object p1

    .line 68
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 70
    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    .line 75
    move-result v1

    .line 76
    if-le p2, v1, :cond_1

    .line 78
    const-string p0, "Exception mask is over max value. Max : 131071(USBInterface.OFF)"

    .line 80
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v5

    .line 84
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbInterfaceExceptionMaskInDb(II)Z

    .line 87
    move-result p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    .line 106
    move-result p2

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    return p1

    .line 111
    :catch_0
    move-exception p0

    .line 112
    const-string p1, "UsbInterface Exception mask insert fail"

    .line 114
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    return v5

    .line 118
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    throw p0
.end method

.method public final setUsbExceptionListOnDriver(I)I
    .locals 9

    .line 1
    const-string v0, "Usb Exception mask input USB Driver : "

    .line 3
    const-string/jumbo v1, "set UsbInterface Exception : "

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v2

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 12
    const-string/jumbo v5, "usb"

    .line 15
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroid/hardware/usb/UsbManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v5, -0x1

    .line 22
    const-string v6, "RestrictionPolicy"

    .line 24
    if-nez v4, :cond_0

    .line 26
    :try_start_1
    const-string p0, "UsbManager is null"

    .line 28
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return v5

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_2

    .line 38
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isSupportDexRestrict()Z

    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_1

    .line 44
    const-string/jumbo p0, "isSupportDexRestrict is false"

    .line 47
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return v5

    .line 54
    :cond_1
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    :try_start_3
    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_6

    .line 62
    const/4 p0, 0x1

    .line 63
    if-eq p1, v5, :cond_4

    .line 65
    sget-object v5, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 67
    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    .line 70
    move-result v5

    .line 71
    if-ne p1, v5, :cond_2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget-object v5, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 76
    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    .line 79
    move-result v7

    .line 80
    if-ne p1, v7, :cond_3

    .line 82
    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v4, p0, p1}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    .line 89
    move-result p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionList(I)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v4, p0, p1}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    .line 113
    move-result p1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v4, v8, p1}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    .line 124
    move-result p1

    .line 125
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    if-nez p1, :cond_5

    .line 132
    move v8, p0

    .line 133
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    return p1

    .line 147
    :cond_6
    :try_start_4
    const-string/jumbo p0, "isUsbHostStorageAllowed is false. pass set UsbInterface Exception"

    .line 150
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    return v5

    .line 157
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw p0
.end method

.method public final setUsbKiesAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final setUsbMassStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v3, "RESTRICTION"

    .line 16
    const-string/jumbo v7, "usbMediaPlayerEnabled"

    .line 19
    move v5, p2

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 26
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v9

    .line 32
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object v10

    .line 36
    const-string/jumbo v4, "usbMediaPlayerEnabled"

    .line 39
    const-wide/high16 v5, 0x2000000000000L

    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 46
    const-string v3, "RestrictionPolicy"

    .line 48
    if-eqz v2, :cond_0

    .line 50
    if-nez p2, :cond_0

    .line 52
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    .line 54
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    .line 57
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const/high16 v5, 0x20000000

    .line 62
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    new-instance v4, Landroid/content/Intent;

    .line 72
    const-string v6, "android.hardware.usb.action.USB_STATE"

    .line 74
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    const-string/jumbo v5, "mtp"

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const-string/jumbo v5, "unlocked"

    .line 90
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const-string/jumbo v5, "ptp"

    .line 96
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 101
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 103
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    const-string p0, "Error in RestrictionPolicy after setting MTP policy"

    .line 109
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v4, "setUSBMediaPlayerAvailability: "

    .line 117
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v2, :cond_2

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 135
    move-result v7

    .line 136
    if-eqz p2, :cond_1

    .line 138
    const-string p0, "Admin %d has enabled USB Media Player (MTP)."

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    const-string p0, "Admin %d has disabled USB Media Player (MTP)."

    .line 143
    :goto_1
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object p2

    .line 149
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 152
    move-result-object p2

    .line 153
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    move-result-object v9

    .line 157
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 159
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 162
    move-result v10

    .line 163
    const/4 v4, 0x5

    .line 164
    const/4 v5, 0x1

    .line 165
    const/4 v6, 0x1

    .line 166
    const-string v8, "RestrictionPolicy"

    .line 168
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 171
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    return v2
.end method

.method public final setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v0

    .line 9
    if-nez p2, :cond_0

    .line 11
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 13
    const-string/jumbo v3, "usb"

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 22
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    .line 25
    move-result-wide v2

    .line 26
    const-wide/16 v4, 0x20

    .line 28
    and-long/2addr v2, v4

    .line 29
    const-wide/16 v4, 0x0

    .line 31
    cmp-long v2, v2, v4

    .line 33
    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 37
    const-class v3, Landroid/net/TetheringManager;

    .line 39
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/net/TetheringManager;

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v2, v3}, Landroid/net/TetheringManager;->stopTethering(I)V

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 53
    const/4 v8, 0x0

    .line 54
    const-string v5, "RESTRICTION"

    .line 56
    const-string/jumbo v9, "usbTetheringEnabled"

    .line 59
    move v7, p2

    .line 60
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 63
    move-result v2

    .line 64
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 66
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v9

    .line 72
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    move-result-object v10

    .line 76
    const-string/jumbo v4, "usbTetheringEnabled"

    .line 79
    const-wide v5, 0x2000000000L

    .line 84
    const/4 v7, 0x1

    .line 85
    const/4 v8, 0x0

    .line 86
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 89
    const-string/jumbo p0, "setUsbTethering : "

    .line 92
    const-string v3, "RestrictionPolicy"

    .line 94
    invoke-static {p0, v3, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    if-eqz v2, :cond_2

    .line 99
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 102
    move-result v7

    .line 103
    if-eqz p2, :cond_1

    .line 105
    const-string p0, "Admin %d has enabled USB Tethering setting."

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const-string p0, "Admin %d has disabled USB Tethering setting."

    .line 110
    :goto_0
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object p2

    .line 116
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 119
    move-result-object p2

    .line 120
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v9

    .line 124
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 126
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 129
    move-result v10

    .line 130
    const/4 v4, 0x5

    .line 131
    const/4 v5, 0x1

    .line 132
    const/4 v6, 0x1

    .line 133
    const-string v8, "RestrictionPolicy"

    .line 135
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 138
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    return v2
.end method

.method public final setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setUseSecureKeypad : "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "RestrictionPolicy"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v2, "setUseSecureKeypad containerID : "

    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter$5()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 48
    move-result-object v0

    .line 49
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 51
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSamsungWorkspace(I)Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 62
    const-string/jumbo p0, "setUseSecureKeypad fails. PO not supported."

    .line 65
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 74
    const-string v1, "RESTRICTION"

    .line 76
    const-string/jumbo v5, "useSecureKeypad"

    .line 79
    const/4 v4, 0x0

    .line 80
    move v3, p2

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 84
    move-result v0

    .line 85
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 88
    move-result v6

    .line 89
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 91
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v7

    .line 97
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    move-result-object v8

    .line 101
    const-wide/32 v3, 0x200000

    .line 104
    const/4 v5, 0x0

    .line 105
    const-string/jumbo v2, "useSecureKeypad"

    .line 108
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 111
    return v0
.end method

.method public final setWifiDirectUserRestriction(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setWifiDirectUserRestriction - value = "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    .line 10
    const-string/jumbo v3, "no_wifi_direct"

    .line 13
    invoke-virtual {p0, v3, p1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    .line 16
    const-string p0, "RestrictionPolicy"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    throw p0
.end method

.method public final setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setWifiTethering - caller uid: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", enable: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "RestrictionPolicy"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v3, "RESTRICTION"

    .line 42
    const-string/jumbo v7, "wifiTetheringEnabled"

    .line 45
    move v5, p2

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 52
    const-string/jumbo p0, "setWifiTethering - fail to store value to database"

    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v0

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 61
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v8

    .line 67
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    move-result-object v9

    .line 71
    const-string/jumbo v3, "wifiTetheringEnabled"

    .line 74
    const-wide v4, 0x4000000000L

    .line 79
    const/4 v6, 0x1

    .line 80
    const/4 v7, 0x0

    .line 81
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 87
    move-result-wide v0

    .line 88
    :try_start_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 90
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 93
    move-result v2

    .line 94
    if-eqz p2, :cond_1

    .line 96
    const/16 p2, 0x37

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/16 p2, 0x38

    .line 101
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object p1

    .line 107
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    invoke-static {v2, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 118
    move-result p2

    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringAllowedSystemUI(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 129
    move-result p1

    .line 130
    const/4 p2, 0x1

    .line 131
    xor-int/2addr p1, p2

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringUserRestriction(Z)V

    .line 135
    return p2

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw p0
.end method

.method public final setWifiTetheringAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "RestrictionPolicy"

    .line 23
    const-string/jumbo p2, "setWifiTetheringAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setWifiTetheringUserRestriction(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setWifiTetheringUserRestriction - value = "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    .line 10
    const-string/jumbo v3, "no_wifi_tethering"

    .line 13
    invoke-virtual {p0, v3, p1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    .line 16
    const-string p0, "RestrictionPolicy"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    throw p0
.end method

.method public final showRestrictionToast(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public final showToastIfIntelligenceOnlineProcessingDisallowed(I)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    goto/16 :goto_4

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 26
    iget-object v4, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v5

    .line 32
    check-cast v4, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    const-string v5, "RestrictionPolicy"

    .line 40
    if-nez v4, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v2, "no admin data present for userId "

    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 63
    move-result-object p1

    .line 64
    goto/16 :goto_3

    .line 66
    :cond_1
    iget-object v4, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v6

    .line 72
    check-cast v4, Ljava/util/HashMap;

    .line 74
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/util/Map;

    .line 80
    const-wide v6, 0x200000000000L

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    move-result-object v6

    .line 89
    const/4 v7, 0x0

    .line 90
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/util/Set;

    .line 96
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v4

    .line 100
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_4

    .line 106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Ljava/lang/Integer;

    .line 112
    iget-object v7, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 114
    check-cast v7, Ljava/util/HashMap;

    .line 116
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Ljava/lang/String;

    .line 122
    if-nez v7, :cond_2

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 128
    move-result-wide v8

    .line 129
    :try_start_0
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 131
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 134
    move-result v6

    .line 135
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    move-result v6

    .line 139
    invoke-virtual {v10, v7, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 142
    move-result-object v6

    .line 143
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 145
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 148
    move-result-object v6

    .line 149
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 152
    move-result-object v6

    .line 153
    if-eqz v6, :cond_3

    .line 155
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 158
    move-result v10

    .line 159
    if-nez v10, :cond_3

    .line 161
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    goto :goto_1

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    goto :goto_2

    .line 167
    :cond_3
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    goto :goto_0

    .line 171
    :catch_0
    :try_start_1
    const-string v6, "Admin(%s) app label not found for user %d"

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v10

    .line 177
    filled-new-array {v7, v10}, [Ljava/lang/Object;

    .line 180
    move-result-object v7

    .line 181
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    move-result-object v6

    .line 185
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_1

    .line 189
    :catch_1
    const-string v6, "Package(%s) name not found for user %d"

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v10

    .line 195
    filled-new-array {v7, v10}, [Ljava/lang/Object;

    .line 198
    move-result-object v7

    .line 199
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    move-result-object v6

    .line 203
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    goto :goto_1

    .line 207
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    throw p0

    .line 211
    :cond_4
    move-object p1, v2

    .line 212
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v2, "getIntelligenceOnlineProcessingAdminsListAsUser: "

    .line 217
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v0

    .line 227
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_5

    .line 236
    return v1

    .line 237
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 240
    move-result v0

    .line 241
    const/4 v2, 0x1

    .line 242
    if-ne v0, v2, :cond_6

    .line 244
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 246
    const v0, 0x1040c36

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 252
    move-result-object p0

    .line 253
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    move-result-object p1

    .line 257
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 260
    move-result-object p1

    .line 261
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    move-result-object p0

    .line 265
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 268
    goto :goto_5

    .line 269
    :cond_6
    const p0, 0x1040d74

    .line 272
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 275
    :goto_5
    return v2
.end method

.method public final storeRestrictionsValuesByKC()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    new-instance v1, Ljava/util/StringJoiner;

    .line 8
    const-string v2, ";"

    .line 10
    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 15
    check-cast v2, Landroid/util/ArraySet;

    .line 17
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v2, "value"

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Landroid/content/ContentValues;

    .line 49
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 52
    const-string/jumbo v2, "name"

    .line 55
    const-string/jumbo v3, "userRestrictionsSetByKc"

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    const-string/jumbo v2, "generic"

    .line 66
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 69
    return-void
.end method

.method public final supportEsim()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "supportEsim "

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object p0

    .line 10
    const-string v1, "android.hardware.telephony.euicc"

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 15
    move-result p0

    .line 16
    const-string v1, "MultiSimPolicy"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final systemReady()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->load(I)V

    .line 2
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    new-instance v0, Landroid/util/ArraySet;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "userRestrictionsSetByKc"

    .line 10
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "generic"

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "RestrictionPolicy"

    if-nez v3, :cond_2

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Restrictions Aplied by KC: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 15
    :cond_2
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 17
    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->KC_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adminName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_INFO"

    const-string v3, "adminUid"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 20
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 21
    const-class p0, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 22
    const-string/jumbo p0, "systemReady()"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final systemReady(I)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "systemReady() : mCurrentPhase = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->registerSubscriptionCallback()V

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x226

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 29
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result p1

    .line 30
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbDriverExceptionList()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    goto :goto_0

    .line 32
    :cond_2
    const-class p1, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;

    :cond_3
    :goto_0
    return-void
.end method

.method public final turnOffAirPlaneMode()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v2, "connectivity"

    .line 10
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    :try_start_1
    const-string p0, "RestrictionPolicy"

    .line 28
    const-string/jumbo v2, "turnOffAirPlaneMode() failed. "

    .line 31
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    return-void

    .line 36
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    throw p0
.end method

.method public final updateNonMarketAppOnUserManager()V
    .locals 6

    .line 1
    const-string v0, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX will be set as "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    const-string v3, "RestrictionPolicy"

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result v5

    .line 19
    xor-int/lit8 v5, v5, 0x1

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    .line 33
    const-string/jumbo v4, "no_non_market_app_by_knox"

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 39
    move-result p0

    .line 40
    xor-int/lit8 p0, p0, 0x1

    .line 42
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 44
    invoke-virtual {v3, v4, p0, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 56
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public final updateRestrictionCacheForWpcod()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "RestrictionPolicy"

    .line 5
    const-string/jumbo v2, "updateRestrictionCacheForWpcod() called.."

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v2

    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    move-result v3

    .line 19
    if-ne v2, v3, :cond_0

    .line 21
    :try_start_0
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 23
    const-string v5, "backupEnabled"

    .line 25
    const/4 v8, 0x1

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    const-wide v6, 0x100000000000L

    .line 34
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 37
    iget-object v12, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 39
    const-string/jumbo v13, "clipboardEnabled"

    .line 42
    const/16 v16, 0x1

    .line 44
    const/16 v17, 0x0

    .line 46
    const/16 v18, 0x0

    .line 48
    const/16 v19, 0x0

    .line 50
    const-wide/16 v14, 0x200

    .line 52
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 55
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 57
    const-string/jumbo v3, "factoryresetallowed"

    .line 60
    const/4 v6, 0x1

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const-wide/high16 v4, 0x8000000000000L

    .line 66
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 69
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 71
    const-string v11, "allowClipboardShare"

    .line 73
    const/4 v14, 0x1

    .line 74
    const/4 v15, 0x0

    .line 75
    const/16 v16, 0x0

    .line 77
    const/16 v17, 0x0

    .line 79
    const-wide/32 v12, 0x20000

    .line 82
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 85
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 87
    const-string v3, "allowGoogleAccountsAutoSync"

    .line 89
    const/4 v6, 0x1

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    const-wide/32 v4, 0x2000000

    .line 96
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 99
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 101
    const-string/jumbo v3, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    .line 104
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    move-result-object v3

    .line 108
    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 111
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 113
    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    .line 116
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    move-result-object v2

    .line 120
    invoke-static {v0, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 123
    const-string v0, "/efs/MDM/FactoryReset"

    .line 125
    const/4 v2, 0x1

    .line 126
    invoke-static {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v3, "updateRestrictionCacheForWpcod() error: "

    .line 139
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 148
    const-string v1, "Can only be called by system user"

    .line 150
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v0
.end method

.method public final updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "updateScreenCaptureDisabledInWindowManager() userId = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, ", disabled = "

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string p2, "RestrictionPolicy"

    .line 26
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 31
    const-string/jumbo p1, "content://com.sec.knox.provider/RestrictionPolicy3/isScreenCaptureEnabled"

    .line 34
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 41
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 44
    move-result-object p0

    .line 45
    new-instance p1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda1;

    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method public final updateSystemUIMonitor$7(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSettingsChangeSystemUI(IZ)V

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAirplaneModeAllowedSystemUI(IZ)V

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularDataAllowedSystemUI(IZ)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringAllowedSystemUI(IZ)V

    .line 38
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 40
    const-wide v2, 0x1000000000L

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    .line 49
    move-result v1

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCameraAllowedSystemUI(IZ)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V

    .line 60
    return-void
.end method

.method public final updateUsbInterfaceExceptionMaskInDb(II)Z
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "adminUid"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    const-string v3, "RESTRICTION"

    .line 19
    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 22
    move-result v1

    .line 23
    new-instance v4, Landroid/content/ContentValues;

    .line 25
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p1

    .line 32
    const-string v5, "UsbExceptionMask"

    .line 34
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    if-lez v1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 55
    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 58
    move-result p0

    .line 59
    return p0
.end method

.method public final updateUsbStorageStatebyIntent(Z)Z
    .locals 8

    .line 1
    const-string v0, "RestrictionPolicy"

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    .line 10
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    .line 13
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v5, "reason"

    .line 19
    const/4 v6, 0x1

    .line 20
    xor-int/lit8 v7, p1, 0x1

    .line 22
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    move v3, v6

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    :try_start_1
    const-string/jumbo v4, "updateUsbStorageStatebyIntent() fas failed."

    .line 41
    invoke-static {v0, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v1, "updateUsbStorageStatebyIntent() allow = "

    .line 52
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, ", ret = "

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v3

    .line 74
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw p0
.end method

.method public final updateUserRestrictionsByKC(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_USERS"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result p2

    .line 24
    iget v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKcUid:I

    .line 26
    if-ne p2, v0, :cond_3

    .line 28
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 30
    check-cast p2, Landroid/util/ArraySet;

    .line 32
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->storeRestrictionsValuesByKC()V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 41
    check-cast p2, Landroid/util/ArraySet;

    .line 43
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 49
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserRestrictionEnforcedByKC:Ljava/util/Set;

    .line 51
    check-cast p2, Landroid/util/ArraySet;

    .line 53
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->storeRestrictionsValuesByKC()V

    .line 59
    :cond_3
    :goto_0
    return-void
.end method
