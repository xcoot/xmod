.class public final Lcom/android/server/devicepolicy/ActiveAdmin;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEF_ORGANIZATION_COLOR:I


# instance fields
.field public final accountTypesWithManagementDisabled:Ljava/util/Set;

.field public allowBluetoothMode:I

.field public allowBrowser:Z

.field public allowDesktopSync:Z

.field public allowInternetSharing:Z

.field public allowIrDA:Z

.field public allowPOPIMAPEmail:Z

.field public allowStorageCard:Z

.field public allowTextMessaging:Z

.field public allowWifi:Z

.field public crossProfileWidgetProviders:Ljava/util/List;

.field public final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

.field public disableBluetoothContactSharing:Z

.field public disableCallerId:Z

.field public disableCamera:Z

.field public disableContactsSearch:Z

.field public disableScreenCapture:Z

.field public disabledKeyguardFeatures:I

.field public encryptionRequested:Z

.field public endUserSessionMessage:Ljava/lang/String;

.field public forceEphemeralUsers:Z

.field public globalProxyExclusionList:Ljava/lang/String;

.field public globalProxySpec:Ljava/lang/String;

.field public info:Landroid/app/admin/DeviceAdminInfo;

.field public isLogoutEnabled:Z

.field public isNetworkLoggingEnabled:Z

.field public final isParent:Z

.field public final isPermissionBased:Z

.field public keepUninstalledPackages:Ljava/util/List;

.field public lastNetworkLoggingNotificationTimeMs:J

.field public longSupportMessage:Ljava/lang/CharSequence;

.field public mAdminCanGrantSensorsPermissions:Z

.field public mAlwaysOnVpnLockdown:Z

.field public mAlwaysOnVpnPackage:Ljava/lang/String;

.field public mCommonCriteriaMode:Z

.field public mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

.field public mCrossProfileCalendarPackages:Ljava/util/List;

.field public mCrossProfilePackages:Ljava/util/List;

.field public mDialerPackage:Ljava/lang/String;

.field public mEnrollmentSpecificId:Ljava/lang/String;

.field public mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

.field public mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

.field public mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

.field public mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

.field public mNearbyAppStreamingPolicy:I

.field public mNearbyNotificationStreamingPolicy:I

.field public mOrganizationId:Ljava/lang/String;

.field public mPasswordComplexity:I

.field public mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

.field public mPreferentialNetworkServiceConfigs:Ljava/util/List;

.field public mProfileMaximumTimeOffMillis:J

.field public mProfileOffDeadline:J

.field public mSmsPackage:Ljava/lang/String;

.field public mSuspendPersonalApps:Z

.field public mUsbDataSignalingEnabled:Z

.field public mWifiMinimumSecurityLevel:I

.field public mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

.field public maximumFailedPasswordsForWipe:I

.field public maximumTimeToUnlock:J

.field public meteredDisabledPackages:Ljava/util/List;

.field public mtePolicy:I

.field public numNetworkLoggingNotifications:I

.field public organizationColor:I

.field public organizationName:Ljava/lang/String;

.field public parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public passwordExpirationDate:J

.field public passwordExpirationTimeout:J

.field public passwordHistoryLength:I

.field public passwordRecoverable:Z

.field public permittedAccessiblityServices:Ljava/util/List;

.field public permittedInputMethods:Ljava/util/List;

.field public permittedNotificationListeners:Ljava/util/List;

.field public protectedPackages:Ljava/util/List;

.field public requireAutoTime:Z

.field public requireStorageCardEncryption:Z

.field public shortSupportMessage:Ljava/lang/CharSequence;

.field public simplePasswordEnabled:Z

.field public specifiesGlobalProxy:Z

.field public startUserSessionMessage:Ljava/lang/String;

.field public strongAuthUnlockTimeout:J

.field public suspendedPackages:Ljava/util/List;

.field public testOnlyAdmin:Z

.field public trustAgentInfos:Landroid/util/ArrayMap;

.field public final userId:I

.field public userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "#00796B"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 70
    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 71
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    const/4 v1, 0x3

    .line 72
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 73
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    const-wide/16 v2, 0x0

    .line 75
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 76
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 77
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 78
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 79
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 80
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 81
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    const/4 v4, 0x1

    .line 86
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    .line 93
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    .line 94
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    .line 96
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    .line 97
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 98
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    .line 99
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    const/4 v5, 0x2

    .line 100
    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    .line 101
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    .line 102
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    .line 104
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 105
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 106
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    .line 107
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 108
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 109
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 111
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 112
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 113
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 114
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 115
    sget v5, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 116
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 121
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 122
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 123
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 124
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    .line 125
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    .line 126
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    .line 127
    sget-object v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 128
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 129
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 130
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 131
    iput p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userId:I

    .line 132
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isPermissionBased:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    .line 134
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    return-void
.end method

.method public constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 3
    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 4
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 6
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 9
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 10
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 11
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 12
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 13
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 14
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    const/4 v4, 0x1

    .line 19
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    .line 26
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    .line 27
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    .line 28
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    .line 29
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    .line 30
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 31
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    .line 32
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    const/4 v5, 0x2

    .line 33
    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    .line 34
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    .line 35
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    .line 37
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 38
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 39
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    .line 40
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 41
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 42
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 44
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 45
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 46
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 47
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 48
    sget v5, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 49
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 54
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 55
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 56
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 57
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    .line 58
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    .line 59
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    .line 60
    sget-object v1, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 61
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 62
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 63
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userId:I

    .line 65
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 66
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isPermissionBased:Z

    return-void
.end method

.method public static dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, ":"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 12
    .line 13
    .line 14
    const-string/jumbo p1, "policyType="

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p1, "packageNames:"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPackageNames()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda4;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda4;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public static filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

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
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
.end method

.method public static readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-le v3, v0, :cond_4

    .line 23
    .line 24
    :cond_1
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const-string/jumbo v2, "value"

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "DevicePolicyManager"

    .line 57
    .line 58
    const-string v3, "Expected tag %s but found %s"

    .line 59
    .line 60
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    return-void
.end method

.method public static readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_5

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-le v4, v1, :cond_5

    .line 25
    .line 26
    :cond_1
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string/jumbo v3, "item"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const-string v4, "DevicePolicyManager"

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    const-string/jumbo v5, "value"

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string v3, "Package name missing under %s"

    .line 62
    .line 63
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v4, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const-string v3, "Unknown tag under %s: "

    .line 72
    .line 73
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v4, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    return-object v0
.end method

