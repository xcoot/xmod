.class public final Lcom/android/server/devicepolicy/DevicePolicyData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAcceptedCaCertificates:Landroid/util/ArraySet;

.field public mAdminBroadcastPending:Z

.field public final mAdminList:Ljava/util/ArrayList;

.field public final mAdminMap:Landroid/util/ArrayMap;

.field public mAffiliationIds:Ljava/util/Set;

.field public mAppsSuspended:Z

.field public mBypassDevicePolicyManagementRoleQualifications:Z

.field public mCurrentInputMethodSet:Z

.field public mCurrentRoleHolder:Ljava/lang/String;

.field public final mDelegationMap:Landroid/util/ArrayMap;

.field public mDeviceProvisioningConfigApplied:Z

.field public mDoNotAskCredentialsOnBoot:Z

.field public mEffectiveKeepProfilesRunning:Z

.field public mFactoryResetFlags:I

.field public mFactoryResetReason:Ljava/lang/String;

.field public mFailedBiometricAttempts:I

.field public mFailedPasswordAttempts:I

.field public mFailedPasswordAttemptsFromGateKeeper:I

.field public mInitBundle:Landroid/os/PersistableBundle;

.field public mLastBugReportRequestTime:J

.field public mLastMaximumTimeToLock:J

.field public mLastNetworkLogsRetrievalTime:J

.field public mLastResetPassword:I

.field public mLastSecurityLogRetrievalTime:J

.field public mLockTaskFeatures:I

.field public final mLockTaskPackages:Ljava/util/List;

.field public mNewUserDisclaimer:Ljava/lang/String;

.field public final mOwnerInstalledCaCerts:Ljava/util/Set;

.field public mPaired:Z

.field public mPasswordOwner:I

.field public mPasswordTokenHandle:J

.field public mPasswordValidAtLastCheckpoint:Z

.field public mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public mPermissionPolicy:I

.field public final mRemovingAdmins:Ljava/util/ArrayList;

.field public mRestrictionsProvider:Landroid/content/ComponentName;

.field public mSecondaryLockscreenEnabled:Z

.field public mStatusBarDisabled:Z

.field public mUserControlDisabledPackages:Ljava/util/List;

.field public final mUserId:I

.field public mUserProvisioningState:I

.field public mUserSetupComplete:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 7
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 9
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 17
    const-wide/16 v2, -0x1

    .line 19
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 21
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 27
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 29
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 31
    new-instance v1, Landroid/util/ArrayMap;

    .line 33
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Landroid/util/ArraySet;

    .line 54
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 66
    const/16 v1, 0x10

    .line 68
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 70
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 72
    new-instance v1, Landroid/util/ArrayMap;

    .line 74
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 79
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 81
    new-instance v1, Landroid/util/ArraySet;

    .line 83
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 88
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 90
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 92
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 94
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 98
    new-instance v1, Landroid/util/ArraySet;

    .line 100
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 105
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 107
    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 110
    const-wide/16 v1, 0x0

    .line 112
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 114
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 116
    const-string/jumbo v1, "not_needed"

    .line 119
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 123
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 125
    return-void
.end method

