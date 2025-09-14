.class public final Lcom/android/server/enterprise/security/PasswordPolicy;
.super Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# static fields
.field public static final BIOMETRIC_AUTHENTICATION_TYPES:[I


# instance fields
.field public final mBroadCastReceiver:Lcom/android/server/enterprise/security/PasswordPolicy$4;

.field public final mCallersWhitelist:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

.field public mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field public mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field public final mPM:Landroid/os/PowerManager;

.field public final mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

.field public final mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

.field public final mReceiver:Lcom/android/server/enterprise/security/PasswordPolicy$4;

.field public final mService:Landroid/app/admin/IDevicePolicyManager;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mTelManager:Landroid/telephony/TelephonyManager;

.field public final mToken:Landroid/os/IBinder;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    filled-new-array {v0, v1}, [I

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/enterprise/security/PasswordPolicy;->BIOMETRIC_AUTHENTICATION_TYPES:[I

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;-><init>()V

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 12
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$1;

    .line 14
    invoke-direct {v2, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    .line 17
    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mCallersWhitelist:Ljava/util/List;

    .line 19
    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 21
    new-instance v2, Landroid/os/Binder;

    .line 23
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mToken:Landroid/os/IBinder;

    .line 28
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$4;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    .line 34
    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 36
    new-instance v5, Lcom/android/server/enterprise/security/PasswordPolicy$4;

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v5, p0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    .line 42
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 44
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    const-string/jumbo v0, "device_policy"

    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 72
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 74
    const-string/jumbo v0, "user"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/os/UserManager;

    .line 83
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 85
    const-string/jumbo v1, "power"

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/os/PowerManager;

    .line 94
    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPM:Landroid/os/PowerManager;

    .line 96
    sget-object v1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 98
    const-class v3, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 100
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 106
    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 108
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    .line 111
    const-string v3, "android.intent.action.PHONE_STATE"

    .line 113
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    .line 116
    const-string v6, "android.intent.action.USER_STARTED"

    .line 118
    const-string v7, "android.intent.action.USER_SWITCHED"

    .line 120
    invoke-static {v1, v3, v4, v6, v7}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 123
    move-result-object v7

    .line 124
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 126
    const/4 v8, 0x0

    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v10, 0x2

    .line 129
    move-object v4, p1

    .line 130
    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    .line 135
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 138
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    const/4 v3, 0x2

    .line 142
    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 145
    const-string/jumbo v1, "phone"

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 154
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 156
    new-instance p1, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;

    .line 158
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    .line 161
    const-class v1, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 163
    invoke-static {v1, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 166
    sget-object p1, Lcom/android/server/enterprise/security/PasswordPolicyCache;->INSTANCE:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    .line 168
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    .line 170
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 173
    move-result-object p1

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object p1

    .line 178
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 190
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    .line 192
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 197
    move-result v2

    .line 198
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicyCache;->setChangeRequestedAsUser(II)V

    .line 201
    goto :goto_0

    .line 202
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;

    .line 204
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    .line 207
    return-void
.end method

.method public static getPersonaManagerAdapter$6()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
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


# virtual methods
.method public final ChooseNewPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 13

    .line 1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    const-string/jumbo v2, "passwordOwnerHistory"

    .line 18
    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v3, -0x1

    .line 23
    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_6

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    const-string v5, ","

    .line 38
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    array-length v6, v1

    .line 43
    const/4 v7, 0x0

    .line 44
    move v8, v7

    .line 45
    :goto_0
    if-ge v8, v6, :cond_0

    .line 47
    aget-object v9, v1, v8

    .line 49
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    move-result v9

    .line 53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v8, v8, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v1

    .line 67
    const/4 v6, 0x1

    .line 68
    sub-int/2addr v1, v6

    .line 69
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v1

    .line 76
    sub-int/2addr v1, v6

    .line 77
    move v8, v7

    .line 78
    :goto_1
    if-ltz v1, :cond_3

    .line 80
    if-nez v8, :cond_3

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v9

    .line 86
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_2

    .line 92
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v10

    .line 96
    check-cast v10, Ljava/lang/Integer;

    .line 98
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 101
    move-result v11

    .line 102
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v12

    .line 106
    check-cast v12, Ljava/lang/Integer;

    .line 108
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v12

    .line 112
    if-ne v11, v12, :cond_1

    .line 114
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 117
    move-result v3

    .line 118
    move v8, v6

    .line 119
    :cond_2
    if-nez v8, :cond_3

    .line 121
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 124
    add-int/lit8 v1, v1, -0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    move-result v0

    .line 131
    const-string/jumbo v1, "passwordPatternOwner"

    .line 134
    if-nez v0, :cond_5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object v4

    .line 145
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_4

    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Ljava/lang/Integer;

    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 165
    move-result v8

    .line 166
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    goto :goto_2

    .line 180
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 183
    move-result v4

    .line 184
    sub-int/2addr v4, v6

    .line 185
    invoke-virtual {v0, v7, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 191
    invoke-virtual {v4, p1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 194
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 196
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 203
    goto :goto_3

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 206
    const/4 v4, 0x0

    .line 207
    invoke-virtual {v0, p1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 210
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 212
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 215
    :cond_6
    :goto_3
    return v3
.end method

.method public final addRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 20
    const-string v3, "PASSWORD"

    .line 22
    const-string/jumbo v4, "passwordRequiredPattern"

    .line 25
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    const-string/jumbo v1, "|"

    .line 34
    invoke-static {v0, v1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    :cond_1
    move-object v5, p2

    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 43
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 45
    const-string v3, "PASSWORD"

    .line 47
    const-string/jumbo v4, "passwordRequiredPattern"

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final changePasswordAsUser(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUserInternal(I)V

    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setHomeAndRecentKey(I)V

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUserInternal(I)V

    .line 14
    :goto_0
    return-void
.end method

.method public final changePasswordAsUserInternal(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(I)V

    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 16
    move-result v0

    .line 17
    if-ne v0, p1, :cond_2

    .line 19
    new-instance v0, Landroid/os/UserHandle;

    .line 21
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 30
    new-instance p1, Landroid/content/Intent;

    .line 32
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 35
    const-string/jumbo v1, "com.android.settings.password.ChooseLockGeneric"

    .line 38
    const-string/jumbo v2, "com.android.settings"

    .line 41
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v1, 0x10000000

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x400000

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    const/high16 v1, 0x800000

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "lockscreen.password_isenforced"

    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    .line 77
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :goto_0
    const-string p1, "PasswordPolicy"

    .line 88
    const-string/jumbo v0, "handled expected Exception in changePasswordAsUser()."

    .line 91
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_2
    :goto_1
    return-void
.end method

.method public final checkPackageCallerOrEnforceSystemUser()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string v1, "android.uid.system:1000"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mCallersWhitelist:Ljava/util/List;

    .line 28
    check-cast p0, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    move-result p0

    .line 41
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 44
    move-result v0

    .line 45
    const/16 v1, 0x1482

    .line 47
    if-ne v0, v1, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 53
    move-result p0

    .line 54
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 57
    move-result v0

    .line 58
    if-ne p0, v0, :cond_3

    .line 60
    :goto_0
    return-void

    .line 61
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 63
    const-string v0, "Can only be called by system user"

    .line 65
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0
.end method

.method public final clearResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 15
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;

    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;I)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    move-object v0, p0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final deleteAllRestrictions(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 11
    const-string v3, "PASSWORD"

    .line 13
    const-string/jumbo v4, "passwordRequiredPattern"

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 26
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 28
    const-string/jumbo v5, "passwordRequiredPattern"

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v4, "PASSWORD"

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    .line 43
    move-result v1

    .line 44
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 46
    if-ne v1, v2, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Lcom/samsung/android/knox/ContextInfo;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x1

    .line 57
    :cond_2
    :goto_0
    return v0
.end method

.method public final enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$26()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

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
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final enforcePwdChangeForUser(II)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    const-string v0, "Enforce password change policy applied for user %d by %d"

    .line 15
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    .line 35
    move-result p1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 42
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(I)V

    .line 45
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return v2

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 59
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 61
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 63
    invoke-virtual {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->postPwdChangeNotificationForDeviceOwner(I)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    .line 73
    move-result p1

    .line 74
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 77
    move-result v3

    .line 78
    if-nez p1, :cond_3

    .line 80
    const/4 p1, 0x3

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 84
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 86
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 92
    if-eq p2, v3, :cond_1

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const/4 p1, -0x4

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 106
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 112
    if-eq p2, v3, :cond_4

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const/4 p1, -0x2

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_3

    .line 124
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "Exception during password enforcement: "

    .line 128
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    const-string v2, "PasswordPolicy"

    .line 144
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const/4 v2, 0x0

    .line 151
    :goto_3
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    return v2
.end method

.method public final enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$26()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

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

.method public final excludeExternalStorageForFailedPasswordsWipe(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$26()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

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
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    const-string v2, "PASSWORD"

    .line 35
    const-string/jumbo v6, "excludeExternalStorageWipe"

    .line 38
    const/4 v5, 0x0

    .line 39
    move v4, p2

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 49
    move-result p1

    .line 50
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 52
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 54
    const/4 v3, 0x4

    .line 55
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 64
    :cond_0
    return p2
.end method

.method public final getAllOneLockedChildUsers(I)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v1

    .line 15
    const-string/jumbo v3, "userHandle "

    .line 18
    const-string v4, "PasswordPolicy"

    .line 20
    invoke-static {p1, v3, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 25
    const-string/jumbo v5, "user"

    .line 28
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/os/UserManager;

    .line 34
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 44
    const-string/jumbo p1, "getAllOneLockedChildUsers - isManagedProfile() true return empty locked users"

    .line 47
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_4

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    .line 65
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object p1

    .line 78
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 90
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_1

    .line 96
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 98
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 101
    move-result v6

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string/jumbo v8, "hasSeparateChallenge"

    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 120
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-nez v6, :cond_1

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string v7, "addding userid to onelock users array "

    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v6

    .line 144
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    goto :goto_0

    .line 157
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 159
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    goto :goto_3

    .line 166
    :goto_2
    :try_start_2
    const-string/jumbo v3, "getAllOneLockedChildUsers() failed. "

    .line 169
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 174
    goto :goto_1

    .line 175
    :goto_3
    return-object v0

    .line 176
    :goto_4
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw p1
.end method

.method public final getCurrentFailedPasswordAttempts(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 18
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$26()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

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
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    const/4 v0, -0x1

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 34
    if-eqz v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 38
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;

    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    move-object v0, p0

    .line 52
    check-cast v0, Ljava/lang/Integer;

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result p0

    .line 58
    return p0
.end method

.method public final getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const-string/jumbo v2, "passwordPatternOwner"

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v2

    .line 46
    if-ne v2, v0, :cond_0

    .line 48
    return v0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    .line 52
    move-result p0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p0, -0x1

    .line 55
    :goto_0
    return p0
.end method

.method public final getEDM$26()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 7
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    return-object p0
.end method

.method public final getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string v1, "android.uid.system:1000"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const-string v2, " "

    .line 35
    const-string/jumbo v3, "passwordForbiddenStrings"

    .line 38
    const-string v4, "PASSWORD"

    .line 40
    if-eqz p2, :cond_4

    .line 42
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    invoke-virtual {p1, v0, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p2

    .line 58
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 64
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 70
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v0

    .line 76
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 79
    move-result-object v0

    .line 80
    move-object v5, p1

    .line 81
    check-cast v5, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 92
    move-result p0

    .line 93
    if-lez p0, :cond_3

    .line 95
    new-instance p0, Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object p1

    .line 104
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_2

    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 125
    move-result-object p2

    .line 126
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    return-object p0

    .line 134
    :cond_3
    return-object v1

    .line 135
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 137
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 139
    const/4 p2, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_5

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    .line 148
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 155
    move-result-object p0

    .line 156
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    return-object p1

    .line 160
    :cond_5
    return-object v1
.end method

.method public final getKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 18
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;

    .line 20
    const/4 v2, 0x5

    .line 21
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I
    .locals 1

    .line 1
    const-string p1, "PasswordPolicy"

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    const-string/jumbo v0, "keyguardDisabledFeatures"

    .line 8
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string/jumbo p2, "getKeyguardDisabledFeatures() failed"

    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    const/4 p0, 0x0

    .line 28
    :goto_0
    const-string/jumbo p2, "getKeyguardDisabledFeatures() "

    .line 31
    invoke-static {p0, p2, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    return p0
.end method

.method public final getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "PASSWORD"

    .line 10
    const-string/jumbo v3, "passwordMaximumCharacterOccurences"

    .line 13
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/Integer;

    .line 39
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v4

    .line 45
    invoke-virtual {v5, v1, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 57
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/Integer;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result p1

    .line 73
    if-nez v1, :cond_2

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    if-eqz p1, :cond_1

    .line 78
    if-le v1, p1, :cond_1

    .line 80
    :goto_2
    move v1, p1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    return v1
.end method

.method public final getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 9
    const-string v3, "PASSWORD"

    .line 11
    const-string/jumbo v4, "passwordMaximumCharacterSequenceLength"

    .line 14
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 40
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p0

    .line 60
    const/4 p1, 0x0

    .line 61
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v0

    .line 77
    if-nez p1, :cond_2

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    if-eqz v0, :cond_1

    .line 82
    if-le p1, v0, :cond_1

    .line 84
    :goto_2
    move p1, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return p1
.end method

.method public final getMaximumFailedPasswordsForDisable(I)I
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v1, 0x0

    .line 4
    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordAttemptDeviceDisable"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    const-string/jumbo v4, "ro.organization_owned"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 9
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 11
    invoke-virtual {v5, v1, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_1

    if-le v1, p1, :cond_1

    :goto_2
    move v1, p1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    move-result p0

    return p0
.end method

.method public final getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 18
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;

    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "PASSWORD"

    .line 10
    const-string/jumbo v3, "passwordMaximumNumericSequenceLength"

    .line 13
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/Integer;

    .line 39
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v4

    .line 45
    invoke-virtual {v5, v1, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 57
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/Integer;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result p1

    .line 73
    if-nez v1, :cond_2

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    if-eqz p1, :cond_1

    .line 78
    if-le v1, p1, :cond_1

    .line 80
    :goto_2
    move v1, p1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    return v1
.end method

.method public final getMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J
    .locals 3

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 19
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    move-object v0, p0

    .line 33
    check-cast v0, Ljava/lang/Long;

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    move-result-wide p0

    .line 39
    return-wide p0
.end method

.method public final getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 9
    const-string v3, "PASSWORD"

    .line 11
    const-string/jumbo v4, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    .line 14
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 40
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p0

    .line 60
    const/4 p1, 0x0

    .line 61
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v0

    .line 77
    if-nez p1, :cond_2

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    if-eqz v0, :cond_1

    .line 82
    if-ge p1, v0, :cond_1

    .line 84
    :goto_2
    move p1, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return p1
.end method

.method public final getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 9
    const-string v3, "PASSWORD"

    .line 11
    const-string/jumbo v4, "passwordChangeTimeout"

    .line 14
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 40
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p0

    .line 60
    const/4 p1, -0x1

    .line 61
    move v0, p1

    .line 62
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v2

    .line 78
    if-gez v2, :cond_2

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    if-eq v0, p1, :cond_3

    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result v2

    .line 87
    if-ge v2, v0, :cond_1

    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v0

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    if-gtz v0, :cond_5

    .line 96
    const/4 v0, 0x0

    .line 97
    :cond_5
    return v0
.end method

.method public final getPasswordExpiration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordExpiration failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v2

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    move-result p1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {p0, p2, p1, v3}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    .line 30
    move-result-wide p0

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 50
    move-result-wide p0

    .line 51
    return-wide p0
.end method

.method public final getPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J
    .locals 5

    .line 1
    const-string/jumbo v0, "getPasswordExpirationTimeout failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    move-result p1

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-interface {p0, p2, p1, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    .line 26
    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_2
    return-wide v2
.end method

.method public final getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordHistoryLength failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordLockDelay(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    const-string v1, "PASSWORD"

    const-string/jumbo v2, "unlockDelay"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6
    invoke-virtual {v5, v4, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, -0x1

    move v0, p1

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eq v0, p1, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    return p1
.end method

.method public final getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 12
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(I)I

    move-result p0

    return p0
.end method

.method public final getPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordMinimumLength failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordMinimumLetters failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordMinimumLowerCase failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 15
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordMinimumNonLetter failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordMinimumNumeric failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordMinimumSymbols failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getPasswordMinimumUpperCase failed "

    .line 4
    const-string v1, "PasswordPolicy"

    .line 6
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p2, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, p0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 18
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string v1, "android.uid.system:1000"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 51
    const-string/jumbo v4, "passwordRequiredPattern"

    .line 54
    const-string v5, "PASSWORD"

    .line 56
    if-eqz v3, :cond_1

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/Integer;

    .line 64
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result v3

    .line 70
    invoke-virtual {v6, v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v0

    .line 82
    const/4 v2, 0x0

    .line 83
    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_2

    .line 91
    return-object v2

    .line 92
    :cond_2
    const/4 p0, 0x0

    .line 93
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/lang/String;

    .line 99
    return-object p0

    .line 100
    :cond_3
    if-eqz p2, :cond_5

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    .line 105
    move-result p2

    .line 106
    const/4 v0, -0x1

    .line 107
    if-eq p2, v0, :cond_4

    .line 109
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 113
    invoke-virtual {p0, p2, p1, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_4
    return-object v2

    .line 119
    :cond_5
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 121
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 123
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 125
    invoke-virtual {p0, p2, p1, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method public final getRestrictedKeyCodes()Ljava/util/Set;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 5
    move-result p0

    .line 6
    if-lez p0, :cond_0

    .line 8
    new-instance p0, Ljava/util/HashSet;

    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x3e9

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0xbb

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 38
    return-object p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PasswordPolicy"

    .line 3
    return-object p0
.end method

.method public final getSupportedBiometricAuthentications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const-string v0, "android.hardware.fingerprint"

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p0

    .line 27
    const-string v0, "Fingerprint"

    .line 29
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    const/4 p0, 0x4

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    const-string v0, "Face"

    .line 39
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p1
.end method

.method public final hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 7
    move-result p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p0, :cond_7

    .line 11
    const/16 v0, 0x10

    .line 13
    if-lt p0, v0, :cond_0

    .line 15
    goto/16 :goto_3

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "\\w(?=\\w{"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ",})"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 43
    move-result-object v0

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_7

    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 67
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 70
    move-result v3

    .line 71
    sub-int/2addr v3, v2

    .line 72
    const/4 v4, 0x1

    .line 73
    if-nez v3, :cond_3

    .line 75
    move v3, p1

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    if-lez v3, :cond_4

    .line 79
    move v3, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const/4 v3, -0x1

    .line 82
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v6, p0, 0x5

    .line 86
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    const-string v6, "\\Q"

    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    move v6, p1

    .line 98
    :goto_2
    if-ge v6, p0, :cond_6

    .line 100
    add-int/2addr v2, v3

    .line 101
    int-to-char v2, v2

    .line 102
    add-int v7, v1, v6

    .line 104
    add-int/2addr v7, v4

    .line 105
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    .line 108
    move-result v7

    .line 109
    invoke-static {v7}, Ljava/lang/Character;->isAlphabetic(I)Z

    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_1

    .line 115
    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_5

    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v6, v6, 0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    const-string v2, "\\E"

    .line 130
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int v2, v1, p0

    .line 135
    add-int/2addr v2, v4

    .line 136
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_1

    .line 150
    return v4

    .line 151
    :cond_7
    :goto_3
    return p1
.end method

.method public final hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_2

    .line 11
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 24
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    move-result v1

    .line 40
    if-lez v1, :cond_1

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    return v0

    .line 49
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 7
    move-result p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p0, :cond_5

    .line 11
    const/16 v0, 0x10

    .line 13
    if-lt p0, v0, :cond_0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "\\d(?=\\d{"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ",})"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    move-result-object v0

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_5

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 56
    move-result v2

    .line 57
    add-int/lit8 v3, v1, 0x1

    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 62
    move-result v3

    .line 63
    sub-int/2addr v3, v2

    .line 64
    const/4 v4, 0x1

    .line 65
    if-nez v3, :cond_2

    .line 67
    move v3, p1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-lez v3, :cond_3

    .line 71
    move v3, v4

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 v3, -0x1

    .line 74
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v6, p0, 0x5

    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    const-string v6, "\\Q"

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    move v6, p1

    .line 90
    :goto_1
    if-ge v6, p0, :cond_4

    .line 92
    add-int/2addr v2, v3

    .line 93
    int-to-char v2, v2

    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v6, v6, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const-string v2, "\\E"

    .line 102
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int v2, v1, p0

    .line 107
    add-int/2addr v2, v4

    .line 108
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_1

    .line 122
    return v4

    .line 123
    :cond_5
    :goto_2
    return p1
.end method

.method public final hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 7
    goto/16 :goto_5

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 15
    goto/16 :goto_5

    .line 17
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 20
    move-result p1

    .line 21
    const/4 v1, 0x1

    .line 22
    add-int/2addr p1, v1

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 26
    move-result v2

    .line 27
    add-int/2addr v2, v1

    .line 28
    const/4 v3, 0x2

    .line 29
    new-array v3, v3, [I

    .line 31
    aput v2, v3, v1

    .line 33
    aput p1, v3, v0

    .line 35
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [[I

    .line 43
    move v2, v0

    .line 44
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 47
    move-result v3

    .line 48
    if-gt v2, v3, :cond_2

    .line 50
    aget-object v3, p1, v2

    .line 52
    aput v2, v3, v0

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v2, v0

    .line 58
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 61
    move-result v3

    .line 62
    if-gt v2, v3, :cond_3

    .line 64
    aget-object v3, p1, v0

    .line 66
    aput v2, v3, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v2, v1

    .line 72
    :goto_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 75
    move-result v3

    .line 76
    if-gt v2, v3, :cond_6

    .line 78
    move v3, v1

    .line 79
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 82
    move-result v4

    .line 83
    if-gt v3, v4, :cond_5

    .line 85
    aget-object v4, p1, v2

    .line 87
    add-int/lit8 v5, v2, -0x1

    .line 89
    aget-object v6, p1, v5

    .line 91
    aget v6, v6, v3

    .line 93
    add-int/2addr v6, v1

    .line 94
    add-int/lit8 v7, v3, -0x1

    .line 96
    aget v8, v4, v7

    .line 98
    add-int/2addr v8, v1

    .line 99
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result v6

    .line 103
    aget-object v8, p1, v5

    .line 105
    aget v8, v8, v7

    .line 107
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    .line 110
    move-result v5

    .line 111
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    .line 114
    move-result v7

    .line 115
    if-ne v5, v7, :cond_4

    .line 117
    move v5, v0

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    move v5, v1

    .line 120
    :goto_4
    add-int/2addr v8, v5

    .line 121
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 124
    move-result v5

    .line 125
    aput v5, v4, v3

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 136
    move-result p3

    .line 137
    aget-object p1, p1, p3

    .line 139
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 142
    move-result p2

    .line 143
    aget p1, p1, p2

    .line 145
    if-ge p1, p0, :cond_7

    .line 147
    return v1

    .line 148
    :cond_7
    :goto_5
    return v0
.end method

.method public final hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    .line 7
    move-result p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 20
    move-result-object p2

    .line 21
    array-length v1, p2

    .line 22
    move v2, p1

    .line 23
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    aget-char v3, p2, v2

    .line 27
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v4, :cond_2

    .line 38
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v4

    .line 52
    if-ne v4, p0, :cond_1

    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, " : "

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    const-string p1, "PasswordPolicy"

    .line 76
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v5

    .line 80
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 83
    move-result-object v3

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 97
    move-result-object v3

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    :goto_2
    return p1
.end method

.method public final hasPassword(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 11
    const-string v0, "android"

    .line 13
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 19
    return v1

    .line 20
    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    .line 28
    move-result p0

    .line 29
    if-lez p0, :cond_2

    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_2
    return v1
.end method

.method public final isActivePasswordSufficient(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 15
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    move-object v0, p0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isBiometricAuthenticationEnabledAsUser(II)Z
    .locals 10

    .line 1
    const-string v0, ", userId = "

    .line 3
    const-string v1, "PasswordPolicy"

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne p2, v2, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-eqz p2, :cond_b

    .line 12
    if-gez p2, :cond_1

    .line 14
    goto/16 :goto_4

    .line 16
    :cond_1
    move v4, p2

    .line 17
    :goto_0
    rem-int/lit8 v5, v4, 0x2

    .line 19
    if-nez v5, :cond_2

    .line 21
    div-int/lit8 v4, v4, 0x2

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-ne v4, v2, :cond_b

    .line 26
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 28
    const-string v5, "PASSWORD"

    .line 30
    const-string/jumbo v6, "passwordBioAuthEnabled"

    .line 33
    invoke-virtual {v4, v3, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v7

    .line 47
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_3

    .line 53
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Ljava/lang/Integer;

    .line 59
    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v8

    .line 65
    invoke-virtual {v9, v3, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v4

    .line 77
    move v5, v3

    .line 78
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_6

    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/Integer;

    .line 90
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v7

    .line 94
    if-gez v7, :cond_4

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v5

    .line 101
    and-int/2addr v5, p2

    .line 102
    if-eq v5, p2, :cond_5

    .line 104
    const-string/jumbo p0, "isBiometricAuthenticationEnabledAsUser(): disallowed, "

    .line 107
    invoke-static {p2, p1, p0, v0, v1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v3

    .line 111
    :cond_5
    move v5, v2

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    if-eqz v5, :cond_7

    .line 115
    const-string/jumbo p0, "isBiometricAuthenticationEnabledAsUser: return true (hasValue) "

    .line 118
    invoke-static {p2, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return v2

    .line 122
    :cond_7
    if-ne p2, v2, :cond_8

    .line 124
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 126
    check-cast v3, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_8

    .line 137
    return v2

    .line 138
    :cond_8
    const/4 v3, 0x2

    .line 139
    if-ne p2, v3, :cond_9

    .line 141
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 143
    check-cast v3, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_9

    .line 154
    return v2

    .line 155
    :cond_9
    const/4 v3, 0x4

    .line 156
    if-ne p2, v3, :cond_a

    .line 158
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 160
    check-cast p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 168
    move-result p0

    .line 169
    if-nez p0, :cond_a

    .line 171
    const-string/jumbo p0, "isBiometricAuthenticationEnabledAsUser(FACE): return true "

    .line 174
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    .line 178
    :cond_a
    const-string/jumbo p0, "isBiometricAuthenticationEnabledAsUser(): allowed as default, "

    .line 181
    invoke-static {p2, p1, p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return v2

    .line 185
    :cond_b
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v2, "isBiometricAuthenticationEnabledAsUser: bioAuth is wrong value : "

    .line 190
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object p0

    .line 206
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v3
.end method

.method public final isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I
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
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 14
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 16
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object v0

    .line 36
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 44
    const-string v1, ":"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 49
    move-result v1

    .line 50
    const/4 v2, -0x1

    .line 51
    if-eq v1, v2, :cond_2

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    :cond_2
    const-string v1, "android.uid.systemui"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 69
    move-result v0

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 73
    move-result v1

    .line 74
    if-ne v0, v1, :cond_4

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 78
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda46;

    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/Integer;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result p1

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 99
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 102
    move-result p1

    .line 103
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 106
    move-result p0

    .line 107
    return p0
.end method

.method public final isChangeRequestedAsUser(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isChangeRequestedAsUserFromDb(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v0, "passwordChangeRequested"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isChangeRequestedForInner()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isClearLockAllowed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 3
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 18
    const-string v0, "PasswordPolicy"

    .line 20
    const-string/jumbo v1, "isClearLockAllowed - true"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final isExternalStorageForFailedPasswordsWipeExcluded(I)Z
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4
    const-string v1, "PASSWORD"

    const-string/jumbo v2, "excludeExternalStorageWipe"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 7
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_1

    .line 12
    const-string p0, "PasswordPolicy"

    const-string/jumbo p1, "isExternalStorageForFailedPasswordsWipeExcluded() : no admin enforce password policy. "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(I)Z

    move-result p0

    return p0
.end method

.method public final isKeyCodeInputAllowed(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    const/16 v0, 0xbb

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    const/16 v0, 0x3e9

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    return v1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 18
    move-result p0

    .line 19
    if-gtz p0, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, p1

    .line 23
    :goto_0
    return v1
.end method

.method public final isMDMDisabledFP(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "PASSWORD"

    .line 6
    const-string/jumbo v2, "passwordBioAuthEnabled"

    .line 9
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v1

    .line 33
    if-gez v1, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result p1

    .line 40
    const/4 v1, 0x1

    .line 41
    and-int/2addr p1, v1

    .line 42
    if-eq p1, v1, :cond_0

    .line 44
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 48
    const-string p0, "PasswordPolicy"

    .line 50
    const-string/jumbo p1, "isMDMDisabledFP: disallowed fingerprint."

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_3
    return v0
.end method

.method public final isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "isMultifactorAuthenticationEnabled is called for user : "

    .line 8
    const-string v2, ", caller uid - "

    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v1

    .line 14
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    const-string v2, "PasswordPolicy"

    .line 18
    invoke-static {v1, p1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    const-string p1, "PASSWORD"

    .line 25
    const-string/jumbo v1, "multifactorAuthEnabled"

    .line 28
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 54
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public final isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 22
    move-result v0

    .line 23
    :cond_0
    return v0
.end method

.method public final isPasswordTableExist(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "PASSWORD"

    .line 10
    const-string/jumbo v2, "passwordBioAuthEnabled"

    .line 13
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 23
    return p0
.end method

.method public final isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isPasswordVisibilityEnabledAsUser(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v1, "PASSWORD"

    .line 5
    const-string/jumbo v2, "passwordVisibilityEnabled"

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 34
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 52
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 p1, 0x1

    .line 72
    :goto_1
    return p1
.end method

.method public final isPersona(I)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 5
    check-cast p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final isResetPasswordTokenActive(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 15
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;I)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    move-object v0, p0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final isScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isScreenLockPatternVisibilityEnabledAsUser(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v1, "PASSWORD"

    .line 5
    const-string/jumbo v2, "screenLockPatternVisibility"

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 34
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 52
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 p1, 0x1

    .line 72
    :goto_1
    return p1
.end method

.method public final lock(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 16
    move-result v1

    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 20
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 22
    invoke-interface {v3, v4}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 25
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v3, :cond_1

    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v4, "lock is called for user : "

    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, ", ownerUid - "

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    const-string v4, "PasswordPolicy"

    .line 61
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 66
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 69
    move-result v3

    .line 70
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p1

    .line 76
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    const/16 v4, 0x30

    .line 82
    invoke-static {v3, v4, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 85
    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V

    .line 89
    new-instance v3, Landroid/os/Bundle;

    .line 91
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v4, "android.intent.extra.user_handle"

    .line 96
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v0, "knox.container.proxy.EXTRA_CONTAINER_OWNER"

    .line 102
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 107
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;

    .line 109
    const/4 v1, 0x1

    .line 110
    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Landroid/os/Bundle;

    .line 122
    const-string v0, "android.intent.extra.RETURN_RESULT"

    .line 124
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_2

    .line 130
    return p1

    .line 131
    :cond_2
    return v2
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result p1

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->updateSystemUIMonitor$9(I)V

    .line 20
    :cond_0
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final postPwdResetEventToPersona(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ge v0, v2, :cond_0

    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 15
    move-result v3

    .line 16
    if-lt v3, v2, :cond_1

    .line 18
    move v1, v2

    .line 19
    :cond_1
    if-eqz v0, :cond_2

    .line 21
    if-eqz v1, :cond_2

    .line 23
    const-string p0, "PasswordPolicy"

    .line 25
    const-string/jumbo p1, "postPwdResetEventToPersona :: Already enforced request pending..."

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 32
    :cond_2
    const-string v0, "android.intent.extra.user_handle"

    .line 34
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 40
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda36;

    .line 42
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda36;-><init>(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    const-string v0, "Enforce Password Change requested for user "

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 68
    const-string/jumbo p0, "dar"

    .line 71
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcom/android/server/knox/dar/DarManagerService;

    .line 77
    return-void
.end method

.method public final reboot(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p1

    .line 9
    const-string/jumbo v0, "reboot() called, userId = "

    .line 12
    const-string v1, "PasswordPolicy"

    .line 14
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v2

    .line 26
    const/4 p1, 0x0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPM:Landroid/os/PowerManager;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_4

    .line 38
    :catch_0
    move-exception p2

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    const-string/jumbo p2, "failed talking with power manager"

    .line 43
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 48
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    goto :goto_3

    .line 55
    :goto_2
    :try_start_1
    const-string/jumbo v0, "reboot() has failed. "

    .line 58
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 63
    goto :goto_1

    .line 64
    :goto_3
    if-eqz p1, :cond_1

    .line 66
    const p0, 0x10401a2

    .line 69
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 72
    :cond_1
    return-void

    .line 73
    :goto_4
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p1
.end method

.method public final removeOwnerFromStack(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const-string/jumbo v2, "passwordOwnerHistory"

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_3

    .line 16
    const-string v3, ","

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    array-length v5, v1

    .line 28
    const/4 v6, 0x0

    .line 29
    move v7, v6

    .line 30
    :goto_0
    if-ge v7, v5, :cond_1

    .line 32
    aget-object v8, v1, v7

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    move-result v8

    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v9

    .line 42
    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    if-eq v8, v10, :cond_0

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 77
    const/4 p1, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v1, 0x1

    .line 80
    invoke-static {v1, v6, p1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    :goto_1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 86
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 89
    :cond_3
    return-void
.end method

.method public final resetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/SecurityException;

    .line 3
    const-string/jumbo p1, "resetPassword is deprecated, use resetPasswordWithToken()"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final resetPasswordWithToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 15
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;

    .line 17
    move-object v2, v0

    .line 18
    move-object v3, p0

    .line 19
    move-object v5, p2

    .line 20
    move-object v6, p3

    .line 21
    move-object v7, p4

    .line 22
    move v8, p5

    .line 23
    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Ljava/lang/String;[BI)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    move-object v0, p0

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final setAdminLockEnabledSystemUI(IZZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_5

    .line 3
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter$6()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter$6()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 36
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 44
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v0

    .line 52
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 64
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 71
    move-result v1

    .line 72
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter$6()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 87
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter$6()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_1

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 104
    invoke-interface {v2, v1}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 107
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    if-eqz v1, :cond_1

    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 118
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_3

    .line 124
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter$6()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getUCMDAREncryption()Z

    .line 136
    move-result v0

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const/4 v0, 0x0

    .line 139
    :goto_1
    if-eqz v0, :cond_4

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    return-void

    .line 143
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter$6()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 158
    const-string p0, "PasswordPolicy"

    .line 160
    const-string/jumbo p1, "return : this is Knox user"

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 169
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda16;

    .line 171
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 180
    if-eqz p3, :cond_7

    .line 182
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 184
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_7

    .line 190
    const-string p1, "PasswordPolicy"

    .line 192
    const-string/jumbo p2, "validateLicenses() called"

    .line 195
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 200
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->validateLicenses$1()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    monitor-exit p0

    .line 205
    goto :goto_3

    .line 206
    :catchall_0
    move-exception p1

    .line 207
    monitor-exit p0

    .line 208
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 209
    :catch_1
    move-exception p0

    .line 210
    const-string p1, "PasswordPolicy"

    .line 212
    const-string/jumbo p2, "validateLicenses() failed. "

    .line 215
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :cond_7
    :goto_3
    return-void
.end method

.method public final setBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p2, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v8

    .line 13
    const/16 v1, 0xff

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 19
    const-string v4, "PASSWORD"

    .line 21
    const-string/jumbo v5, "passwordBioAuthEnabled"

    .line 24
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move v0, v1

    .line 30
    :goto_0
    if-gez v0, :cond_1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v0

    .line 34
    :goto_1
    if-eqz p3, :cond_2

    .line 36
    or-int v0, v1, p2

    .line 38
    :goto_2
    move v4, v0

    .line 39
    goto :goto_3

    .line 40
    :cond_2
    not-int v0, p2

    .line 41
    and-int/2addr v0, v1

    .line 42
    goto :goto_2

    .line 43
    :goto_3
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    const-string v5, "PASSWORD"

    .line 49
    const-string/jumbo v6, "passwordBioAuthEnabled"

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_b

    .line 59
    if-nez p3, :cond_4

    .line 61
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 63
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-direct {v2, p0, p2, v8, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 75
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    move-result-wide v1

    .line 84
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v4, "user"

    .line 89
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/os/UserManager;

    .line 95
    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_3

    .line 105
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_3

    .line 118
    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 129
    move-result v3

    .line 130
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 132
    new-instance v5, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 134
    const/4 v6, 0x1

    .line 135
    invoke-direct {v5, p0, p2, v3, v6}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    goto :goto_4

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_5

    .line 147
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    goto :goto_6

    .line 156
    :goto_5
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw p1

    .line 165
    :cond_4
    :goto_6
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 173
    move-result-wide v9

    .line 174
    and-int/lit8 v1, p2, 0x2

    .line 176
    if-eqz v1, :cond_6

    .line 178
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 181
    move-result v4

    .line 182
    const-string v5, "PasswordPolicy"

    .line 184
    if-eqz p3, :cond_5

    .line 186
    const-string v1, "Admin %d has allowed BIOMETRIC_AUTHENTICATION_IRIS"

    .line 188
    goto :goto_7

    .line 189
    :catchall_1
    move-exception p1

    .line 190
    goto :goto_a

    .line 191
    :cond_5
    const-string v1, "Admin %d has disallowed BIOMETRIC_AUTHENTICATION_IRIS"

    .line 193
    :goto_7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v2

    .line 199
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 202
    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object v6

    .line 207
    const/4 v2, 0x1

    .line 208
    const/4 v3, 0x1

    .line 209
    const/4 v1, 0x5

    .line 210
    move v7, v8

    .line 211
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 214
    :cond_6
    and-int/lit8 v1, p2, 0x1

    .line 216
    if-eqz v1, :cond_8

    .line 218
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 221
    move-result v4

    .line 222
    const-string v5, "PasswordPolicy"

    .line 224
    if-eqz p3, :cond_7

    .line 226
    const-string v1, "Admin %d has allowed BIOMETRIC_AUTHENTICATION_FINGERPRINT"

    .line 228
    goto :goto_8

    .line 229
    :cond_7
    const-string v1, "Admin %d has disallowed BIOMETRIC_AUTHENTICATION_FINGERPRINT"

    .line 231
    :goto_8
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v2

    .line 237
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 240
    move-result-object v2

    .line 241
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    move-result-object v6

    .line 245
    const/4 v2, 0x1

    .line 246
    const/4 v3, 0x1

    .line 247
    const/4 v1, 0x5

    .line 248
    move v7, v8

    .line 249
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 252
    :cond_8
    and-int/lit8 p2, p2, 0x4

    .line 254
    if-eqz p2, :cond_a

    .line 256
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 259
    move-result v4

    .line 260
    const-string v5, "PasswordPolicy"

    .line 262
    if-eqz p3, :cond_9

    .line 264
    const-string p2, "Admin %d has allowed BIOMETRIC_AUTHENTICATION_FACE"

    .line 266
    goto :goto_9

    .line 267
    :cond_9
    const-string p2, "Admin %d has disallowed BIOMETRIC_AUTHENTICATION_FACE"

    .line 269
    :goto_9
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    move-result-object p1

    .line 275
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 278
    move-result-object p1

    .line 279
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    move-result-object v6

    .line 283
    const/4 v2, 0x1

    .line 284
    const/4 v3, 0x1

    .line 285
    const/4 v1, 0x5

    .line 286
    move v7, v8

    .line 287
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    goto :goto_b

    .line 291
    :goto_a
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw p1

    .line 300
    :cond_a
    :goto_b
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    :cond_b
    return v0
.end method

.method public final setForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    if-nez p2, :cond_0

    .line 13
    const-string p2, ""

    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    .line 21
    invoke-direct {v2, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 24
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p2

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v2, " "

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 69
    const-string v6, "PASSWORD"

    .line 71
    const-string/jumbo v7, "passwordForbiddenStrings"

    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v8, p2

    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 82
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 85
    move-result v1

    .line 86
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 88
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 90
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;

    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-direct {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;II)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    const-string p0, "PasswordPolicy"

    .line 105
    const-string/jumbo p1, "setForbiddenStrings() failed."

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    :goto_2
    return v0
.end method

.method public final setHomeAndRecentKey(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 12
    if-nez v2, :cond_1

    .line 14
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string/jumbo v2, "statusbar"

    .line 22
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 29
    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 32
    if-nez v2, :cond_0

    .line 34
    const-string v2, "PasswordPolicy"

    .line 36
    const-string/jumbo v3, "warning: no STATUS_BAR_SERVICE"

    .line 39
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    monitor-exit p0

    .line 48
    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 55
    if-eqz v2, :cond_3

    .line 57
    if-lez p1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mToken:Landroid/os/IBinder;

    .line 61
    const-string v3, "PasswordPolicy"

    .line 63
    const/high16 v4, 0x1200000

    .line 65
    invoke-interface {v2, v4, p1, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mToken:Landroid/os/IBinder;

    .line 71
    const-string v3, "PasswordPolicy"

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-interface {v2, v4, p1, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 77
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 79
    if-nez p1, :cond_4

    .line 81
    const-string p1, "PasswordPolicy"

    .line 83
    const-string/jumbo v2, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 86
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    const/4 v2, 0x3

    .line 91
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 94
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 96
    const/16 v2, 0x3e9

    .line 98
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 101
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 103
    const/16 v2, 0xbb

    .line 105
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    goto :goto_4

    .line 109
    :catch_0
    const-string p1, "PasswordPolicy"

    .line 111
    const-string/jumbo v2, "setHomeAndRecentKey was failed"

    .line 114
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_4
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return-void
.end method

.method public final setKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p3, :cond_1

    .line 7
    const/16 v0, 0x10

    .line 9
    if-ne p3, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string p1, "Invalid features "

    .line 16
    const-string p2, " for container"

    .line 18
    invoke-static {p3, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 28
    if-eqz v0, :cond_2

    .line 30
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 34
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 36
    const/16 v6, 0x9

    .line 38
    move-object v1, v0

    .line 39
    move-object v2, p0

    .line 40
    move-object v3, p2

    .line 41
    move v4, p3

    .line 42
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 51
    :cond_2
    return-void
.end method

.method public final setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

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
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 17
    move-result p1

    .line 18
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    move-result v0

    .line 22
    if-ne p1, v0, :cond_3

    .line 24
    :goto_0
    const-string p1, "PasswordPolicy"

    .line 26
    if-eqz p2, :cond_1

    .line 28
    and-int/lit8 v0, p2, 0x10

    .line 30
    if-nez v0, :cond_1

    .line 32
    const-string/jumbo p0, "setKeyguardDisabledFeatures() which not supported "

    .line 35
    invoke-static {p2, p0, p1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    const-string/jumbo p2, "keyguardDisabledFeatures"

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, p3, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 55
    const-string/jumbo p0, "setKeyguardDisabledFeatures() true"

    .line 58
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-string/jumbo p0, "setKeyguardDisabledFeatures() false"

    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    const-string/jumbo p2, "setKeyguardDisabledFeatures() failed"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_2
    return-void

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 83
    const-string p1, "Can only be called by system user"

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0
.end method

.method public final setMaximumCharacterOccurrences(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    if-gez p2, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v4, "PASSWORD"

    .line 16
    const-string/jumbo v5, "passwordMaximumCharacterOccurences"

    .line 19
    move v3, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 29
    move-result v1

    .line 30
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 34
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;

    .line 36
    const/4 v3, 0x2

    .line 37
    invoke-direct {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;-><init>(IIII)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 46
    :cond_1
    return v0
.end method

.method public final setMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-gez p2, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    const-string v4, "PASSWORD"

    .line 17
    const-string/jumbo v5, "passwordMaximumCharacterSequenceLength"

    .line 20
    move v3, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 30
    move-result v1

    .line 31
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 35
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;-><init>(IIII)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 47
    :cond_1
    return v0
.end method

.method public final setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-gez p2, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const-string v4, "PASSWORD"

    .line 15
    const-string/jumbo v5, "passwordAttemptDeviceDisable"

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 29
    move-result v1

    .line 30
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 34
    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;

    .line 36
    const/4 v5, 0x3

    .line 37
    invoke-direct {v4, v2, p2, v1, v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;-><init>(IIII)V

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 49
    move-result p1

    .line 50
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 52
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {v2, p0, p1, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 64
    :cond_1
    return v0
.end method

.method public final setMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    if-gez p2, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v4, "PASSWORD"

    .line 16
    const-string/jumbo v5, "passwordMaximumNumericSequenceLength"

    .line 19
    move v3, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 29
    move-result v1

    .line 30
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 34
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;

    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-direct {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;-><init>(IIII)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 46
    :cond_1
    return v0
.end method

.method public final setMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    .locals 8

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;

    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v1, v0

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p2

    .line 19
    move-wide v4, p3

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JII)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setMediator(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

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

.method public final setMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-gez p2, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 15
    const-string v4, "PASSWORD"

    .line 17
    const-string/jumbo v5, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    .line 20
    move v3, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 30
    move-result v1

    .line 31
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 35
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;-><init>(IIII)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 47
    :cond_1
    return v0
.end method

.method public final setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 11
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v3, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda30;

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, v1, v4}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda30;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    const-string v3, "PasswordPolicy"

    .line 35
    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 39
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 41
    new-instance v5, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda30;

    .line 43
    const/4 v6, 0x1

    .line 44
    invoke-direct {v5, v1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda30;-><init>(Landroid/content/Context;I)V

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 62
    const-string/jumbo p0, "setMultifactorAuthenticationEnabled: two-factor authentication not available"

    .line 65
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v2

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v4, "setMultifactorAuthenticationEnabled is called for user : "

    .line 74
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v4, ", caller uid - "

    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, ", enable - "

    .line 94
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 111
    const-string v5, "PASSWORD"

    .line 113
    const-string/jumbo v9, "multifactorAuthEnabled"

    .line 116
    const/4 v8, 0x0

    .line 117
    move v7, p2

    .line 118
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_4

    .line 124
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 126
    new-instance v5, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 128
    const/4 v6, 0x0

    .line 129
    invoke-direct {v5, p0, v0, p2, v6}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V

    .line 132
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 138
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 143
    move-result-object v4

    .line 144
    const-string/jumbo v5, "knox_finger_print_plus"

    .line 147
    invoke-static {v4, v5, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 150
    move-result v4

    .line 151
    const/4 v5, 0x1

    .line 152
    if-ne v4, v5, :cond_1

    .line 154
    move v2, v5

    .line 155
    :cond_1
    if-nez v2, :cond_2

    .line 157
    if-eqz p2, :cond_2

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    const-string v5, "EnforcePwdChange is called for user as Multifcator needs to be enforced for : "

    .line 163
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 175
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 181
    :cond_2
    if-eqz v2, :cond_4

    .line 183
    if-nez p2, :cond_4

    .line 185
    if-nez v0, :cond_4

    .line 187
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 189
    check-cast p2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 191
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 197
    move-result p2

    .line 198
    if-nez p2, :cond_3

    .line 200
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 202
    check-cast p2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 204
    iget-object p2, p2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 206
    const-string/jumbo v0, "device_policy"

    .line 209
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 215
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_4

    .line 221
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 223
    const-string v0, "EnforcePwdChange is called for DO case as Multifcator needs to be removed for : "

    .line 225
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 230
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object p2

    .line 237
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 243
    :cond_4
    return v1
.end method

.method public final setPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-gez p2, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 11
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p2

    .line 18
    const-string/jumbo v1, "passwordChangeTimeout"

    .line 21
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 28
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 30
    const-string v1, "PASSWORD"

    .line 32
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final setPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    .locals 8

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v7, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;

    .line 15
    const/4 v6, 0x1

    .line 16
    move-object v0, v7

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move-wide v3, p3

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JII)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x3

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$26()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

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
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 27
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 35
    move-result-object v0

    .line 36
    const-string/jumbo v1, "version"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const-string v1, "2.0"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 54
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 56
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 67
    const-string p0, "PasswordPolicy"

    .line 69
    const-string/jumbo p1, "setPasswordLockDelay() failed. because not supported in Knox 2.0"

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v1

    .line 76
    :cond_0
    const/4 v0, -0x1

    .line 77
    if-ge p2, v0, :cond_1

    .line 79
    return v1

    .line 80
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    .line 82
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p2

    .line 89
    const-string/jumbo v1, "unlockDelay"

    .line 92
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 99
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 101
    const-string v3, "PASSWORD"

    .line 103
    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_2

    .line 109
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 112
    move-result v0

    .line 113
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(I)I

    .line 118
    move-result p1

    .line 119
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 121
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 123
    const/4 v3, 0x3

    .line 124
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 133
    :cond_2
    return p2
.end method

.method public final setPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x7

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x6

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x2

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x4

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/16 v5, 0x8

    .line 17
    move-object v0, v6

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p2

    .line 20
    move v3, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 30
    :cond_0
    return-void
.end method

.method public final setPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/16 v5, 0xa

    .line 17
    move-object v0, v6

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p2

    .line 20
    move v3, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 30
    :cond_0
    return-void
.end method

.method public final setPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x5

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;->m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 13
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    .line 15
    const/4 v5, 0x1

    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 11
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v2, p0, v0, p2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 23
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    const-string v5, "PASSWORD"

    .line 29
    const-string/jumbo v9, "passwordVisibilityEnabled"

    .line 32
    const/4 v8, 0x0

    .line 33
    move v7, p2

    .line 34
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 42
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 44
    const/4 v3, 0x3

    .line 45
    invoke-direct {v2, p0, v0, p2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 54
    :cond_0
    return p1
.end method

.method public final setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v0

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final declared-synchronized setPwdChangeRequestedForInner(I)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const-string/jumbo v1, "passwordChangeRequested"

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setHomeAndRecentKey(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    const/4 v0, 0x0

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    return v0

    .line 34
    :goto_1
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final declared-synchronized setPwdChangeRequestedForUser(II)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    const-string/jumbo v2, "passwordChangeRequested"

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    if-nez v2, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$26()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_3

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    .line 39
    invoke-virtual {v3, p2, v2}, Lcom/android/server/enterprise/security/PasswordPolicyCache;->setChangeRequestedAsUser(II)V

    .line 42
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 44
    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 46
    const/4 v5, 0x2

    .line 47
    invoke-direct {v4, p0, p2, v2, v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 56
    if-nez p2, :cond_2

    .line 58
    if-eqz p1, :cond_1

    .line 60
    const/4 v2, -0x1

    .line 61
    if-ne p1, v2, :cond_2

    .line 63
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setHomeAndRecentKey(I)V

    .line 66
    :cond_2
    const/4 v2, 0x1

    .line 67
    if-ne p1, v2, :cond_3

    .line 69
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v2, 0x2

    .line 77
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 94
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;

    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_4
    move v0, v1

    .line 107
    goto :goto_2

    .line 108
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :goto_2
    monitor-exit p0

    .line 112
    return v0

    .line 113
    :goto_3
    monitor-exit p0

    .line 114
    throw p1
.end method

.method public final setRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 13
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 22
    const-string v4, "PASSWORD"

    .line 24
    const-string/jumbo v5, "passwordRequiredPattern"

    .line 27
    move-object v6, p2

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    .line 37
    move-result v1

    .line 38
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 40
    if-eq v1, v2, :cond_1

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Lcom/samsung/android/knox/ContextInfo;)V

    .line 45
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 48
    move-result v1

    .line 49
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 53
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    const-string/jumbo v4, "passwordPatternOwner"

    .line 60
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 63
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    const-string/jumbo v3, "passwordOwnerHistory"

    .line 68
    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_0

    .line 74
    const-string v4, ","

    .line 76
    invoke-static {v2, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v2

    .line 80
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 82
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 96
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 102
    invoke-virtual {v4, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 105
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 108
    move-result v1

    .line 109
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 111
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 113
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;

    .line 115
    const/4 v3, 0x1

    .line 116
    invoke-direct {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;II)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 125
    :cond_2
    return v0

    .line 126
    :catch_0
    :cond_3
    const/4 p0, 0x0

    .line 127
    return p0
.end method

.method public final setResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;[B)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 15
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;

    .line 17
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;[B)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    move-object v0, p0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final setScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PASSWORD"

    .line 12
    const-string/jumbo v5, "screenLockPatternVisibility"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 23
    move-result p1

    .line 24
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 26
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 28
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ZI)V

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 37
    return v0
.end method

.method public final setTrustAgentConfiguration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 7

    .line 1
    const-string v0, "PasswordPolicy"

    .line 3
    const-string/jumbo v1, "setTrustAgentConfiguration"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 17
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 21
    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda25;

    .line 23
    move-object v0, v6

    .line 24
    move-object v1, p0

    .line 25
    move-object v3, p2

    .line 26
    move-object v4, p3

    .line 27
    move-object v5, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final unlock(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "unlock is called for user : "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, ", caller uid - "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 26
    const-string v3, "PasswordPolicy"

    .line 28
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 34
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 36
    invoke-interface {v2, v3}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 39
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v2, :cond_0

    .line 42
    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.user_handle"

    .line 50
    invoke-static {v0, v2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 53
    move-result-object v2

    .line 54
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 56
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 58
    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;

    .line 60
    invoke-direct {v4, p0, p1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IILandroid/os/Bundle;)V

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Landroid/os/Bundle;

    .line 72
    const-string p1, "android.intent.extra.RETURN_RESULT"

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_1

    .line 80
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :cond_1
    return v1
.end method

.method public final updateSystemUIMonitor$9(I)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 16
    const-string/jumbo v1, "user"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/os/UserManager;

    .line 25
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 36
    move-result p1

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(I)I

    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 43
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 61
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    .line 76
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 79
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 91
    const-string/jumbo v0, "ro.organization_owned"

    .line 94
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 100
    const-string/jumbo v1, "false"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v0

    .line 119
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/Integer;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 134
    move-result v2

    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    move-result v1

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    .line 142
    move-result v1

    .line 143
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 145
    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 147
    const/4 v5, 0x0

    .line 148
    invoke-direct {v4, p0, v1, v2, v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(I)Z

    .line 161
    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 164
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 166
    const/4 v3, 0x4

    .line 167
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 178
    const-string v1, "PASSWORD"

    .line 180
    const-string/jumbo v2, "multifactorAuthEnabled"

    .line 183
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object v0

    .line 191
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v1

    .line 195
    const/4 v2, 0x1

    .line 196
    const/4 v3, 0x0

    .line 197
    if-eqz v1, :cond_3

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Ljava/lang/Boolean;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_2

    .line 211
    move v0, v2

    .line 212
    goto :goto_1

    .line 213
    :cond_3
    move v0, v3

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 216
    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 218
    const/4 v5, 0x0

    .line 219
    invoke-direct {v4, p0, p1, v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V

    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    .line 231
    move-result v0

    .line 232
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 234
    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    .line 236
    const/4 v5, 0x3

    .line 237
    invoke-direct {v4, p0, p1, v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZI)V

    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 248
    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 253
    move-result-object v0

    .line 254
    goto :goto_2

    .line 255
    :cond_4
    const/4 v0, 0x0

    .line 256
    :goto_2
    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    .line 261
    move-result v1

    .line 262
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_6

    .line 268
    add-int/lit8 v1, v1, 0x2

    .line 270
    goto :goto_3

    .line 271
    :cond_5
    move v1, v3

    .line 272
    :cond_6
    :goto_3
    and-int/lit8 v0, v1, 0x1

    .line 274
    if-eqz v0, :cond_7

    .line 276
    move v0, v2

    .line 277
    goto :goto_4

    .line 278
    :cond_7
    move v0, v3

    .line 279
    :goto_4
    and-int/lit8 v1, v1, 0x2

    .line 281
    if-eqz v1, :cond_8

    .line 283
    goto :goto_5

    .line 284
    :cond_8
    move v2, v3

    .line 285
    :goto_5
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V

    .line 288
    return-void
.end method
