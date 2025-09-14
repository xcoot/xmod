.class public final Lcom/android/server/devicepolicy/KnoxPolicyHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDPM:Landroid/app/admin/DevicePolicyManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

.field public mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWifiService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo v0, "misc_policy"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mWifiService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string/jumbo v0, "wifi_policy"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mWifiService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mWifiService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mWifiService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    const-string/jumbo v0, "device_policy"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mUserManager:Landroid/os/UserManager;

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_3
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mUserManager:Landroid/os/UserManager;

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "enterprise_policy"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "restriction_policy"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 19
    .line 20
    return-object p0
.end method

.method public final handlePasswordExpirationNotification(ILcom/android/server/devicepolicy/ActiveAdmin;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 8
    .line 9
    iget-object v1, p2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isEmailAdminPkg(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string/jumbo v2, "device_policy"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 61
    .line 62
    iget-object v1, p2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Landroid/content/Intent;

    .line 75
    .line 76
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string/jumbo v2, "pkgName"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "expiration"

    .line 95
    .line 96
    .line 97
    iget-wide v2, p2, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const-string p0, "KnoxPolicyHelper"

    .line 113
    .line 114
    const-string/jumbo p1, "handlePasswordExpirationNotification() : edms is null"

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_1
    return-void
.end method

.method public final isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "KnoxPolicyHelper"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string/jumbo p1, "removeActiveAdmin() : failed to call EDMS.isAdminRemovableInternal()"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo p0, "removeActiveAdmin() : passed EDMS.isAdminRemovableInternal() because edms is null"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final isCalledFromMDMAdmin(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "KnoxPolicyHelper"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-direct {v0, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 24
    .line 25
    .line 26
    filled-new-array {v3}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string/jumbo p1, "isCalledFromMDMAdmin() : failed to check mdm admin"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_1
    const-string/jumbo p0, "isCalledFromMDMAdmin() : Not a MDM client"

    .line 51
    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const-string/jumbo p0, "isCalledFromMDMAdmin() : called"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const-string p0, "EnterpriseDeviceManager is null"

    .line 66
    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_1
    return v2
.end method

.method public final removeActiveAdminFromDpm(Ljava/util/ArrayList;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "KnoxPolicyHelper"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 26
    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v2, v0, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v3, "failed to remove active admin from edm database "

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string/jumbo p0, "removeUserData() : passed EDMS.removeActiveAdminFromDpm() because edms is null"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