.method public static readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package-policy-type"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/util/ArraySet;

    .line 10
    .line 11
    const-string/jumbo v2, "package-policy-packages"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroid/app/admin/PackagePolicy;

    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Landroid/app/admin/PackagePolicy;-><init>(ILjava/util/Set;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    .line 7
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "value"

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "item"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p1, v0, p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "package-policy-type"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {p0, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/app/admin/PackagePolicy;->getPackageNames()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p2, "item"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "package-policy-packages"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v2, p2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "uid="

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "testOnlyAdmin="

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string/jumbo v0, "policies:"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v1, v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 58
    .line 59
    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 68
    .line 69
    .line 70
    :cond_1
    const-string/jumbo v0, "passwordQuality=0x"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 77
    .line 78
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "minimumPasswordLength="

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 94
    .line 95
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v0, "passwordHistoryLength="

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 109
    .line 110
    .line 111
    const-string/jumbo v0, "minimumPasswordUpperCase="

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 118
    .line 119
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v0, "minimumPasswordLowerCase="

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 131
    .line 132
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v0, "minimumPasswordLetters="

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 144
    .line 145
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v0, "minimumPasswordNumeric="

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 157
    .line 158
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 161
    .line 162
    .line 163
    const-string/jumbo v0, "minimumPasswordSymbols="

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 170
    .line 171
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 174
    .line 175
    .line 176
    const-string/jumbo v0, "minimumPasswordNonLetter="

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 183
    .line 184
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 187
    .line 188
    .line 189
    const-string/jumbo v0, "maximumTimeToUnlock="

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 196
    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v0, "strongAuthUnlockTimeout="

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 207
    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v0, "maximumFailedPasswordsForWipe="

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v0, "specifiesGlobalProxy="

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v0, "passwordExpirationTimeout="

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 240
    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 242
    .line 243
    .line 244
    const-string/jumbo v0, "passwordExpirationDate="

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 251
    .line 252
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 256
    .line 257
    if-eqz v0, :cond_2

    .line 258
    .line 259
    const-string/jumbo v0, "globalProxySpec="

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 271
    .line 272
    if-eqz v0, :cond_3

    .line 273
    .line 274
    const-string/jumbo v0, "globalProxyEclusionList="

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_3
    const-string/jumbo v0, "encryptionRequested="

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 294
    .line 295
    .line 296
    invoke-static {}, Landroid/app/admin/flags/Flags;->dumpsysPolicyEngineMigrationEnabled()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_5

    .line 301
    .line 302
    const-string/jumbo v0, "disableCamera="

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 311
    .line 312
    .line 313
    const-string/jumbo v0, "disableScreenCapture="

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v0, "requireAutoTime="

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 331
    .line 332
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 336
    .line 337
    if-eqz v0, :cond_4

    .line 338
    .line 339
    const-string/jumbo v0, "permittedInputMethods="

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_4
    const-string/jumbo v0, "userRestrictions:"

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v0, "  "

    .line 357
    .line 358
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 359
    .line 360
    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 361
    .line 362
    .line 363
    :cond_5
    invoke-static {}, Landroid/app/admin/flags/Flags;->policyEngineMigrationV2Enabled()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_6

    .line 368
    .line 369
    invoke-static {}, Landroid/app/admin/flags/Flags;->dumpsysPolicyEngineMigrationEnabled()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_7

    .line 374
    .line 375
    :cond_6
    const-string/jumbo v0, "mUsbDataSignaling="

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 382
    .line 383
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 384
    .line 385
    .line 386
    :cond_7
    const-string/jumbo v0, "disableCallerId="

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 393
    .line 394
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 395
    .line 396
    .line 397
    const-string/jumbo v0, "disableContactsSearch="

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 406
    .line 407
    .line 408
    const-string/jumbo v0, "disableBluetoothContactSharing="

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 415
    .line 416
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 417
    .line 418
    .line 419
    const-string/jumbo v0, "forceEphemeralUsers="

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 428
    .line 429
    .line 430
    const-string/jumbo v0, "isNetworkLoggingEnabled="

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 437
    .line 438
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 439
    .line 440
    .line 441
    const-string/jumbo v0, "disabledKeyguardFeatures="

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 448
    .line 449
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 450
    .line 451
    .line 452
    const-string/jumbo v0, "crossProfileWidgetProviders="

    .line 453
    .line 454
    .line 455
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 459
    .line 460
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 464
    .line 465
    if-eqz v0, :cond_8

    .line 466
    .line 467
    const-string/jumbo v0, "permittedAccessibilityServices="

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 474
    .line 475
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :cond_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    .line 479
    .line 480
    if-eqz v0, :cond_9

    .line 481
    .line 482
    const-string/jumbo v0, "permittedNotificationListeners="

    .line 483
    .line 484
    .line 485
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    .line 489
    .line 490
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    :cond_9
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    .line 494
    .line 495
    if-eqz v0, :cond_a

    .line 496
    .line 497
    const-string/jumbo v0, "keepUninstalledPackages="

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    .line 504
    .line 505
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    :cond_a
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    .line 509
    .line 510
    if-eqz v0, :cond_b

    .line 511
    .line 512
    const-string/jumbo v0, "meteredDisabledPackages="

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    .line 519
    .line 520
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    :cond_b
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 524
    .line 525
    if-eqz v0, :cond_c

    .line 526
    .line 527
    const-string/jumbo v0, "protectedPackages="

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 534
    .line 535
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    :cond_c
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 539
    .line 540
    if-eqz v0, :cond_d

    .line 541
    .line 542
    const-string/jumbo v0, "suspendedPackages="

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 549
    .line 550
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    :cond_d
    const-string/jumbo v0, "organizationColor="

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 560
    .line 561
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 562
    .line 563
    .line 564
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 565
    .line 566
    if-eqz v0, :cond_e

    .line 567
    .line 568
    const-string/jumbo v0, "organizationName="

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 575
    .line 576
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    :cond_e
    const-string/jumbo v0, "defaultEnabledRestrictionsAlreadySet="

    .line 580
    .line 581
    .line 582
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 586
    .line 587
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    const-string/jumbo v0, "managedProfileCallerIdPolicy"

    .line 591
    .line 592
    .line 593
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    .line 594
    .line 595
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 596
    .line 597
    .line 598
    const-string/jumbo v0, "managedProfileContactsPolicy"

    .line 599
    .line 600
    .line 601
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    .line 602
    .line 603
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 604
    .line 605
    .line 606
    const-string/jumbo v0, "credentialManagerPolicy"

    .line 607
    .line 608
    .line 609
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    .line 610
    .line 611
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 612
    .line 613
    .line 614
    const-string/jumbo v0, "isParent="

    .line 615
    .line 616
    .line 617
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    .line 621
    .line 622
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 623
    .line 624
    .line 625
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 626
    .line 627
    if-eqz v0, :cond_f

    .line 628
    .line 629
    const-string/jumbo v0, "parentAdmin:"

    .line 630
    .line 631
    .line 632
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 636
    .line 637
    .line 638
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 639
    .line 640
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 644
    .line 645
    .line 646
    :cond_f
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 647
    .line 648
    if-eqz v0, :cond_10

    .line 649
    .line 650
    const-string/jumbo v0, "mCrossProfileCalendarPackages="

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 657
    .line 658
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    :cond_10
    const-string/jumbo v0, "mCrossProfilePackages="

    .line 662
    .line 663
    .line 664
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 668
    .line 669
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    const-string/jumbo v0, "mSuspendPersonalApps="

    .line 673
    .line 674
    .line 675
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 679
    .line 680
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 681
    .line 682
    .line 683
    const-string/jumbo v0, "mProfileMaximumTimeOffMillis="

    .line 684
    .line 685
    .line 686
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 690
    .line 691
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 692
    .line 693
    .line 694
    const-string/jumbo v0, "mProfileOffDeadline="

    .line 695
    .line 696
    .line 697
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 701
    .line 702
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 703
    .line 704
    .line 705
    const-string/jumbo v0, "mAlwaysOnVpnPackage="

    .line 706
    .line 707
    .line 708
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    .line 712
    .line 713
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    const-string/jumbo v0, "mAlwaysOnVpnLockdown="

    .line 717
    .line 718
    .line 719
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    .line 723
    .line 724
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 725
    .line 726
    .line 727
    const-string/jumbo v0, "mCommonCriteriaMode="

    .line 728
    .line 729
    .line 730
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    .line 734
    .line 735
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 736
    .line 737
    .line 738
    const-string/jumbo v0, "mPasswordComplexity="

    .line 739
    .line 740
    .line 741
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 745
    .line 746
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 747
    .line 748
    .line 749
    const-string/jumbo v0, "mNearbyNotificationStreamingPolicy="

    .line 750
    .line 751
    .line 752
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 756
    .line 757
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 758
    .line 759
    .line 760
    const-string/jumbo v0, "mNearbyAppStreamingPolicy="

    .line 761
    .line 762
    .line 763
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    .line 767
    .line 768
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 769
    .line 770
    .line 771
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    .line 772
    .line 773
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-nez v0, :cond_11

    .line 778
    .line 779
    const-string/jumbo v0, "mOrganizationId="

    .line 780
    .line 781
    .line 782
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    .line 786
    .line 787
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    :cond_11
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    .line 791
    .line 792
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-nez v0, :cond_12

    .line 797
    .line 798
    const-string/jumbo v0, "mEnrollmentSpecificId="

    .line 799
    .line 800
    .line 801
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    .line 805
    .line 806
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    :cond_12
    const-string/jumbo v0, "mAdminCanGrantSensorsPermissions="

    .line 810
    .line 811
    .line 812
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    .line 816
    .line 817
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 818
    .line 819
    .line 820
    const-string/jumbo v0, "mWifiMinimumSecurityLevel="

    .line 821
    .line 822
    .line 823
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 827
    .line 828
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 829
    .line 830
    .line 831
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 832
    .line 833
    if-eqz v0, :cond_14

    .line 834
    .line 835
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-nez v0, :cond_13

    .line 840
    .line 841
    const-string/jumbo v0, "mSsidAllowlist="

    .line 842
    .line 843
    .line 844
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    goto :goto_1

    .line 848
    :cond_13
    const-string/jumbo v0, "mSsidDenylist="

    .line 849
    .line 850
    .line 851
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    :goto_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 855
    .line 856
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    .line 865
    .line 866
    const/4 v2, 0x0

    .line 867
    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    .line 868
    .line 869
    .line 870
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    check-cast v0, Ljava/util/List;

    .line 883
    .line 884
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    :cond_14
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 888
    .line 889
    if-eqz v0, :cond_15

    .line 890
    .line 891
    const-string/jumbo v0, "mFactoryResetProtectionPolicy:"

    .line 892
    .line 893
    .line 894
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 898
    .line 899
    .line 900
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 901
    .line 902
    invoke-virtual {v0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 906
    .line 907
    .line 908
    :cond_15
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 909
    .line 910
    if-eqz v0, :cond_17

    .line 911
    .line 912
    const-string/jumbo v0, "mPreferentialNetworkServiceConfigs:"

    .line 913
    .line 914
    .line 915
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 919
    .line 920
    .line 921
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 922
    .line 923
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    if-eqz v1, :cond_16

    .line 932
    .line 933
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    check-cast v1, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 938
    .line 939
    invoke-virtual {v1, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 940
    .line 941
    .line 942
    goto :goto_2

    .line 943
    :cond_16
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 944
    .line 945
    .line 946
    :cond_17
    const-string/jumbo v0, "mtePolicy="

    .line 947
    .line 948
    .line 949
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    .line 953
    .line 954
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 955
    .line 956
    .line 957
    const-string v0, "accountTypesWithManagementDisabled="

    .line 958
    .line 959
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 963
    .line 964
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 965
    .line 966
    .line 967
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 968
    .line 969
    if-eqz v0, :cond_18

    .line 970
    .line 971
    const-string/jumbo v0, "mManagedSubscriptionsPolicy:"

    .line 972
    .line 973
    .line 974
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 978
    .line 979
    .line 980
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 981
    .line 982
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 986
    .line 987
    .line 988
    :cond_18
    const-string/jumbo v0, "mDialerPackage="

    .line 989
    .line 990
    .line 991
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    .line 995
    .line 996
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    const-string/jumbo v0, "mSmsPackage="

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    .line 1006
    .line 1007
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    const-string/jumbo v0, "eas it policies:"

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1017
    .line 1018
    .line 1019
    const-string/jumbo v0, "simplePasswordEnabled="

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    .line 1026
    .line 1027
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1028
    .line 1029
    .line 1030
    const-string v0, "allowStorageCard="

    .line 1031
    .line 1032
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    .line 1036
    .line 1037
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1038
    .line 1039
    .line 1040
    const-string v0, "allowWifi="

    .line 1041
    .line 1042
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    .line 1046
    .line 1047
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1048
    .line 1049
    .line 1050
    const-string v0, "allowTextMessaging="

    .line 1051
    .line 1052
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    .line 1056
    .line 1057
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1058
    .line 1059
    .line 1060
    const-string v0, "allowPOPIMAPEmail="

    .line 1061
    .line 1062
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 1066
    .line 1067
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1068
    .line 1069
    .line 1070
    const-string v0, "allowBrowser="

    .line 1071
    .line 1072
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    .line 1076
    .line 1077
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1078
    .line 1079
    .line 1080
    const-string v0, "allowInternetSharing="

    .line 1081
    .line 1082
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    .line 1086
    .line 1087
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1088
    .line 1089
    .line 1090
    const-string v0, "allowBluetoothMode="

    .line 1091
    .line 1092
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    .line 1096
    .line 1097
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1098
    .line 1099
    .line 1100
    const-string v0, "allowDesktopSync="

    .line 1101
    .line 1102
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    .line 1106
    .line 1107
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1108
    .line 1109
    .line 1110
    const-string v0, "allowIrDA="

    .line 1111
    .line 1112
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    .line 1116
    .line 1117
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1118
    .line 1119
    .line 1120
    const-string/jumbo v0, "requireStorageCardEncryption="

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    .line 1127
    .line 1128
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1132
    .line 1133
    .line 1134
    return-void
.end method

.method public final ensureUserRestrictions()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getEffectiveRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    .line 11
    .line 12
    check-cast v1, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string/jumbo v1, "no_camera"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    const-string/jumbo p0, "no_config_date_time"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-object v0
.end method

.method public final getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 22
    .line 23
    return-object p0
.end method

.method public final getUid()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isPermissionBased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 16
    .line 17
    return p0
.end method

.method public final getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isPermissionBased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userId:I

    .line 6
    .line 7
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 21
    .line 22
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eq v4, v5, :cond_73

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    if-ne v4, v6, :cond_1

    .line 20
    .line 21
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-le v7, v3, :cond_73

    .line 26
    .line 27
    :cond_1
    if-eq v4, v6, :cond_0

    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    if-ne v4, v7, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string/jumbo v8, "policies"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string v9, "DevicePolicyManager"

    .line 45
    .line 46
    if-eqz v8, :cond_3

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    const-string v4, "Overriding device admin policies from XML."

    .line 51
    .line 52
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 56
    .line 57
    invoke-virtual {v4, v1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string/jumbo v8, "password-quality"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const-string/jumbo v10, "value"

    .line 69
    .line 70
    .line 71
    const/4 v11, 0x0

    .line 72
    if-eqz v8, :cond_4

    .line 73
    .line 74
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 75
    .line 76
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-string/jumbo v8, "min-password-length"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_5

    .line 91
    .line 92
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 93
    .line 94
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->length:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    const-string/jumbo v8, "password-history-length"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_6

    .line 109
    .line 110
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    const-string/jumbo v8, "min-password-uppercase"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_7

    .line 125
    .line 126
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 127
    .line 128
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->upperCase:I

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    const-string/jumbo v8, "min-password-lowercase"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_8

    .line 143
    .line 144
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 145
    .line 146
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_8
    const-string/jumbo v8, "min-password-letters"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-eqz v8, :cond_9

    .line 162
    .line 163
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 164
    .line 165
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->letters:I

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_9
    const-string/jumbo v8, "min-password-numeric"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_a

    .line 181
    .line 182
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 183
    .line 184
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->numeric:I

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_a
    const-string/jumbo v8, "min-password-symbols"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_b

    .line 200
    .line 201
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 202
    .line 203
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->symbols:I

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_b
    const-string/jumbo v8, "min-password-nonletter"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_c

    .line 219
    .line 220
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 221
    .line 222
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    iput v5, v4, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_c
    const-string/jumbo v8, "max-time-to-unlock"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-eqz v8, :cond_d

    .line 238
    .line 239
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 240
    .line 241
    .line 242
    move-result-wide v4

    .line 243
    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_d
    const-string/jumbo v8, "strong-auth-unlock-timeout"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-eqz v8, :cond_e

    .line 255
    .line 256
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_e
    const-string/jumbo v8, "max-failed-password-wipe"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eqz v8, :cond_f

    .line 272
    .line 273
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_f
    const-string/jumbo v8, "specifies-global-proxy"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    const/4 v12, 0x0

    .line 289
    if-eqz v8, :cond_10

    .line 290
    .line 291
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_10
    const-string/jumbo v8, "global-proxy-spec"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-eqz v8, :cond_11

    .line 307
    .line 308
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_11
    const-string/jumbo v8, "global-proxy-exclusion-list"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    if-eqz v8, :cond_12

    .line 324
    .line 325
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_12
    const-string/jumbo v8, "password-expiration-timeout"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eqz v8, :cond_13

    .line 341
    .line 342
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 343
    .line 344
    .line 345
    move-result-wide v4

    .line 346
    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :cond_13
    const-string/jumbo v8, "password-expiration-date"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-eqz v8, :cond_14

    .line 358
    .line 359
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 360
    .line 361
    .line 362
    move-result-wide v4

    .line 363
    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_14
    const-string/jumbo v8, "encryption-requested"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-eqz v8, :cond_15

    .line 375
    .line 376
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 381
    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :cond_15
    const-string/jumbo v8, "test-only-admin"

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    if-eqz v8, :cond_16

    .line 392
    .line 393
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_16
    const-string/jumbo v8, "disable-camera"

    .line 402
    .line 403
    .line 404
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    if-eqz v8, :cond_17

    .line 409
    .line 410
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 415
    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :cond_17
    const-string/jumbo v8, "disable-caller-id"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    if-eqz v8, :cond_18

    .line 426
    .line 427
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :cond_18
    const-string/jumbo v8, "disable-contacts-search"

    .line 436
    .line 437
    .line 438
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-eqz v8, :cond_19

    .line 443
    .line 444
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :cond_19
    const-string/jumbo v8, "disable-bt-contacts-sharing"

    .line 453
    .line 454
    .line 455
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v8

    .line 459
    if-eqz v8, :cond_1a

    .line 460
    .line 461
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :cond_1a
    const-string/jumbo v8, "disable-screen-capture"

    .line 470
    .line 471
    .line 472
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    if-eqz v8, :cond_1b

    .line 477
    .line 478
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 483
    .line 484
    goto/16 :goto_0

    .line 485
    .line 486
    :cond_1b
    const-string/jumbo v8, "require_auto_time"

    .line 487
    .line 488
    .line 489
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    if-eqz v8, :cond_1c

    .line 494
    .line 495
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_1c
    const-string/jumbo v8, "force_ephemeral_users"

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    if-eqz v8, :cond_1d

    .line 511
    .line 512
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 517
    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :cond_1d
    const-string/jumbo v8, "is_network_logging_enabled"

    .line 521
    .line 522
    .line 523
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    if-eqz v8, :cond_1e

    .line 528
    .line 529
    invoke-interface {v1, v11, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 534
    .line 535
    const-string/jumbo v4, "last-notification"

    .line 536
    .line 537
    .line 538
    invoke-interface {v1, v11, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 539
    .line 540
    .line 541
    move-result-wide v4

    .line 542
    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 543
    .line 544
    const-string/jumbo v4, "num-notifications"

    .line 545
    .line 546
    .line 547
    invoke-interface {v1, v11, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 552
    .line 553
    goto/16 :goto_0

    .line 554
    .line 555
    :cond_1e
    const-string/jumbo v8, "disable-keyguard-features"

    .line 556
    .line 557
    .line 558
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v8

    .line 562
    if-eqz v8, :cond_1f

    .line 563
    .line 564
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 569
    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :cond_1f
    const-string/jumbo v8, "disable-account-management"

    .line 573
    .line 574
    .line 575
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v8

    .line 579
    if-eqz v8, :cond_20

    .line 580
    .line 581
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 582
    .line 583
    const-string v5, "account-type"

    .line 584
    .line 585
    invoke-static {v1, v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :cond_20
    const-string/jumbo v8, "manage-trust-agent-features"

    .line 591
    .line 592
    .line 593
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v8

    .line 597
    const-string v13, "Unknown tag under %s: %s"

    .line 598
    .line 599
    if-eqz v8, :cond_2b

    .line 600
    .line 601
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 602
    .line 603
    .line 604
    move-result v8

    .line 605
    new-instance v12, Landroid/util/ArrayMap;

    .line 606
    .line 607
    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 608
    .line 609
    .line 610
    :cond_21
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 611
    .line 612
    .line 613
    move-result v14

    .line 614
    if-eq v14, v5, :cond_2a

    .line 615
    .line 616
    if-ne v14, v6, :cond_22

    .line 617
    .line 618
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 619
    .line 620
    .line 621
    move-result v15

    .line 622
    if-le v15, v8, :cond_2a

    .line 623
    .line 624
    :cond_22
    if-eq v14, v6, :cond_21

    .line 625
    .line 626
    if-ne v14, v7, :cond_23

    .line 627
    .line 628
    goto :goto_1

    .line 629
    :cond_23
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v14

    .line 633
    const-string/jumbo v15, "component"

    .line 634
    .line 635
    .line 636
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v15

    .line 640
    if-eqz v15, :cond_29

    .line 641
    .line 642
    invoke-interface {v1, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v14

    .line 646
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 647
    .line 648
    .line 649
    move-result v15

    .line 650
    new-instance v7, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    .line 651
    .line 652
    invoke-direct {v7, v11}, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 653
    .line 654
    .line 655
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 656
    .line 657
    .line 658
    move-result v11

    .line 659
    if-eq v11, v5, :cond_28

    .line 660
    .line 661
    if-ne v11, v6, :cond_24

    .line 662
    .line 663
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 664
    .line 665
    .line 666
    move-result v5

    .line 667
    if-le v5, v15, :cond_28

    .line 668
    .line 669
    :cond_24
    if-eq v11, v6, :cond_25

    .line 670
    .line 671
    const/4 v5, 0x4

    .line 672
    if-ne v11, v5, :cond_26

    .line 673
    .line 674
    :cond_25
    :goto_3
    const/4 v5, 0x1

    .line 675
    goto :goto_2

    .line 676
    :cond_26
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v5

    .line 680
    const-string/jumbo v11, "trust-agent-component-options"

    .line 681
    .line 682
    .line 683
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v11

    .line 687
    if-eqz v11, :cond_27

    .line 688
    .line 689
    invoke-static/range {p1 .. p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    iput-object v5, v7, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    .line 694
    .line 695
    goto :goto_3

    .line 696
    :cond_27
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v5

    .line 700
    invoke-static {v9, v13, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    goto :goto_3

    .line 704
    :cond_28
    invoke-virtual {v12, v14, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    goto :goto_4

    .line 708
    :cond_29
    filled-new-array {v4, v14}, [Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    invoke-static {v9, v13, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    :goto_4
    const/4 v5, 0x1

    .line 716
    const/4 v7, 0x4

    .line 717
    const/4 v11, 0x0

    .line 718
    goto :goto_1

    .line 719
    :cond_2a
    iput-object v12, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 720
    .line 721
    goto/16 :goto_0

    .line 722
    .line 723
    :cond_2b
    const-string/jumbo v5, "cross-profile-widget-providers"

    .line 724
    .line 725
    .line 726
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    if-eqz v5, :cond_2c

    .line 731
    .line 732
    new-instance v4, Ljava/util/ArrayList;

    .line 733
    .line 734
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .line 736
    .line 737
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 738
    .line 739
    const-string/jumbo v5, "provider"

    .line 740
    .line 741
    .line 742
    invoke-static {v1, v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 743
    .line 744
    .line 745
    goto/16 :goto_0

    .line 746
    .line 747
    :cond_2c
    const-string/jumbo v5, "permitted-accessiblity-services"

    .line 748
    .line 749
    .line 750
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    if-eqz v5, :cond_2d

    .line 755
    .line 756
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 761
    .line 762
    goto/16 :goto_0

    .line 763
    .line 764
    :cond_2d
    const-string/jumbo v5, "permitted-imes"

    .line 765
    .line 766
    .line 767
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    if-eqz v5, :cond_2e

    .line 772
    .line 773
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 778
    .line 779
    goto/16 :goto_0

    .line 780
    .line 781
    :cond_2e
    const-string/jumbo v5, "permitted-notification-listeners"

    .line 782
    .line 783
    .line 784
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result v5

    .line 788
    if-eqz v5, :cond_2f

    .line 789
    .line 790
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    .line 795
    .line 796
    goto/16 :goto_0

    .line 797
    .line 798
    :cond_2f
    const-string/jumbo v5, "keep-uninstalled-packages"

    .line 799
    .line 800
    .line 801
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    if-eqz v5, :cond_30

    .line 806
    .line 807
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    .line 812
    .line 813
    goto/16 :goto_0

    .line 814
    .line 815
    :cond_30
    const-string/jumbo v5, "metered_data_disabled_packages"

    .line 816
    .line 817
    .line 818
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v5

    .line 822
    if-eqz v5, :cond_31

    .line 823
    .line 824
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :cond_31
    const-string/jumbo v5, "protected_packages"

    .line 833
    .line 834
    .line 835
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v5

    .line 839
    if-eqz v5, :cond_32

    .line 840
    .line 841
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 846
    .line 847
    goto/16 :goto_0

    .line 848
    .line 849
    :cond_32
    const-string/jumbo v5, "suspended-packages"

    .line 850
    .line 851
    .line 852
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    move-result v5

    .line 856
    if-eqz v5, :cond_33

    .line 857
    .line 858
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 863
    .line 864
    goto/16 :goto_0

    .line 865
    .line 866
    :cond_33
    const-string/jumbo v5, "user-restrictions"

    .line 867
    .line 868
    .line 869
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    move-result v5

    .line 873
    if-eqz v5, :cond_34

    .line 874
    .line 875
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    .line 876
    .line 877
    .line 878
    move-result-object v4

    .line 879
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 880
    .line 881
    goto/16 :goto_0

    .line 882
    .line 883
    :cond_34
    const-string/jumbo v5, "default-enabled-user-restrictions"

    .line 884
    .line 885
    .line 886
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v5

    .line 890
    if-eqz v5, :cond_35

    .line 891
    .line 892
    iget-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 893
    .line 894
    const-string/jumbo v5, "restriction"

    .line 895
    .line 896
    .line 897
    invoke-static {v1, v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 898
    .line 899
    .line 900
    goto/16 :goto_0

    .line 901
    .line 902
    :cond_35
    const-string/jumbo v5, "short-support-message"

    .line 903
    .line 904
    .line 905
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v5

    .line 909
    if-eqz v5, :cond_37

    .line 910
    .line 911
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    const/4 v5, 0x4

    .line 916
    if-ne v4, v5, :cond_36

    .line 917
    .line 918
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v4

    .line 922
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 923
    .line 924
    goto/16 :goto_0

    .line 925
    .line 926
    :cond_36
    const-string v4, "Missing text when loading short support message"

    .line 927
    .line 928
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .line 930
    .line 931
    goto/16 :goto_0

    .line 932
    .line 933
    :cond_37
    const/4 v5, 0x4

    .line 934
    const-string/jumbo v7, "long-support-message"

    .line 935
    .line 936
    .line 937
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v7

    .line 941
    if-eqz v7, :cond_39

    .line 942
    .line 943
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 944
    .line 945
    .line 946
    move-result v4

    .line 947
    if-ne v4, v5, :cond_38

    .line 948
    .line 949
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v4

    .line 953
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 954
    .line 955
    goto/16 :goto_0

    .line 956
    .line 957
    :cond_38
    const-string v4, "Missing text when loading long support message"

    .line 958
    .line 959
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    .line 961
    .line 962
    goto/16 :goto_0

    .line 963
    .line 964
    :cond_39
    const-string/jumbo v5, "parent-admin"

    .line 965
    .line 966
    .line 967
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    move-result v5

    .line 971
    if-eqz v5, :cond_3a

    .line 972
    .line 973
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    .line 974
    .line 975
    const/4 v5, 0x1

    .line 976
    xor-int/2addr v4, v5

    .line 977
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 978
    .line 979
    .line 980
    new-instance v4, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 981
    .line 982
    iget-object v6, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 983
    .line 984
    invoke-direct {v4, v6, v5}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 985
    .line 986
    .line 987
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 988
    .line 989
    invoke-virtual {v4, v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 990
    .line 991
    .line 992
    goto/16 :goto_0

    .line 993
    .line 994
    :cond_3a
    const-string/jumbo v5, "organization-color"

    .line 995
    .line 996
    .line 997
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v5

    .line 1001
    if-eqz v5, :cond_3b

    .line 1002
    .line 1003
    const/4 v5, 0x0

    .line 1004
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    .line 1006
    .line 1007
    move-result v4

    .line 1008
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 1009
    .line 1010
    goto/16 :goto_0

    .line 1011
    .line 1012
    :cond_3b
    const-string/jumbo v5, "organization-name"

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v5

    .line 1019
    if-eqz v5, :cond_3d

    .line 1020
    .line 1021
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1022
    .line 1023
    .line 1024
    move-result v4

    .line 1025
    const/4 v5, 0x4

    .line 1026
    if-ne v4, v5, :cond_3c

    .line 1027
    .line 1028
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v4

    .line 1032
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 1033
    .line 1034
    goto/16 :goto_0

    .line 1035
    .line 1036
    :cond_3c
    const-string v4, "Missing text when loading organization name"

    .line 1037
    .line 1038
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_0

    .line 1042
    .line 1043
    :cond_3d
    const-string/jumbo v5, "is_logout_enabled"

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v5

    .line 1050
    if-eqz v5, :cond_3e

    .line 1051
    .line 1052
    const/4 v5, 0x0

    .line 1053
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v4

    .line 1057
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    .line 1058
    .line 1059
    goto/16 :goto_0

    .line 1060
    .line 1061
    :cond_3e
    const-string/jumbo v5, "start_user_session_message"

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v5

    .line 1068
    if-eqz v5, :cond_40

    .line 1069
    .line 1070
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1071
    .line 1072
    .line 1073
    move-result v4

    .line 1074
    const/4 v5, 0x4

    .line 1075
    if-ne v4, v5, :cond_3f

    .line 1076
    .line 1077
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 1082
    .line 1083
    goto/16 :goto_0

    .line 1084
    .line 1085
    :cond_3f
    const-string v4, "Missing text when loading start session message"

    .line 1086
    .line 1087
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    .line 1089
    .line 1090
    goto/16 :goto_0

    .line 1091
    .line 1092
    :cond_40
    const/4 v5, 0x4

    .line 1093
    const-string/jumbo v7, "end_user_session_message"

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v7

    .line 1100
    if-eqz v7, :cond_42

    .line 1101
    .line 1102
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1103
    .line 1104
    .line 1105
    move-result v4

    .line 1106
    if-ne v4, v5, :cond_41

    .line 1107
    .line 1108
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v4

    .line 1112
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 1113
    .line 1114
    goto/16 :goto_0

    .line 1115
    .line 1116
    :cond_41
    const-string v4, "Missing text when loading end session message"

    .line 1117
    .line 1118
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    .line 1120
    .line 1121
    goto/16 :goto_0

    .line 1122
    .line 1123
    :cond_42
    const-string/jumbo v5, "cross-profile-calendar-packages"

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v5

    .line 1130
    if-eqz v5, :cond_43

    .line 1131
    .line 1132
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v4

    .line 1136
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 1137
    .line 1138
    goto/16 :goto_0

    .line 1139
    .line 1140
    :cond_43
    const-string/jumbo v5, "cross-profile-calendar-packages-null"

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v5

    .line 1147
    if-eqz v5, :cond_44

    .line 1148
    .line 1149
    const/4 v5, 0x0

    .line 1150
    iput-object v5, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 1151
    .line 1152
    goto/16 :goto_0

    .line 1153
    .line 1154
    :cond_44
    const-string/jumbo v5, "cross-profile-packages"

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v5

    .line 1161
    if-eqz v5, :cond_45

    .line 1162
    .line 1163
    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v4

    .line 1167
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 1168
    .line 1169
    goto/16 :goto_0

    .line 1170
    .line 1171
    :cond_45
    const-string/jumbo v5, "factory_reset_protection_policy"

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v5

    .line 1178
    if-eqz v5, :cond_46

    .line 1179
    .line 1180
    invoke-static/range {p1 .. p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v4

    .line 1184
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 1185
    .line 1186
    goto/16 :goto_0

    .line 1187
    .line 1188
    :cond_46
    const-string/jumbo v5, "suspend-personal-apps"

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v5

    .line 1195
    if-eqz v5, :cond_47

    .line 1196
    .line 1197
    const/4 v5, 0x0

    .line 1198
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1199
    .line 1200
    .line 1201
    move-result v4

    .line 1202
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 1203
    .line 1204
    goto/16 :goto_0

    .line 1205
    .line 1206
    :cond_47
    const/4 v5, 0x0

    .line 1207
    const-string/jumbo v7, "profile-max-time-off"

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v7

    .line 1214
    if-eqz v7, :cond_48

    .line 1215
    .line 1216
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 1217
    .line 1218
    .line 1219
    move-result-wide v4

    .line 1220
    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 1221
    .line 1222
    goto/16 :goto_0

    .line 1223
    .line 1224
    :cond_48
    const-string/jumbo v7, "profile-off-deadline"

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v7

    .line 1231
    if-eqz v7, :cond_49

    .line 1232
    .line 1233
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v4

    .line 1237
    iput-wide v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 1238
    .line 1239
    goto/16 :goto_0

    .line 1240
    .line 1241
    :cond_49
    const-string/jumbo v7, "vpn-package"

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v7

    .line 1248
    if-eqz v7, :cond_4a

    .line 1249
    .line 1250
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v4

    .line 1254
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    .line 1255
    .line 1256
    goto/16 :goto_0

    .line 1257
    .line 1258
    :cond_4a
    const-string/jumbo v7, "vpn-lockdown"

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v7

    .line 1265
    if-eqz v7, :cond_4b

    .line 1266
    .line 1267
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v4

    .line 1271
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    .line 1272
    .line 1273
    goto/16 :goto_0

    .line 1274
    .line 1275
    :cond_4b
    const-string/jumbo v7, "preferential-network-service-enabled"

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v7

    .line 1282
    if-eqz v7, :cond_4c

    .line 1283
    .line 1284
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v4

    .line 1288
    if-eqz v4, :cond_0

    .line 1289
    .line 1290
    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 1291
    .line 1292
    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v5, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 1296
    .line 1297
    .line 1298
    const/4 v4, 0x1

    .line 1299
    invoke-virtual {v5, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v4

    .line 1306
    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v4

    .line 1310
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 1311
    .line 1312
    goto/16 :goto_0

    .line 1313
    .line 1314
    :cond_4c
    const-string/jumbo v5, "common-criteria-mode"

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v5

    .line 1321
    if-eqz v5, :cond_4d

    .line 1322
    .line 1323
    const/4 v5, 0x0

    .line 1324
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v4

    .line 1328
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    .line 1329
    .line 1330
    goto/16 :goto_0

    .line 1331
    .line 1332
    :cond_4d
    const/4 v5, 0x0

    .line 1333
    const-string/jumbo v7, "password-complexity"

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v7

    .line 1340
    if-eqz v7, :cond_4e

    .line 1341
    .line 1342
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    .line 1344
    .line 1345
    move-result v4

    .line 1346
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 1347
    .line 1348
    goto/16 :goto_0

    .line 1349
    .line 1350
    :cond_4e
    const-string/jumbo v7, "nearby-notification-streaming-policy"

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v7

    .line 1357
    if-eqz v7, :cond_4f

    .line 1358
    .line 1359
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .line 1361
    .line 1362
    move-result v4

    .line 1363
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 1364
    .line 1365
    goto/16 :goto_0

    .line 1366
    .line 1367
    :cond_4f
    const-string/jumbo v7, "nearby-app-streaming-policy"

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v7

    .line 1374
    if-eqz v7, :cond_50

    .line 1375
    .line 1376
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .line 1378
    .line 1379
    move-result v4

    .line 1380
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    .line 1381
    .line 1382
    goto/16 :goto_0

    .line 1383
    .line 1384
    :cond_50
    const-string/jumbo v5, "organization-id"

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1388
    .line 1389
    .line 1390
    move-result v5

    .line 1391
    if-eqz v5, :cond_52

    .line 1392
    .line 1393
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1394
    .line 1395
    .line 1396
    move-result v4

    .line 1397
    const/4 v5, 0x4

    .line 1398
    if-ne v4, v5, :cond_51

    .line 1399
    .line 1400
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v4

    .line 1404
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    .line 1405
    .line 1406
    goto/16 :goto_0

    .line 1407
    .line 1408
    :cond_51
    const-string v4, "Missing Organization ID."

    .line 1409
    .line 1410
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    .line 1412
    .line 1413
    goto/16 :goto_0

    .line 1414
    .line 1415
    :cond_52
    const/4 v5, 0x4

    .line 1416
    const-string/jumbo v7, "enrollment-specific-id"

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1420
    .line 1421
    .line 1422
    move-result v7

    .line 1423
    if-eqz v7, :cond_54

    .line 1424
    .line 1425
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1426
    .line 1427
    .line 1428
    move-result v4

    .line 1429
    if-ne v4, v5, :cond_53

    .line 1430
    .line 1431
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v4

    .line 1435
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    .line 1436
    .line 1437
    goto/16 :goto_0

    .line 1438
    .line 1439
    :cond_53
    const-string v4, "Missing Enrollment-specific ID."

    .line 1440
    .line 1441
    invoke-static {v9, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    .line 1443
    .line 1444
    goto/16 :goto_0

    .line 1445
    .line 1446
    :cond_54
    const-string v5, "admin-can-grant-sensors-permissions"

    .line 1447
    .line 1448
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v5

    .line 1452
    if-eqz v5, :cond_55

    .line 1453
    .line 1454
    const/4 v5, 0x0

    .line 1455
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1456
    .line 1457
    .line 1458
    move-result v4

    .line 1459
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    .line 1460
    .line 1461
    goto/16 :goto_0

    .line 1462
    .line 1463
    :cond_55
    const/4 v5, 0x0

    .line 1464
    const-string/jumbo v7, "usb-data-signaling"

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v7

    .line 1471
    if-eqz v7, :cond_56

    .line 1472
    .line 1473
    const/4 v7, 0x1

    .line 1474
    invoke-interface {v1, v5, v10, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v4

    .line 1478
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 1479
    .line 1480
    goto/16 :goto_0

    .line 1481
    .line 1482
    :cond_56
    const-string/jumbo v7, "wifi-min-security"

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v7

    .line 1489
    if-eqz v7, :cond_57

    .line 1490
    .line 1491
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .line 1493
    .line 1494
    move-result v4

    .line 1495
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 1496
    .line 1497
    goto/16 :goto_0

    .line 1498
    .line 1499
    :cond_57
    const-string/jumbo v5, "ssid-allowlist"

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v5

    .line 1506
    const-string/jumbo v7, "ssid"

    .line 1507
    .line 1508
    .line 1509
    if-eqz v5, :cond_58

    .line 1510
    .line 1511
    new-instance v4, Ljava/util/ArrayList;

    .line 1512
    .line 1513
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .line 1515
    .line 1516
    invoke-static {v1, v7, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1517
    .line 1518
    .line 1519
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v4

    .line 1523
    new-instance v5, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    .line 1524
    .line 1525
    const/4 v6, 0x1

    .line 1526
    invoke-direct {v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1527
    .line 1528
    .line 1529
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v4

    .line 1533
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v5

    .line 1537
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v4

    .line 1541
    check-cast v4, Ljava/util/List;

    .line 1542
    .line 1543
    new-instance v5, Landroid/app/admin/WifiSsidPolicy;

    .line 1544
    .line 1545
    new-instance v6, Landroid/util/ArraySet;

    .line 1546
    .line 1547
    invoke-direct {v6, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-direct {v5, v12, v6}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    .line 1551
    .line 1552
    .line 1553
    iput-object v5, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 1554
    .line 1555
    goto/16 :goto_0

    .line 1556
    .line 1557
    :cond_58
    const-string/jumbo v5, "ssid-denylist"

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1561
    .line 1562
    .line 1563
    move-result v5

    .line 1564
    if-eqz v5, :cond_59

    .line 1565
    .line 1566
    new-instance v4, Ljava/util/ArrayList;

    .line 1567
    .line 1568
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    .line 1570
    .line 1571
    invoke-static {v1, v7, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1572
    .line 1573
    .line 1574
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v4

    .line 1578
    new-instance v5, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    .line 1579
    .line 1580
    const/4 v6, 0x1

    .line 1581
    invoke-direct {v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1582
    .line 1583
    .line 1584
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v4

    .line 1588
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v5

    .line 1592
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v4

    .line 1596
    check-cast v4, Ljava/util/List;

    .line 1597
    .line 1598
    new-instance v5, Landroid/app/admin/WifiSsidPolicy;

    .line 1599
    .line 1600
    new-instance v6, Landroid/util/ArraySet;

    .line 1601
    .line 1602
    invoke-direct {v6, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1603
    .line 1604
    .line 1605
    const/4 v7, 0x1

    .line 1606
    invoke-direct {v5, v7, v6}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    .line 1607
    .line 1608
    .line 1609
    iput-object v5, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 1610
    .line 1611
    goto/16 :goto_0

    .line 1612
    .line 1613
    :cond_59
    const/4 v7, 0x1

    .line 1614
    const-string/jumbo v5, "preferential_network_service_configs"

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1618
    .line 1619
    .line 1620
    move-result v5

    .line 1621
    if-eqz v5, :cond_5f

    .line 1622
    .line 1623
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 1624
    .line 1625
    .line 1626
    move-result v5

    .line 1627
    new-instance v8, Ljava/util/ArrayList;

    .line 1628
    .line 1629
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1630
    .line 1631
    .line 1632
    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1633
    .line 1634
    .line 1635
    move-result v10

    .line 1636
    if-eq v10, v7, :cond_5e

    .line 1637
    .line 1638
    if-ne v10, v6, :cond_5a

    .line 1639
    .line 1640
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 1641
    .line 1642
    .line 1643
    move-result v7

    .line 1644
    if-le v7, v5, :cond_5e

    .line 1645
    .line 1646
    :cond_5a
    if-eq v10, v6, :cond_5b

    .line 1647
    .line 1648
    const/4 v7, 0x4

    .line 1649
    if-ne v10, v7, :cond_5c

    .line 1650
    .line 1651
    :cond_5b
    :goto_6
    const/4 v7, 0x1

    .line 1652
    goto :goto_5

    .line 1653
    :cond_5c
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v10

    .line 1657
    const-string/jumbo v11, "preferential_network_service_config"

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v11

    .line 1664
    if-eqz v11, :cond_5d

    .line 1665
    .line 1666
    invoke-static {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getPreferentialNetworkServiceConfig(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v10

    .line 1670
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    .line 1672
    .line 1673
    goto :goto_6

    .line 1674
    :cond_5d
    filled-new-array {v4, v10}, [Ljava/lang/Object;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v10

    .line 1678
    invoke-static {v9, v13, v10}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    .line 1680
    .line 1681
    goto :goto_6

    .line 1682
    :cond_5e
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1683
    .line 1684
    .line 1685
    move-result v4

    .line 1686
    if-nez v4, :cond_0

    .line 1687
    .line 1688
    iput-object v8, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 1689
    .line 1690
    goto/16 :goto_0

    .line 1691
    .line 1692
    :cond_5f
    const-string/jumbo v5, "mte-policy"

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1696
    .line 1697
    .line 1698
    move-result v5

    .line 1699
    if-eqz v5, :cond_60

    .line 1700
    .line 1701
    const/4 v5, 0x0

    .line 1702
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    .line 1704
    .line 1705
    move-result v4

    .line 1706
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    .line 1707
    .line 1708
    goto/16 :goto_0

    .line 1709
    .line 1710
    :cond_60
    const-string/jumbo v5, "caller-id-policy"

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1714
    .line 1715
    .line 1716
    move-result v5

    .line 1717
    if-eqz v5, :cond_61

    .line 1718
    .line 1719
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v4

    .line 1723
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    .line 1724
    .line 1725
    goto/16 :goto_0

    .line 1726
    .line 1727
    :cond_61
    const-string/jumbo v5, "contacts-policy"

    .line 1728
    .line 1729
    .line 1730
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v5

    .line 1734
    if-eqz v5, :cond_62

    .line 1735
    .line 1736
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v4

    .line 1740
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    .line 1741
    .line 1742
    goto/16 :goto_0

    .line 1743
    .line 1744
    :cond_62
    const-string/jumbo v5, "managed_subscriptions_policy"

    .line 1745
    .line 1746
    .line 1747
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1748
    .line 1749
    .line 1750
    move-result v5

    .line 1751
    if-eqz v5, :cond_63

    .line 1752
    .line 1753
    invoke-static/range {p1 .. p1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v4

    .line 1757
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 1758
    .line 1759
    goto/16 :goto_0

    .line 1760
    .line 1761
    :cond_63
    const-string/jumbo v5, "credential-manager-policy"

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1765
    .line 1766
    .line 1767
    move-result v5

    .line 1768
    if-eqz v5, :cond_64

    .line 1769
    .line 1770
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v4

    .line 1774
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    .line 1775
    .line 1776
    goto/16 :goto_0

    .line 1777
    .line 1778
    :cond_64
    const-string/jumbo v5, "dialer_package"

    .line 1779
    .line 1780
    .line 1781
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1782
    .line 1783
    .line 1784
    move-result v5

    .line 1785
    if-eqz v5, :cond_65

    .line 1786
    .line 1787
    const/4 v5, 0x0

    .line 1788
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v4

    .line 1792
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    .line 1793
    .line 1794
    goto/16 :goto_0

    .line 1795
    .line 1796
    :cond_65
    const/4 v5, 0x0

    .line 1797
    const-string/jumbo v6, "sms_package"

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v6

    .line 1804
    if-eqz v6, :cond_66

    .line 1805
    .line 1806
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v4

    .line 1810
    iput-object v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    .line 1811
    .line 1812
    goto/16 :goto_0

    .line 1813
    .line 1814
    :cond_66
    const-string/jumbo v6, "password-recoverable"

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1818
    .line 1819
    .line 1820
    move-result v6

    .line 1821
    if-eqz v6, :cond_67

    .line 1822
    .line 1823
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1824
    .line 1825
    .line 1826
    move-result v4

    .line 1827
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    .line 1828
    .line 1829
    goto/16 :goto_0

    .line 1830
    .line 1831
    :cond_67
    const-string/jumbo v6, "simplepassword-enabled"

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1835
    .line 1836
    .line 1837
    move-result v6

    .line 1838
    if-eqz v6, :cond_68

    .line 1839
    .line 1840
    const/4 v6, 0x1

    .line 1841
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1842
    .line 1843
    .line 1844
    move-result v4

    .line 1845
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    .line 1846
    .line 1847
    goto/16 :goto_0

    .line 1848
    .line 1849
    :cond_68
    const/4 v6, 0x1

    .line 1850
    const-string v7, "allow-storage-card"

    .line 1851
    .line 1852
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1853
    .line 1854
    .line 1855
    move-result v7

    .line 1856
    if-eqz v7, :cond_69

    .line 1857
    .line 1858
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1859
    .line 1860
    .line 1861
    move-result v4

    .line 1862
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    .line 1863
    .line 1864
    goto/16 :goto_0

    .line 1865
    .line 1866
    :cond_69
    const-string v7, "allow-wifi"

    .line 1867
    .line 1868
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1869
    .line 1870
    .line 1871
    move-result v7

    .line 1872
    if-eqz v7, :cond_6a

    .line 1873
    .line 1874
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1875
    .line 1876
    .line 1877
    move-result v4

    .line 1878
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    .line 1879
    .line 1880
    goto/16 :goto_0

    .line 1881
    .line 1882
    :cond_6a
    const-string v7, "allow-text-messaging"

    .line 1883
    .line 1884
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1885
    .line 1886
    .line 1887
    move-result v7

    .line 1888
    if-eqz v7, :cond_6b

    .line 1889
    .line 1890
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1891
    .line 1892
    .line 1893
    move-result v4

    .line 1894
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    .line 1895
    .line 1896
    goto/16 :goto_0

    .line 1897
    .line 1898
    :cond_6b
    const-string v7, "allow-popimap-email"

    .line 1899
    .line 1900
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1901
    .line 1902
    .line 1903
    move-result v7

    .line 1904
    if-eqz v7, :cond_6c

    .line 1905
    .line 1906
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1907
    .line 1908
    .line 1909
    move-result v4

    .line 1910
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 1911
    .line 1912
    goto/16 :goto_0

    .line 1913
    .line 1914
    :cond_6c
    const-string v7, "allow-browser"

    .line 1915
    .line 1916
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1917
    .line 1918
    .line 1919
    move-result v7

    .line 1920
    if-eqz v7, :cond_6d

    .line 1921
    .line 1922
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1923
    .line 1924
    .line 1925
    move-result v4

    .line 1926
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    .line 1927
    .line 1928
    goto/16 :goto_0

    .line 1929
    .line 1930
    :cond_6d
    const-string v7, "allow-internet-sharing"

    .line 1931
    .line 1932
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1933
    .line 1934
    .line 1935
    move-result v7

    .line 1936
    if-eqz v7, :cond_6e

    .line 1937
    .line 1938
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1939
    .line 1940
    .line 1941
    move-result v4

    .line 1942
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    .line 1943
    .line 1944
    goto/16 :goto_0

    .line 1945
    .line 1946
    :cond_6e
    const-string v6, "allow-bluetooth-mode"

    .line 1947
    .line 1948
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1949
    .line 1950
    .line 1951
    move-result v6

    .line 1952
    if-eqz v6, :cond_6f

    .line 1953
    .line 1954
    const/4 v4, 0x2

    .line 1955
    invoke-interface {v1, v5, v10, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1956
    .line 1957
    .line 1958
    move-result v4

    .line 1959
    iput v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    .line 1960
    .line 1961
    goto/16 :goto_0

    .line 1962
    .line 1963
    :cond_6f
    const-string v6, "allow-Desktop-Sync"

    .line 1964
    .line 1965
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1966
    .line 1967
    .line 1968
    move-result v6

    .line 1969
    if-eqz v6, :cond_70

    .line 1970
    .line 1971
    const/4 v6, 0x1

    .line 1972
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1973
    .line 1974
    .line 1975
    move-result v4

    .line 1976
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    .line 1977
    .line 1978
    goto/16 :goto_0

    .line 1979
    .line 1980
    :cond_70
    const/4 v6, 0x1

    .line 1981
    const-string v7, "allow-IrDA"

    .line 1982
    .line 1983
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1984
    .line 1985
    .line 1986
    move-result v7

    .line 1987
    if-eqz v7, :cond_71

    .line 1988
    .line 1989
    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v4

    .line 1993
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    .line 1994
    .line 1995
    goto/16 :goto_0

    .line 1996
    .line 1997
    :cond_71
    const-string/jumbo v6, "require-StorageCard-Encryption"

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2001
    .line 2002
    .line 2003
    move-result v6

    .line 2004
    if-eqz v6, :cond_72

    .line 2005
    .line 2006
    invoke-interface {v1, v5, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2007
    .line 2008
    .line 2009
    move-result v4

    .line 2010
    iput-boolean v4, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    .line 2011
    .line 2012
    goto/16 :goto_0

    .line 2013
    .line 2014
    :cond_72
    const-string v5, "Unknown admin tag: %s"

    .line 2015
    .line 2016
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v4

    .line 2020
    invoke-static {v9, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2021
    .line 2022
    .line 2023
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2024
    .line 2025
    .line 2026
    goto/16 :goto_0

    .line 2027
    .line 2028
    :cond_73
    return-void
.end method

.method public final writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "policies"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 21
    .line 22
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    const-string/jumbo v3, "password-quality"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 34
    .line 35
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string/jumbo v3, "min-password-length"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 46
    .line 47
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-string/jumbo v3, "min-password-uppercase"

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 58
    .line 59
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const-string/jumbo v3, "min-password-lowercase"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 70
    .line 71
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    .line 72
    .line 73
    if-eq v0, v2, :cond_4

    .line 74
    .line 75
    const-string/jumbo v3, "min-password-letters"

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 82
    .line 83
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    .line 84
    .line 85
    if-eq v0, v2, :cond_5

    .line 86
    .line 87
    const-string/jumbo v3, "min-password-numeric"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 94
    .line 95
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    .line 96
    .line 97
    if-eq v0, v2, :cond_6

    .line 98
    .line 99
    const-string/jumbo v3, "min-password-symbols"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 106
    .line 107
    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    .line 108
    .line 109
    if-lez v0, :cond_7

    .line 110
    .line 111
    const-string/jumbo v3, "min-password-nonletter"

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    :cond_7
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 118
    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    const-string/jumbo v3, "password-history-length"

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    :cond_8
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 128
    .line 129
    const-wide/16 v5, 0x0

    .line 130
    .line 131
    cmp-long v0, v3, v5

    .line 132
    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    const-string/jumbo v0, "max-time-to-unlock"

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 139
    .line 140
    .line 141
    :cond_9
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 142
    .line 143
    const-wide/32 v7, 0xf731400

    .line 144
    .line 145
    .line 146
    cmp-long v0, v3, v7

    .line 147
    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    const-string/jumbo v0, "strong-auth-unlock-timeout"

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 154
    .line 155
    .line 156
    :cond_a
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 157
    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    const-string/jumbo v3, "max-failed-password-wipe"

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 167
    .line 168
    if-eqz v0, :cond_d

    .line 169
    .line 170
    const-string/jumbo v3, "specifies-global-proxy"

    .line 171
    .line 172
    .line 173
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v0, :cond_c

    .line 179
    .line 180
    const-string/jumbo v3, "global-proxy-spec"

    .line 181
    .line 182
    .line 183
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_c
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v0, :cond_d

    .line 189
    .line 190
    const-string/jumbo v3, "global-proxy-exclusion-list"

    .line 191
    .line 192
    .line 193
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_d
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 197
    .line 198
    cmp-long v0, v3, v5

    .line 199
    .line 200
    if-eqz v0, :cond_e

    .line 201
    .line 202
    const-string/jumbo v0, "password-expiration-timeout"

    .line 203
    .line 204
    .line 205
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 206
    .line 207
    .line 208
    :cond_e
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 209
    .line 210
    cmp-long v0, v3, v5

    .line 211
    .line 212
    if-eqz v0, :cond_f

    .line 213
    .line 214
    const-string/jumbo v0, "password-expiration-date"

    .line 215
    .line 216
    .line 217
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 218
    .line 219
    .line 220
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 221
    .line 222
    if-eqz v0, :cond_10

    .line 223
    .line 224
    const-string/jumbo v3, "encryption-requested"

    .line 225
    .line 226
    .line 227
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 228
    .line 229
    .line 230
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 231
    .line 232
    if-eqz v0, :cond_11

    .line 233
    .line 234
    const-string/jumbo v3, "test-only-admin"

    .line 235
    .line 236
    .line 237
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 241
    .line 242
    if-eqz v0, :cond_12

    .line 243
    .line 244
    const-string/jumbo v3, "disable-camera"

    .line 245
    .line 246
    .line 247
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 248
    .line 249
    .line 250
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 251
    .line 252
    if-eqz v0, :cond_13

    .line 253
    .line 254
    const-string/jumbo v3, "disable-caller-id"

    .line 255
    .line 256
    .line 257
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 258
    .line 259
    .line 260
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    .line 261
    .line 262
    if-eqz v0, :cond_14

    .line 263
    .line 264
    const-string/jumbo v3, "disable-contacts-search"

    .line 265
    .line 266
    .line 267
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 271
    .line 272
    if-nez v0, :cond_15

    .line 273
    .line 274
    const-string/jumbo v3, "disable-bt-contacts-sharing"

    .line 275
    .line 276
    .line 277
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 278
    .line 279
    .line 280
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 281
    .line 282
    if-eqz v0, :cond_16

    .line 283
    .line 284
    const-string/jumbo v3, "disable-screen-capture"

    .line 285
    .line 286
    .line 287
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 288
    .line 289
    .line 290
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 291
    .line 292
    if-eqz v0, :cond_17

    .line 293
    .line 294
    const-string/jumbo v3, "require_auto_time"

    .line 295
    .line 296
    .line 297
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 301
    .line 302
    if-eqz v0, :cond_18

    .line 303
    .line 304
    const-string/jumbo v3, "force_ephemeral_users"

    .line 305
    .line 306
    .line 307
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 308
    .line 309
    .line 310
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 311
    .line 312
    const-string/jumbo v3, "value"

    .line 313
    .line 314
    .line 315
    if-eqz v0, :cond_19

    .line 316
    .line 317
    const-string/jumbo v0, "is_network_logging_enabled"

    .line 318
    .line 319
    .line 320
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    .line 322
    .line 323
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 324
    .line 325
    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    .line 327
    .line 328
    const-string/jumbo v4, "num-notifications"

    .line 329
    .line 330
    .line 331
    iget v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 332
    .line 333
    invoke-interface {p1, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    .line 335
    .line 336
    const-string/jumbo v4, "last-notification"

    .line 337
    .line 338
    .line 339
    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 340
    .line 341
    invoke-interface {p1, v1, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    .line 343
    .line 344
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    .line 346
    .line 347
    :cond_19
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 348
    .line 349
    if-eqz v0, :cond_1a

    .line 350
    .line 351
    const-string/jumbo v4, "disable-keyguard-features"

    .line 352
    .line 353
    .line 354
    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    :cond_1a
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 358
    .line 359
    check-cast v0, Landroid/util/ArraySet;

    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_1b

    .line 366
    .line 367
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 368
    .line 369
    const-string/jumbo v4, "disable-account-management"

    .line 370
    .line 371
    .line 372
    const-string v7, "account-type"

    .line 373
    .line 374
    invoke-static {p1, v4, v7, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 375
    .line 376
    .line 377
    :cond_1b
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 378
    .line 379
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-nez v0, :cond_1e

    .line 384
    .line 385
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 386
    .line 387
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const-string/jumbo v4, "manage-trust-agent-features"

    .line 392
    .line 393
    .line 394
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    .line 396
    .line 397
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    if-eqz v7, :cond_1d

    .line 406
    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    check-cast v7, Ljava/util/Map$Entry;

    .line 412
    .line 413
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    check-cast v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    .line 418
    .line 419
    const-string/jumbo v9, "component"

    .line 420
    .line 421
    .line 422
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    .line 424
    .line 425
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    check-cast v7, Ljava/lang/String;

    .line 430
    .line 431
    invoke-interface {p1, v1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    .line 433
    .line 434
    iget-object v7, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    .line 435
    .line 436
    if-eqz v7, :cond_1c

    .line 437
    .line 438
    const-string/jumbo v7, "trust-agent-component-options"

    .line 439
    .line 440
    .line 441
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    .line 443
    .line 444
    :try_start_0
    iget-object v8, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    .line 445
    .line 446
    invoke-virtual {v8, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .line 448
    .line 449
    goto :goto_1

    .line 450
    :catch_0
    move-exception v8

    .line 451
    const/4 v10, 0x0

    .line 452
    new-array v10, v10, [Ljava/lang/Object;

    .line 453
    .line 454
    const-string v11, "DevicePolicyManager"

    .line 455
    .line 456
    const-string v12, "Failed to save TrustAgent options"

    .line 457
    .line 458
    invoke-static {v11, v8, v12, v10}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :goto_1
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    .line 463
    .line 464
    :cond_1c
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    .line 466
    .line 467
    goto :goto_0

    .line 468
    :cond_1d
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    .line 470
    .line 471
    :cond_1e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 472
    .line 473
    if-eqz v0, :cond_1f

    .line 474
    .line 475
    check-cast v0, Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-nez v0, :cond_1f

    .line 482
    .line 483
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 484
    .line 485
    const-string/jumbo v3, "cross-profile-widget-providers"

    .line 486
    .line 487
    .line 488
    const-string/jumbo v4, "provider"

    .line 489
    .line 490
    .line 491
    invoke-static {p1, v3, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 492
    .line 493
    .line 494
    :cond_1f
    const-string/jumbo v0, "permitted-accessiblity-services"

    .line 495
    .line 496
    .line 497
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 498
    .line 499
    invoke-static {v3, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 500
    .line 501
    .line 502
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 503
    .line 504
    const-string/jumbo v3, "permitted-imes"

    .line 505
    .line 506
    .line 507
    invoke-static {v0, v3, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 508
    .line 509
    .line 510
    const-string/jumbo v0, "permitted-notification-listeners"

    .line 511
    .line 512
    .line 513
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    .line 514
    .line 515
    invoke-static {v3, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 516
    .line 517
    .line 518
    const-string/jumbo v0, "keep-uninstalled-packages"

    .line 519
    .line 520
    .line 521
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    .line 522
    .line 523
    invoke-static {v3, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 524
    .line 525
    .line 526
    const-string/jumbo v0, "metered_data_disabled_packages"

    .line 527
    .line 528
    .line 529
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    .line 530
    .line 531
    invoke-static {v3, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 532
    .line 533
    .line 534
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 535
    .line 536
    const-string/jumbo v3, "protected_packages"

    .line 537
    .line 538
    .line 539
    invoke-static {v0, v3, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 540
    .line 541
    .line 542
    const-string/jumbo v0, "suspended-packages"

    .line 543
    .line 544
    .line 545
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 546
    .line 547
    invoke-static {v3, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 548
    .line 549
    .line 550
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 551
    .line 552
    if-eqz v0, :cond_20

    .line 553
    .line 554
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-lez v0, :cond_20

    .line 559
    .line 560
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 561
    .line 562
    const-string/jumbo v3, "user-restrictions"

    .line 563
    .line 564
    .line 565
    invoke-static {p1, v0, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    :cond_20
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 569
    .line 570
    check-cast v0, Landroid/util/ArraySet;

    .line 571
    .line 572
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    if-nez v0, :cond_21

    .line 577
    .line 578
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 579
    .line 580
    const-string/jumbo v3, "default-enabled-user-restrictions"

    .line 581
    .line 582
    .line 583
    const-string/jumbo v4, "restriction"

    .line 584
    .line 585
    .line 586
    invoke-static {p1, v3, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 587
    .line 588
    .line 589
    :cond_21
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 590
    .line 591
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_22

    .line 596
    .line 597
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 598
    .line 599
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    const-string/jumbo v3, "short-support-message"

    .line 604
    .line 605
    .line 606
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    :cond_22
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 610
    .line 611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-nez v0, :cond_23

    .line 616
    .line 617
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 618
    .line 619
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    const-string/jumbo v3, "long-support-message"

    .line 624
    .line 625
    .line 626
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    :cond_23
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 630
    .line 631
    if-eqz v0, :cond_24

    .line 632
    .line 633
    const-string/jumbo v0, "parent-admin"

    .line 634
    .line 635
    .line 636
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 637
    .line 638
    .line 639
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 640
    .line 641
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 642
    .line 643
    .line 644
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    .line 646
    .line 647
    :cond_24
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 648
    .line 649
    sget v3, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    .line 650
    .line 651
    if-eq v0, v3, :cond_25

    .line 652
    .line 653
    const-string/jumbo v3, "organization-color"

    .line 654
    .line 655
    .line 656
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 657
    .line 658
    .line 659
    :cond_25
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 660
    .line 661
    if-eqz v0, :cond_26

    .line 662
    .line 663
    const-string/jumbo v3, "organization-name"

    .line 664
    .line 665
    .line 666
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    .line 670
    .line 671
    if-eqz v0, :cond_27

    .line 672
    .line 673
    const-string/jumbo v3, "is_logout_enabled"

    .line 674
    .line 675
    .line 676
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 677
    .line 678
    .line 679
    :cond_27
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 680
    .line 681
    if-eqz v0, :cond_28

    .line 682
    .line 683
    const-string/jumbo v3, "start_user_session_message"

    .line 684
    .line 685
    .line 686
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    :cond_28
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 690
    .line 691
    if-eqz v0, :cond_29

    .line 692
    .line 693
    const-string/jumbo v3, "end_user_session_message"

    .line 694
    .line 695
    .line 696
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    :cond_29
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 700
    .line 701
    if-nez v0, :cond_2a

    .line 702
    .line 703
    const-string/jumbo v0, "cross-profile-calendar-packages-null"

    .line 704
    .line 705
    .line 706
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    .line 708
    .line 709
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    .line 711
    .line 712
    goto :goto_2

    .line 713
    :cond_2a
    const-string/jumbo v3, "item"

    .line 714
    .line 715
    .line 716
    const-string/jumbo v4, "cross-profile-calendar-packages"

    .line 717
    .line 718
    .line 719
    invoke-static {p1, v4, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 720
    .line 721
    .line 722
    :goto_2
    const-string/jumbo v0, "cross-profile-packages"

    .line 723
    .line 724
    .line 725
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 726
    .line 727
    invoke-static {v3, v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 728
    .line 729
    .line 730
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 731
    .line 732
    if-eqz v0, :cond_2b

    .line 733
    .line 734
    const-string/jumbo v0, "factory_reset_protection_policy"

    .line 735
    .line 736
    .line 737
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    .line 739
    .line 740
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 741
    .line 742
    invoke-virtual {v3, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 743
    .line 744
    .line 745
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    .line 747
    .line 748
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 749
    .line 750
    if-eqz v0, :cond_2c

    .line 751
    .line 752
    const-string/jumbo v3, "suspend-personal-apps"

    .line 753
    .line 754
    .line 755
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 756
    .line 757
    .line 758
    :cond_2c
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 759
    .line 760
    cmp-long v0, v3, v5

    .line 761
    .line 762
    if-eqz v0, :cond_2d

    .line 763
    .line 764
    const-string/jumbo v0, "profile-max-time-off"

    .line 765
    .line 766
    .line 767
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 768
    .line 769
    .line 770
    :cond_2d
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 771
    .line 772
    cmp-long v0, v3, v5

    .line 773
    .line 774
    if-eqz v0, :cond_2e

    .line 775
    .line 776
    const-string/jumbo v0, "profile-off-deadline"

    .line 777
    .line 778
    .line 779
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 780
    .line 781
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 782
    .line 783
    .line 784
    :cond_2e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    .line 785
    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-nez v0, :cond_2f

    .line 791
    .line 792
    const-string/jumbo v0, "vpn-package"

    .line 793
    .line 794
    .line 795
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    .line 796
    .line 797
    invoke-static {p1, v0, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    .line 801
    .line 802
    if-eqz v0, :cond_30

    .line 803
    .line 804
    const-string/jumbo v3, "vpn-lockdown"

    .line 805
    .line 806
    .line 807
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 808
    .line 809
    .line 810
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    .line 811
    .line 812
    if-eqz v0, :cond_31

    .line 813
    .line 814
    const-string/jumbo v3, "common-criteria-mode"

    .line 815
    .line 816
    .line 817
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 818
    .line 819
    .line 820
    :cond_31
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 821
    .line 822
    if-eqz v0, :cond_32

    .line 823
    .line 824
    const-string/jumbo v3, "password-complexity"

    .line 825
    .line 826
    .line 827
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 828
    .line 829
    .line 830
    :cond_32
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 831
    .line 832
    const/4 v3, 0x3

    .line 833
    if-eq v0, v3, :cond_33

    .line 834
    .line 835
    const-string/jumbo v4, "nearby-notification-streaming-policy"

    .line 836
    .line 837
    .line 838
    invoke-static {p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 839
    .line 840
    .line 841
    :cond_33
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    .line 842
    .line 843
    if-eq v0, v3, :cond_34

    .line 844
    .line 845
    const-string/jumbo v3, "nearby-app-streaming-policy"

    .line 846
    .line 847
    .line 848
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 849
    .line 850
    .line 851
    :cond_34
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    .line 852
    .line 853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-nez v0, :cond_35

    .line 858
    .line 859
    const-string/jumbo v0, "organization-id"

    .line 860
    .line 861
    .line 862
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    .line 863
    .line 864
    invoke-static {p1, v0, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    :cond_35
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    .line 868
    .line 869
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    if-nez v0, :cond_36

    .line 874
    .line 875
    const-string/jumbo v0, "enrollment-specific-id"

    .line 876
    .line 877
    .line 878
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    .line 879
    .line 880
    invoke-static {p1, v0, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    :cond_36
    const-string v0, "admin-can-grant-sensors-permissions"

    .line 884
    .line 885
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    .line 886
    .line 887
    invoke-static {p1, v0, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 888
    .line 889
    .line 890
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 891
    .line 892
    if-eq v0, v2, :cond_37

    .line 893
    .line 894
    const-string/jumbo v3, "usb-data-signaling"

    .line 895
    .line 896
    .line 897
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 898
    .line 899
    .line 900
    :cond_37
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 901
    .line 902
    if-eqz v0, :cond_38

    .line 903
    .line 904
    const-string/jumbo v3, "wifi-min-security"

    .line 905
    .line 906
    .line 907
    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 908
    .line 909
    .line 910
    :cond_38
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 911
    .line 912
    if-eqz v0, :cond_3a

    .line 913
    .line 914
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    new-instance v3, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    .line 923
    .line 924
    const/4 v4, 0x0

    .line 925
    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    .line 926
    .line 927
    .line 928
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    check-cast v0, Ljava/util/List;

    .line 941
    .line 942
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 943
    .line 944
    invoke-virtual {v3}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    const-string/jumbo v4, "ssid"

    .line 949
    .line 950
    .line 951
    if-nez v3, :cond_39

    .line 952
    .line 953
    const-string/jumbo v2, "ssid-allowlist"

    .line 954
    .line 955
    .line 956
    invoke-static {p1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 957
    .line 958
    .line 959
    goto :goto_3

    .line 960
    :cond_39
    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 961
    .line 962
    invoke-virtual {v3}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    .line 963
    .line 964
    .line 965
    move-result v3

    .line 966
    if-ne v3, v2, :cond_3a

    .line 967
    .line 968
    const-string/jumbo v2, "ssid-denylist"

    .line 969
    .line 970
    .line 971
    invoke-static {p1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 972
    .line 973
    .line 974
    :cond_3a
    :goto_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 975
    .line 976
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-nez v0, :cond_3c

    .line 981
    .line 982
    const-string/jumbo v0, "preferential_network_service_configs"

    .line 983
    .line 984
    .line 985
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    .line 987
    .line 988
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 989
    .line 990
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 995
    .line 996
    .line 997
    move-result v3

    .line 998
    if-eqz v3, :cond_3b

    .line 999
    .line 1000
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    check-cast v3, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 1005
    .line 1006
    invoke-virtual {v3, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_4

    .line 1010
    :cond_3b
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1011
    .line 1012
    .line 1013
    :cond_3c
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    .line 1014
    .line 1015
    if-eqz v0, :cond_3d

    .line 1016
    .line 1017
    const-string/jumbo v2, "mte-policy"

    .line 1018
    .line 1019
    .line 1020
    invoke-static {p1, v2, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 1021
    .line 1022
    .line 1023
    :cond_3d
    const-string/jumbo v0, "caller-id-policy"

    .line 1024
    .line 1025
    .line 1026
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    .line 1027
    .line 1028
    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 1029
    .line 1030
    .line 1031
    const-string/jumbo v0, "contacts-policy"

    .line 1032
    .line 1033
    .line 1034
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    .line 1035
    .line 1036
    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 1037
    .line 1038
    .line 1039
    const-string/jumbo v0, "credential-manager-policy"

    .line 1040
    .line 1041
    .line 1042
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    .line 1043
    .line 1044
    invoke-static {p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 1045
    .line 1046
    .line 1047
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 1048
    .line 1049
    if-eqz v0, :cond_3e

    .line 1050
    .line 1051
    const-string/jumbo v0, "managed_subscriptions_policy"

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    .line 1056
    .line 1057
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 1058
    .line 1059
    invoke-virtual {v2, p1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1060
    .line 1061
    .line 1062
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    .line 1064
    .line 1065
    :cond_3e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    .line 1066
    .line 1067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v0

    .line 1071
    if-nez v0, :cond_3f

    .line 1072
    .line 1073
    const-string/jumbo v0, "dialer_package"

    .line 1074
    .line 1075
    .line 1076
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    .line 1077
    .line 1078
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    :cond_3f
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    .line 1082
    .line 1083
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v0

    .line 1087
    if-nez v0, :cond_40

    .line 1088
    .line 1089
    const-string/jumbo v0, "sms_package"

    .line 1090
    .line 1091
    .line 1092
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    .line 1093
    .line 1094
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    :cond_40
    const-string/jumbo v0, "password-recoverable"

    .line 1098
    .line 1099
    .line 1100
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordRecoverable:Z

    .line 1101
    .line 1102
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1103
    .line 1104
    .line 1105
    const-string/jumbo v0, "simplepassword-enabled"

    .line 1106
    .line 1107
    .line 1108
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->simplePasswordEnabled:Z

    .line 1109
    .line 1110
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1111
    .line 1112
    .line 1113
    const-string v0, "allow-storage-card"

    .line 1114
    .line 1115
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowStorageCard:Z

    .line 1116
    .line 1117
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1118
    .line 1119
    .line 1120
    const-string v0, "allow-wifi"

    .line 1121
    .line 1122
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    .line 1123
    .line 1124
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1125
    .line 1126
    .line 1127
    const-string v0, "allow-text-messaging"

    .line 1128
    .line 1129
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowTextMessaging:Z

    .line 1130
    .line 1131
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1132
    .line 1133
    .line 1134
    const-string v0, "allow-popimap-email"

    .line 1135
    .line 1136
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 1137
    .line 1138
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1139
    .line 1140
    .line 1141
    const-string v0, "allow-browser"

    .line 1142
    .line 1143
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBrowser:Z

    .line 1144
    .line 1145
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1146
    .line 1147
    .line 1148
    const-string v0, "allow-internet-sharing"

    .line 1149
    .line 1150
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowInternetSharing:Z

    .line 1151
    .line 1152
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1153
    .line 1154
    .line 1155
    const-string v0, "allow-bluetooth-mode"

    .line 1156
    .line 1157
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowBluetoothMode:I

    .line 1158
    .line 1159
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 1160
    .line 1161
    .line 1162
    const-string v0, "allow-Desktop-Sync"

    .line 1163
    .line 1164
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowDesktopSync:Z

    .line 1165
    .line 1166
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1167
    .line 1168
    .line 1169
    const-string v0, "allow-IrDA"

    .line 1170
    .line 1171
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->allowIrDA:Z

    .line 1172
    .line 1173
    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1174
    .line 1175
    .line 1176
    const-string/jumbo v0, "require-StorageCard-Encryption"

    .line 1177
    .line 1178
    .line 1179
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireStorageCardEncryption:Z

    .line 1180
    .line 1181
    invoke-static {p1, v0, p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1182
    .line 1183
    .line 1184
    return-void
.end method