.method public static load(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .locals 11

    .line 1
    const-string v0, "DevicePolicyManager"

    .line 3
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 10
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 13
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 16
    move-result-object v3

    .line 17
    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eq v4, v5, :cond_0

    .line 24
    const/4 v6, 0x2

    .line 25
    if-eq v4, v6, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    const-string/jumbo v6, "policies"

    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_27

    .line 41
    const-string/jumbo v4, "permission-provider"

    .line 44
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_1

    .line 50
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 53
    move-result-object v4

    .line 54
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p2

    .line 58
    move-object v1, v2

    .line 59
    goto/16 :goto_3

    .line 61
    :catch_1
    move-object v1, v2

    .line 62
    goto/16 :goto_4

    .line 64
    :cond_1
    :goto_1
    const-string/jumbo v4, "setup-complete"

    .line 67
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 81
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 83
    :cond_2
    const-string/jumbo v4, "device-paired"

    .line 86
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 100
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 102
    :cond_3
    const-string/jumbo v4, "device-provisioning-config-applied"

    .line 105
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_4

    .line 119
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 121
    :cond_4
    const-string/jumbo v4, "provisioning-state"

    .line 124
    const/4 v6, -0x1

    .line 125
    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 128
    move-result v4

    .line 129
    if-eq v4, v6, :cond_5

    .line 131
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    .line 133
    :cond_5
    const-string/jumbo v4, "permission-policy"

    .line 136
    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 139
    move-result v4

    .line 140
    if-eq v4, v6, :cond_6

    .line 142
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    .line 144
    :cond_6
    const-string/jumbo v4, "new-user-disclaimer"

    .line 147
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 153
    const-string/jumbo v4, "factory-reset-flags"

    .line 156
    const/4 v6, 0x0

    .line 157
    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 160
    move-result v4

    .line 161
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 163
    const-string/jumbo v4, "factory-reset-reason"

    .line 166
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v4

    .line 170
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 172
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 175
    move-result v4

    .line 176
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 178
    check-cast v7, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 190
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 193
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 195
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 197
    check-cast v7, Landroid/util/ArraySet;

    .line 199
    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 202
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 204
    check-cast v7, Landroid/util/ArraySet;

    .line 206
    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 209
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 211
    :cond_7
    :goto_2
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 214
    move-result v7

    .line 215
    if-eq v7, v5, :cond_28

    .line 217
    const/4 v8, 0x3

    .line 218
    if-ne v7, v8, :cond_8

    .line 220
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 223
    move-result v9

    .line 224
    if-le v9, v4, :cond_28

    .line 226
    :cond_8
    if-eq v7, v8, :cond_7

    .line 228
    const/4 v8, 0x4

    .line 229
    if-ne v7, v8, :cond_9

    .line 231
    goto :goto_2

    .line 232
    :cond_9
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 235
    move-result-object v7

    .line 236
    const-string v8, "admin"

    .line 238
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    const-string/jumbo v9, "name"

    .line 245
    if-eqz v8, :cond_a

    .line 247
    :try_start_2
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    move-result-object v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :try_start_3
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 254
    move-result-object v8

    .line 255
    invoke-interface {p2, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Landroid/app/admin/DeviceAdminInfo;

    .line 261
    if-eqz v8, :cond_7

    .line 263
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 266
    move-result-object v9

    .line 267
    invoke-virtual {v9, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v9

    .line 271
    xor-int/2addr v9, v5

    .line 272
    new-instance v10, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 274
    invoke-direct {v10, v8, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 277
    invoke-virtual {v10, v3, v9}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 280
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 282
    iget-object v9, v10, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 284
    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 287
    move-result-object v9

    .line 288
    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 291
    goto :goto_2

    .line 292
    :catch_2
    move-exception v8

    .line 293
    :try_start_4
    const-string v9, "Failed loading admin %s"

    .line 295
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 298
    move-result-object v7

    .line 299
    invoke-static {v0, v8, v9, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    goto :goto_2

    .line 303
    :cond_a
    const-string/jumbo v8, "permission-based-admin"

    .line 306
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v8

    .line 310
    if-eqz v8, :cond_b

    .line 312
    new-instance v7, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 314
    iget v8, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 316
    invoke-direct {v7, v8}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(I)V

    .line 319
    invoke-virtual {v7, v3, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 322
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 324
    goto :goto_2

    .line 325
    :cond_b
    const-string/jumbo v8, "delegation"

    .line 328
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result v8

    .line 332
    if-eqz v8, :cond_d

    .line 334
    const-string/jumbo v7, "delegatePackage"

    .line 337
    invoke-interface {v3, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    move-result-object v7

    .line 341
    const-string/jumbo v8, "scope"

    .line 344
    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    move-result-object v8

    .line 348
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 350
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-result-object v9

    .line 354
    check-cast v9, Ljava/util/List;

    .line 356
    if-nez v9, :cond_c

    .line 358
    new-instance v9, Ljava/util/ArrayList;

    .line 360
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 365
    invoke-virtual {v10, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_c
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 371
    move-result v7

    .line 372
    if-nez v7, :cond_7

    .line 374
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    goto/16 :goto_2

    .line 379
    :cond_d
    const-string/jumbo v8, "failed-password-attempts"

    .line 382
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    move-result v8
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 386
    const-string/jumbo v10, "value"

    .line 389
    if-eqz v8, :cond_e

    .line 391
    :try_start_5
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-result v7

    .line 395
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 397
    goto/16 :goto_2

    .line 399
    :cond_e
    const-string/jumbo v8, "failed-password-attempts-from-gatekeeper"

    .line 402
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v8

    .line 406
    if-eqz v8, :cond_f

    .line 408
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-result v7

    .line 412
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 414
    goto/16 :goto_2

    .line 416
    :cond_f
    const-string/jumbo v8, "failed-biometric-attempts"

    .line 419
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    move-result v8

    .line 423
    if-eqz v8, :cond_10

    .line 425
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-result v7

    .line 429
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 431
    goto/16 :goto_2

    .line 433
    :cond_10
    const-string/jumbo v8, "last-resetpassword-admin"

    .line 436
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    move-result v8

    .line 440
    if-eqz v8, :cond_11

    .line 442
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-result v7

    .line 446
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 448
    goto/16 :goto_2

    .line 450
    :cond_11
    const-string/jumbo v8, "password-owner"

    .line 453
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    move-result v8

    .line 457
    if-eqz v8, :cond_12

    .line 459
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-result v7

    .line 463
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 465
    goto/16 :goto_2

    .line 467
    :cond_12
    const-string v8, "accepted-ca-certificate"

    .line 469
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result v8

    .line 473
    if-eqz v8, :cond_13

    .line 475
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 477
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    move-result-object v8

    .line 481
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 484
    goto/16 :goto_2

    .line 486
    :cond_13
    const-string/jumbo v8, "lock-task-component"

    .line 489
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    move-result v8

    .line 493
    if-eqz v8, :cond_14

    .line 495
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 497
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    move-result-object v8

    .line 501
    check-cast v7, Ljava/util/ArrayList;

    .line 503
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    goto/16 :goto_2

    .line 508
    :cond_14
    const-string/jumbo v8, "lock-task-features"

    .line 511
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    move-result v8

    .line 515
    if-eqz v8, :cond_15

    .line 517
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    move-result v7

    .line 521
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 523
    goto/16 :goto_2

    .line 525
    :cond_15
    const-string/jumbo v8, "secondary-lock-screen"

    .line 528
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    move-result v8

    .line 532
    if-eqz v8, :cond_16

    .line 534
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 537
    move-result v7

    .line 538
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 540
    goto/16 :goto_2

    .line 542
    :cond_16
    const-string/jumbo v8, "statusbar"

    .line 545
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    move-result v8

    .line 549
    if-eqz v8, :cond_17

    .line 551
    const-string/jumbo v7, "disabled"

    .line 554
    invoke-interface {v3, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 557
    move-result v7

    .line 558
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 560
    goto/16 :goto_2

    .line 562
    :cond_17
    const-string/jumbo v8, "do-not-ask-credentials-on-boot"

    .line 565
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    move-result v8

    .line 569
    if-eqz v8, :cond_18

    .line 571
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 573
    goto/16 :goto_2

    .line 575
    :cond_18
    const-string v8, "affiliation-id"

    .line 577
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    move-result v8

    .line 581
    if-eqz v8, :cond_19

    .line 583
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 585
    const-string/jumbo v8, "id"

    .line 588
    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    move-result-object v8

    .line 592
    check-cast v7, Landroid/util/ArraySet;

    .line 594
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 597
    goto/16 :goto_2

    .line 599
    :cond_19
    const-string/jumbo v8, "last-security-log-retrieval"

    .line 602
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    move-result v8

    .line 606
    if-eqz v8, :cond_1a

    .line 608
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 611
    move-result-wide v7

    .line 612
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 614
    goto/16 :goto_2

    .line 616
    :cond_1a
    const-string/jumbo v8, "last-bug-report-request"

    .line 619
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    move-result v8

    .line 623
    if-eqz v8, :cond_1b

    .line 625
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 628
    move-result-wide v7

    .line 629
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 631
    goto/16 :goto_2

    .line 633
    :cond_1b
    const-string/jumbo v8, "last-network-log-retrieval"

    .line 636
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    move-result v8

    .line 640
    if-eqz v8, :cond_1c

    .line 642
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 645
    move-result-wide v7

    .line 646
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 648
    goto/16 :goto_2

    .line 650
    :cond_1c
    const-string v8, "admin-broadcast-pending"

    .line 652
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    move-result v8

    .line 656
    if-eqz v8, :cond_1d

    .line 658
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    move-result-object v7

    .line 662
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 665
    move-result-object v8

    .line 666
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    move-result v7

    .line 670
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 672
    goto/16 :goto_2

    .line 674
    :cond_1d
    const-string/jumbo v8, "initialization-bundle"

    .line 677
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    move-result v8

    .line 681
    if-eqz v8, :cond_1e

    .line 683
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 686
    move-result-object v7

    .line 687
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 689
    goto/16 :goto_2

    .line 691
    :cond_1e
    const-string/jumbo v8, "password-token"

    .line 694
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    move-result v8

    .line 698
    if-eqz v8, :cond_1f

    .line 700
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 703
    move-result-wide v7

    .line 704
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 706
    goto/16 :goto_2

    .line 708
    :cond_1f
    const-string/jumbo v8, "current-ime-set"

    .line 711
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 714
    move-result v8

    .line 715
    if-eqz v8, :cond_20

    .line 717
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 719
    goto/16 :goto_2

    .line 721
    :cond_20
    const-string/jumbo v8, "owner-installed-ca-cert"

    .line 724
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 727
    move-result v8

    .line 728
    if-eqz v8, :cond_21

    .line 730
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 732
    const-string v8, "alias"

    .line 734
    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    move-result-object v8

    .line 738
    check-cast v7, Landroid/util/ArraySet;

    .line 740
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 743
    goto/16 :goto_2

    .line 745
    :cond_21
    const-string v8, "apps-suspended"

    .line 747
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 750
    move-result v8

    .line 751
    if-eqz v8, :cond_22

    .line 753
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 756
    move-result v7

    .line 757
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 759
    goto/16 :goto_2

    .line 761
    :cond_22
    const-string/jumbo v8, "bypass-role-qualifications"

    .line 764
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    move-result v8

    .line 768
    if-eqz v8, :cond_23

    .line 770
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 772
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 775
    move-result-object v7

    .line 776
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    .line 778
    goto/16 :goto_2

    .line 780
    :cond_23
    const-string/jumbo v8, "keep-profiles-running"

    .line 783
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    move-result v8

    .line 787
    if-eqz v8, :cond_24

    .line 789
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 792
    move-result v7

    .line 793
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 795
    goto/16 :goto_2

    .line 797
    :cond_24
    const-string/jumbo v8, "protected-packages"

    .line 800
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    move-result v8

    .line 804
    if-eqz v8, :cond_26

    .line 806
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 808
    if-nez v7, :cond_25

    .line 810
    new-instance v7, Ljava/util/ArrayList;

    .line 812
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 815
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 817
    :cond_25
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 819
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 822
    move-result-object v8

    .line 823
    check-cast v7, Ljava/util/ArrayList;

    .line 825
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    goto/16 :goto_2

    .line 830
    :cond_26
    const-string v8, "Unknown tag: %s"

    .line 832
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 835
    move-result-object v7

    .line 836
    invoke-static {v0, v8, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 842
    goto/16 :goto_2

    .line 844
    :cond_27
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 846
    new-instance p3, Ljava/lang/StringBuilder;

    .line 848
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    const-string v1, "Settings do not start with policies tag: found "

    .line 853
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    move-result-object p3

    .line 863
    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 866
    throw p2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    .line 867
    :catch_3
    move-exception p2

    .line 868
    :goto_3
    const-string/jumbo p3, "failed parsing %s"

    .line 871
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 874
    move-result-object p1

    .line 875
    invoke-static {v0, p2, p3, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    :catch_4
    :goto_4
    move-object v2, v1

    .line 879
    :cond_28
    if-eqz v2, :cond_29

    .line 881
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 884
    :catch_5
    :cond_29
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 886
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 888
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 891
    move-result-object p0

    .line 892
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 895
    return-void
.end method

.method public static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;)Z
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v1, "keep-profiles-running"

    .line 6
    const-string/jumbo v2, "bypass-role-qualifications"

    .line 9
    const-string v3, "apps-suspended"

    .line 11
    const-string/jumbo v4, "owner-installed-ca-cert"

    .line 14
    const-string/jumbo v5, "current-ime-set"

    .line 17
    const-string/jumbo v6, "password-token"

    .line 20
    const-string/jumbo v7, "initialization-bundle"

    .line 23
    const-string v8, "admin-broadcast-pending"

    .line 25
    const-string/jumbo v9, "last-network-log-retrieval"

    .line 28
    const-string/jumbo v10, "last-bug-report-request"

    .line 31
    const-string/jumbo v11, "last-security-log-retrieval"

    .line 34
    const-string v12, "affiliation-id"

    .line 36
    const-string/jumbo v13, "do-not-ask-credentials-on-boot"

    .line 39
    const-string/jumbo v14, "statusbar"

    .line 42
    const-string/jumbo v15, "secondary-lock-screen"

    .line 45
    move-object/from16 v16, v1

    .line 47
    const-string/jumbo v1, "lock-task-features"

    .line 50
    move-object/from16 v17, v2

    .line 52
    const-string/jumbo v2, "lock-task-component"

    .line 55
    move-object/from16 v18, v3

    .line 57
    const-string v3, "accepted-ca-certificate"

    .line 59
    move-object/from16 v19, v4

    .line 61
    const-string/jumbo v4, "last-resetpassword-admin"

    .line 64
    move-object/from16 v20, v5

    .line 66
    const-string/jumbo v5, "failed-biometric-attempts"

    .line 69
    move-object/from16 v21, v6

    .line 71
    const-string/jumbo v6, "failed-password-attempts-from-gatekeeper"

    .line 74
    move-object/from16 v22, v7

    .line 76
    const-string/jumbo v7, "failed-password-attempts"

    .line 79
    move-object/from16 v23, v8

    .line 81
    const-string/jumbo v8, "password-owner"

    .line 84
    move-object/from16 v24, v9

    .line 86
    const-string/jumbo v9, "permission-based-admin"

    .line 89
    move-object/from16 v25, v10

    .line 91
    const-string v10, "admin"

    .line 93
    move-object/from16 v26, v11

    .line 95
    const-string/jumbo v11, "delegation"

    .line 98
    move-object/from16 v27, v12

    .line 100
    const-string/jumbo v12, "policies"

    .line 103
    move-object/from16 v28, v13

    .line 105
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    .line 108
    move-result-object v13
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 109
    move-object/from16 v29, v14

    .line 111
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    .line 113
    move-object/from16 v30, v15

    .line 115
    const/4 v15, 0x0

    .line 116
    invoke-direct {v14, v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 119
    :try_start_2
    invoke-static {v14}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 122
    move-result-object v15
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    move-object/from16 v31, v13

    .line 125
    :try_start_3
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 127
    move-object/from16 v32, v14

    .line 129
    const/4 v14, 0x0

    .line 130
    :try_start_4
    invoke-interface {v15, v14, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    invoke-interface {v15, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 138
    if-eqz v13, :cond_0

    .line 140
    const-string/jumbo v14, "permission-provider"

    .line 143
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 146
    move-result-object v13

    .line 147
    move-object/from16 v33, v12

    .line 149
    const/4 v12, 0x0

    .line 150
    invoke-interface {v15, v12, v14, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    :goto_0
    move-object/from16 v13, v31

    .line 157
    goto/16 :goto_9

    .line 159
    :cond_0
    move-object/from16 v33, v12

    .line 161
    :goto_1
    iget-boolean v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 163
    const/4 v13, 0x1

    .line 164
    if-eqz v12, :cond_1

    .line 166
    const-string/jumbo v12, "setup-complete"

    .line 169
    const/4 v14, 0x0

    .line 170
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    :cond_1
    iget-boolean v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 175
    if-eqz v12, :cond_2

    .line 177
    const-string/jumbo v12, "device-paired"

    .line 180
    const/4 v14, 0x0

    .line 181
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    :cond_2
    iget-boolean v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 186
    if-eqz v12, :cond_3

    .line 188
    const-string/jumbo v12, "device-provisioning-config-applied"

    .line 191
    const/4 v14, 0x0

    .line 192
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    :cond_3
    iget v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    .line 197
    if-eqz v12, :cond_4

    .line 199
    const-string/jumbo v14, "provisioning-state"

    .line 202
    const/4 v13, 0x0

    .line 203
    invoke-interface {v15, v13, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    :cond_4
    iget v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    .line 208
    if-eqz v12, :cond_5

    .line 210
    const-string/jumbo v13, "permission-policy"

    .line 213
    const/4 v14, 0x0

    .line 214
    invoke-interface {v15, v14, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_5
    const-string/jumbo v12, "needed"

    .line 220
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 222
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v12

    .line 226
    if-eqz v12, :cond_6

    .line 228
    const-string/jumbo v12, "new-user-disclaimer"

    .line 231
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 233
    const/4 v14, 0x0

    .line 234
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    :cond_6
    iget v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 239
    if-eqz v12, :cond_7

    .line 241
    const-string/jumbo v13, "factory-reset-flags"

    .line 244
    const/4 v14, 0x0

    .line 245
    invoke-interface {v15, v14, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    :cond_7
    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 250
    if-eqz v12, :cond_8

    .line 252
    const-string/jumbo v13, "factory-reset-reason"

    .line 255
    const/4 v14, 0x0

    .line 256
    invoke-interface {v15, v14, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    :cond_8
    const/4 v12, 0x0

    .line 260
    :goto_2
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 262
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 265
    move-result v13

    .line 266
    if-ge v12, v13, :cond_a

    .line 268
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 270
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 273
    move-result-object v13

    .line 274
    check-cast v13, Ljava/lang/String;

    .line 276
    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 278
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 281
    move-result-object v14

    .line 282
    check-cast v14, Ljava/util/List;

    .line 284
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    move-result-object v14

    .line 288
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    move-result v34

    .line 292
    if-eqz v34, :cond_9

    .line 294
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    move-result-object v34

    .line 298
    move-object/from16 v35, v14

    .line 300
    move-object/from16 v14, v34

    .line 302
    check-cast v14, Ljava/lang/String;

    .line 304
    move-object/from16 v34, v1

    .line 306
    const/4 v1, 0x0

    .line 307
    invoke-interface {v15, v1, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    move-object/from16 v36, v2

    .line 312
    const-string/jumbo v2, "delegatePackage"

    .line 315
    invoke-interface {v15, v1, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    const-string/jumbo v2, "scope"

    .line 321
    invoke-interface {v15, v1, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    invoke-interface {v15, v1, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    move-object/from16 v1, v34

    .line 329
    move-object/from16 v14, v35

    .line 331
    move-object/from16 v2, v36

    .line 333
    goto :goto_3

    .line 334
    :cond_9
    move-object/from16 v34, v1

    .line 336
    move-object/from16 v36, v2

    .line 338
    add-int/lit8 v12, v12, 0x1

    .line 340
    goto :goto_2

    .line 341
    :cond_a
    move-object/from16 v34, v1

    .line 343
    move-object/from16 v36, v2

    .line 345
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 350
    move-result v1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 351
    const/4 v2, 0x0

    .line 352
    :goto_4
    const-string/jumbo v11, "name"

    .line 355
    if-ge v2, v1, :cond_c

    .line 357
    :try_start_5
    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 359
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 362
    move-result-object v12

    .line 363
    check-cast v12, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 365
    if-eqz v12, :cond_b

    .line 367
    const/4 v13, 0x0

    .line 368
    invoke-interface {v15, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    iget-object v14, v12, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 373
    invoke-virtual {v14}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 376
    move-result-object v14

    .line 377
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 380
    move-result-object v14

    .line 381
    invoke-interface {v15, v13, v11, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    invoke-virtual {v12, v15}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 387
    invoke-interface {v15, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 392
    goto :goto_4

    .line 393
    :cond_c
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 395
    if-eqz v1, :cond_d

    .line 397
    const/4 v1, 0x0

    .line 398
    invoke-interface {v15, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 403
    invoke-virtual {v2, v15}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 406
    invoke-interface {v15, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    :cond_d
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 411
    const-string/jumbo v2, "value"

    .line 414
    if-ltz v1, :cond_e

    .line 416
    const/4 v1, 0x0

    .line 417
    :try_start_6
    invoke-interface {v15, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    iget v9, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 422
    invoke-interface {v15, v1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    invoke-interface {v15, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    :cond_e
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 430
    if-eqz v1, :cond_f

    .line 432
    const/4 v1, 0x0

    .line 433
    invoke-interface {v15, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 438
    invoke-interface {v15, v1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    invoke-interface {v15, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    :cond_f
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 446
    if-eqz v1, :cond_10

    .line 448
    const/4 v1, 0x0

    .line 449
    invoke-interface {v15, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 454
    invoke-interface {v15, v1, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    invoke-interface {v15, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    :cond_10
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 462
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_11

    .line 468
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 470
    if-eqz v1, :cond_11

    .line 472
    const/4 v1, 0x0

    .line 473
    invoke-interface {v15, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    iget v6, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 478
    invoke-interface {v15, v1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    invoke-interface {v15, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    :cond_11
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 486
    const/4 v5, -0x1

    .line 487
    if-eq v1, v5, :cond_12

    .line 489
    const/4 v1, 0x0

    .line 490
    invoke-interface {v15, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 495
    invoke-interface {v15, v1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    invoke-interface {v15, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    :cond_12
    const/4 v1, 0x0

    .line 502
    :goto_5
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 504
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 507
    move-result v4

    .line 508
    if-ge v1, v4, :cond_13

    .line 510
    const/4 v4, 0x0

    .line 511
    invoke-interface {v15, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 516
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 519
    move-result-object v5

    .line 520
    check-cast v5, Ljava/lang/String;

    .line 522
    invoke-interface {v15, v4, v11, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    invoke-interface {v15, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    add-int/lit8 v1, v1, 0x1

    .line 530
    goto :goto_5

    .line 531
    :cond_13
    const/4 v1, 0x0

    .line 532
    :goto_6
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 534
    check-cast v3, Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 539
    move-result v3

    .line 540
    if-ge v1, v3, :cond_14

    .line 542
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 544
    check-cast v3, Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 549
    move-result-object v3

    .line 550
    check-cast v3, Ljava/lang/String;

    .line 552
    move-object/from16 v4, v36

    .line 554
    const/4 v5, 0x0

    .line 555
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    invoke-interface {v15, v5, v11, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    add-int/lit8 v1, v1, 0x1

    .line 566
    move-object/from16 v36, v4

    .line 568
    goto :goto_6

    .line 569
    :cond_14
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 571
    if-eqz v1, :cond_15

    .line 573
    move-object/from16 v1, v34

    .line 575
    const/4 v3, 0x0

    .line 576
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    iget v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 581
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    :cond_15
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 589
    if-eqz v1, :cond_16

    .line 591
    move-object/from16 v1, v30

    .line 593
    const/4 v3, 0x0

    .line 594
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    const/4 v4, 0x1

    .line 598
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    :cond_16
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 606
    if-eqz v1, :cond_17

    .line 608
    move-object/from16 v1, v29

    .line 610
    const/4 v3, 0x0

    .line 611
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    const-string/jumbo v4, "disabled"

    .line 617
    iget-boolean v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 619
    invoke-interface {v15, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    :cond_17
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 627
    if-eqz v1, :cond_18

    .line 629
    move-object/from16 v1, v28

    .line 631
    const/4 v3, 0x0

    .line 632
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 635
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    :cond_18
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 640
    check-cast v1, Landroid/util/ArraySet;

    .line 642
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 645
    move-result-object v1

    .line 646
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_19

    .line 652
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Ljava/lang/String;

    .line 658
    move-object/from16 v4, v27

    .line 660
    const/4 v5, 0x0

    .line 661
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 664
    const-string/jumbo v6, "id"

    .line 667
    invoke-interface {v15, v5, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 673
    move-object/from16 v27, v4

    .line 675
    goto :goto_7

    .line 676
    :cond_19
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 678
    const-wide/16 v5, 0x0

    .line 680
    cmp-long v1, v3, v5

    .line 682
    if-ltz v1, :cond_1a

    .line 684
    move-object/from16 v1, v26

    .line 686
    const/4 v3, 0x0

    .line 687
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    iget-wide v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 692
    invoke-interface {v15, v3, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 695
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 698
    :cond_1a
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 700
    cmp-long v1, v3, v5

    .line 702
    if-ltz v1, :cond_1b

    .line 704
    move-object/from16 v1, v25

    .line 706
    const/4 v3, 0x0

    .line 707
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    iget-wide v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 712
    invoke-interface {v15, v3, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    :cond_1b
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 720
    cmp-long v1, v3, v5

    .line 722
    if-ltz v1, :cond_1c

    .line 724
    move-object/from16 v1, v24

    .line 726
    const/4 v3, 0x0

    .line 727
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    iget-wide v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 732
    invoke-interface {v15, v3, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 735
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    :cond_1c
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 740
    if-eqz v1, :cond_1d

    .line 742
    move-object/from16 v1, v23

    .line 744
    const/4 v3, 0x0

    .line 745
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 750
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    :cond_1d
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 758
    if-eqz v1, :cond_1e

    .line 760
    move-object/from16 v1, v22

    .line 762
    const/4 v3, 0x0

    .line 763
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 768
    invoke-virtual {v4, v15}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 771
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    :cond_1e
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 776
    cmp-long v1, v3, v5

    .line 778
    if-eqz v1, :cond_1f

    .line 780
    move-object/from16 v1, v21

    .line 782
    const/4 v3, 0x0

    .line 783
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    iget-wide v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 788
    invoke-interface {v15, v3, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 791
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    :cond_1f
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 796
    if-eqz v1, :cond_20

    .line 798
    move-object/from16 v1, v20

    .line 800
    const/4 v3, 0x0

    .line 801
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    :cond_20
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 809
    check-cast v1, Landroid/util/ArraySet;

    .line 811
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 814
    move-result-object v1

    .line 815
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 818
    move-result v3

    .line 819
    if-eqz v3, :cond_21

    .line 821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 824
    move-result-object v3

    .line 825
    check-cast v3, Ljava/lang/String;

    .line 827
    move-object/from16 v4, v19

    .line 829
    const/4 v5, 0x0

    .line 830
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    const-string v6, "alias"

    .line 835
    invoke-interface {v15, v5, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    move-object/from16 v19, v4

    .line 843
    goto :goto_8

    .line 844
    :cond_21
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 846
    if-eqz v1, :cond_22

    .line 848
    move-object/from16 v1, v18

    .line 850
    const/4 v3, 0x0

    .line 851
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 856
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    :cond_22
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 864
    if-eqz v1, :cond_23

    .line 866
    move-object/from16 v1, v17

    .line 868
    const/4 v3, 0x0

    .line 869
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 872
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    .line 874
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 877
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    :cond_23
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 882
    if-eqz v1, :cond_24

    .line 884
    move-object/from16 v1, v16

    .line 886
    const/4 v3, 0x0

    .line 887
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 892
    invoke-interface {v15, v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 898
    :cond_24
    move-object/from16 v0, v33

    .line 900
    const/4 v1, 0x0

    .line 901
    invoke-interface {v15, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 907
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->flush()V

    .line 910
    invoke-static/range {v32 .. v32}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 913
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V

    .line 916
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 919
    const/4 v0, 0x1

    .line 920
    return v0

    .line 921
    :catch_1
    move-exception v0

    .line 922
    move-object/from16 v32, v14

    .line 924
    goto/16 :goto_0

    .line 926
    :catch_2
    move-exception v0

    .line 927
    move-object/from16 v31, v13

    .line 929
    move-object/from16 v32, v14

    .line 931
    goto :goto_9

    .line 932
    :catch_3
    move-exception v0

    .line 933
    move-object/from16 v31, v13

    .line 935
    const/4 v1, 0x0

    .line 936
    move-object/from16 v32, v1

    .line 938
    goto :goto_9

    .line 939
    :catch_4
    move-exception v0

    .line 940
    const/4 v1, 0x0

    .line 941
    move-object v13, v1

    .line 942
    move-object/from16 v32, v13

    .line 944
    :goto_9
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 947
    move-result-object v1

    .line 948
    const-string v2, "DevicePolicyManager"

    .line 950
    const-string/jumbo v3, "failed writing file %s"

    .line 953
    invoke-static {v2, v0, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    if-eqz v32, :cond_25

    .line 958
    :try_start_7
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 961
    :catch_5
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 964
    const/4 v1, 0x0

    .line 965
    return v1
.end method


# virtual methods
.method public final validatePasswordOwner()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 3
    if-ltz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    :goto_0
    if-ltz v0, :cond_1

    .line 15
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 23
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    .line 26
    move-result v1

    .line 27
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 29
    if-ne v1, v2, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v0

    .line 41
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "DevicePolicyManager"

    .line 47
    const-string v2, "Previous password owner %s no longer active; disabling"

    .line 49
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 55
    :cond_2
    :goto_1
    return-void
.end method
