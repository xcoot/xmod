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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 16
    .line 17
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 26
    .line 27
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 30
    .line 31
    new-instance v1, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 37
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance v1, Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 58
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 65
    .line 66
    const/16 v1, 0x10

    .line 67
    .line 68
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 71
    .line 72
    new-instance v1, Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 80
    .line 81
    new-instance v1, Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 87
    .line 88
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 89
    .line 90
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 91
    .line 92
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 93
    .line 94
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 97
    .line 98
    new-instance v1, Landroid/util/ArraySet;

    .line 99
    .line 100
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 104
    .line 105
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 109
    .line 110
    const-wide/16 v1, 0x0

    .line 111
    .line 112
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 113
    .line 114
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 115
    .line 116
    const-string/jumbo v1, "not_needed"

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 120
    .line 121
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 122
    .line 123
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 124
    .line 125
    return-void
.end method

.method public static load(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .locals 11

    .line 1
    const-string v0, "DevicePolicyManager"

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eq v4, v5, :cond_0

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    if-eq v4, v6, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string/jumbo v6, "policies"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_27

    .line 40
    .line 41
    const-string/jumbo v4, "permission-provider"

    .line 42
    .line 43
    .line 44
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p2

    .line 58
    move-object v1, v2

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :catch_1
    move-object v1, v2

    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_1
    :goto_1
    const-string/jumbo v4, "setup-complete"

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 82
    .line 83
    :cond_2
    const-string/jumbo v4, "device-paired"

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 101
    .line 102
    :cond_3
    const-string/jumbo v4, "device-provisioning-config-applied"

    .line 103
    .line 104
    .line 105
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 120
    .line 121
    :cond_4
    const-string/jumbo v4, "provisioning-state"

    .line 122
    .line 123
    .line 124
    const/4 v6, -0x1

    .line 125
    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eq v4, v6, :cond_5

    .line 130
    .line 131
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    .line 132
    .line 133
    :cond_5
    const-string/jumbo v4, "permission-policy"

    .line 134
    .line 135
    .line 136
    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eq v4, v6, :cond_6

    .line 141
    .line 142
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    .line 143
    .line 144
    :cond_6
    const-string/jumbo v4, "new-user-disclaimer"

    .line 145
    .line 146
    .line 147
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 152
    .line 153
    const-string/jumbo v4, "factory-reset-flags"

    .line 154
    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 162
    .line 163
    const-string/jumbo v4, "factory-reset-reason"

    .line 164
    .line 165
    .line 166
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 171
    .line 172
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 177
    .line 178
    check-cast v7, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 181
    .line 182
    .line 183
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 186
    .line 187
    .line 188
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 189
    .line 190
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 191
    .line 192
    .line 193
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 194
    .line 195
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 196
    .line 197
    check-cast v7, Landroid/util/ArraySet;

    .line 198
    .line 199
    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 200
    .line 201
    .line 202
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 203
    .line 204
    check-cast v7, Landroid/util/ArraySet;

    .line 205
    .line 206
    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 207
    .line 208
    .line 209
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 210
    .line 211
    :cond_7
    :goto_2
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-eq v7, v5, :cond_28

    .line 216
    .line 217
    const/4 v8, 0x3

    .line 218
    if-ne v7, v8, :cond_8

    .line 219
    .line 220
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-le v9, v4, :cond_28

    .line 225
    .line 226
    :cond_8
    if-eq v7, v8, :cond_7

    .line 227
    .line 228
    const/4 v8, 0x4

    .line 229
    if-ne v7, v8, :cond_9

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_9
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    const-string v8, "admin"

    .line 237
    .line 238
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
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

    .line 243
    .line 244
    .line 245
    if-eqz v8, :cond_a

    .line 246
    .line 247
    :try_start_2
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
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

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-interface {p2, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Landroid/app/admin/DeviceAdminInfo;

    .line 260
    .line 261
    if-eqz v8, :cond_7

    .line 262
    .line 263
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-virtual {v9, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    xor-int/2addr v9, v5

    .line 272
    new-instance v10, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 273
    .line 274
    invoke-direct {v10, v8, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10, v3, v9}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 278
    .line 279
    .line 280
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 281
    .line 282
    iget-object v9, v10, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 283
    .line 284
    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :catch_2
    move-exception v8

    .line 293
    :try_start_4
    const-string v9, "Failed loading admin %s"

    .line 294
    .line 295
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-static {v0, v8, v9, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_a
    const-string/jumbo v8, "permission-based-admin"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    if-eqz v8, :cond_b

    .line 311
    .line 312
    new-instance v7, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 313
    .line 314
    iget v8, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 315
    .line 316
    invoke-direct {v7, v8}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v3, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 320
    .line 321
    .line 322
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_b
    const-string/jumbo v8, "delegation"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    if-eqz v8, :cond_d

    .line 333
    .line 334
    const-string/jumbo v7, "delegatePackage"

    .line 335
    .line 336
    .line 337
    invoke-interface {v3, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    const-string/jumbo v8, "scope"

    .line 342
    .line 343
    .line 344
    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 349
    .line 350
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    check-cast v9, Ljava/util/List;

    .line 355
    .line 356
    if-nez v9, :cond_c

    .line 357
    .line 358
    new-instance v9, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 364
    .line 365
    invoke-virtual {v10, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    :cond_c
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-nez v7, :cond_7

    .line 373
    .line 374
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :cond_d
    const-string/jumbo v8, "failed-password-attempts"

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
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

    .line 387
    .line 388
    .line 389
    if-eqz v8, :cond_e

    .line 390
    .line 391
    :try_start_5
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 396
    .line 397
    goto/16 :goto_2

    .line 398
    .line 399
    :cond_e
    const-string/jumbo v8, "failed-password-attempts-from-gatekeeper"

    .line 400
    .line 401
    .line 402
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    if-eqz v8, :cond_f

    .line 407
    .line 408
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 413
    .line 414
    goto/16 :goto_2

    .line 415
    .line 416
    :cond_f
    const-string/jumbo v8, "failed-biometric-attempts"

    .line 417
    .line 418
    .line 419
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    if-eqz v8, :cond_10

    .line 424
    .line 425
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 430
    .line 431
    goto/16 :goto_2

    .line 432
    .line 433
    :cond_10
    const-string/jumbo v8, "last-resetpassword-admin"

    .line 434
    .line 435
    .line 436
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-eqz v8, :cond_11

    .line 441
    .line 442
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 447
    .line 448
    goto/16 :goto_2

    .line 449
    .line 450
    :cond_11
    const-string/jumbo v8, "password-owner"

    .line 451
    .line 452
    .line 453
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v8

    .line 457
    if-eqz v8, :cond_12

    .line 458
    .line 459
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 464
    .line 465
    goto/16 :goto_2

    .line 466
    .line 467
    :cond_12
    const-string v8, "accepted-ca-certificate"

    .line 468
    .line 469
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    if-eqz v8, :cond_13

    .line 474
    .line 475
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 476
    .line 477
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    goto/16 :goto_2

    .line 485
    .line 486
    :cond_13
    const-string/jumbo v8, "lock-task-component"

    .line 487
    .line 488
    .line 489
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    if-eqz v8, :cond_14

    .line 494
    .line 495
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 496
    .line 497
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v8

    .line 501
    check-cast v7, Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    goto/16 :goto_2

    .line 507
    .line 508
    :cond_14
    const-string/jumbo v8, "lock-task-features"

    .line 509
    .line 510
    .line 511
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    if-eqz v8, :cond_15

    .line 516
    .line 517
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 522
    .line 523
    goto/16 :goto_2

    .line 524
    .line 525
    :cond_15
    const-string/jumbo v8, "secondary-lock-screen"

    .line 526
    .line 527
    .line 528
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v8

    .line 532
    if-eqz v8, :cond_16

    .line 533
    .line 534
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 539
    .line 540
    goto/16 :goto_2

    .line 541
    .line 542
    :cond_16
    const-string/jumbo v8, "statusbar"

    .line 543
    .line 544
    .line 545
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    if-eqz v8, :cond_17

    .line 550
    .line 551
    const-string/jumbo v7, "disabled"

    .line 552
    .line 553
    .line 554
    invoke-interface {v3, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 559
    .line 560
    goto/16 :goto_2

    .line 561
    .line 562
    :cond_17
    const-string/jumbo v8, "do-not-ask-credentials-on-boot"

    .line 563
    .line 564
    .line 565
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v8

    .line 569
    if-eqz v8, :cond_18

    .line 570
    .line 571
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 572
    .line 573
    goto/16 :goto_2

    .line 574
    .line 575
    :cond_18
    const-string v8, "affiliation-id"

    .line 576
    .line 577
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v8

    .line 581
    if-eqz v8, :cond_19

    .line 582
    .line 583
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 584
    .line 585
    const-string/jumbo v8, "id"

    .line 586
    .line 587
    .line 588
    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    check-cast v7, Landroid/util/ArraySet;

    .line 593
    .line 594
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    goto/16 :goto_2

    .line 598
    .line 599
    :cond_19
    const-string/jumbo v8, "last-security-log-retrieval"

    .line 600
    .line 601
    .line 602
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v8

    .line 606
    if-eqz v8, :cond_1a

    .line 607
    .line 608
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 609
    .line 610
    .line 611
    move-result-wide v7

    .line 612
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 613
    .line 614
    goto/16 :goto_2

    .line 615
    .line 616
    :cond_1a
    const-string/jumbo v8, "last-bug-report-request"

    .line 617
    .line 618
    .line 619
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v8

    .line 623
    if-eqz v8, :cond_1b

    .line 624
    .line 625
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 626
    .line 627
    .line 628
    move-result-wide v7

    .line 629
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 630
    .line 631
    goto/16 :goto_2

    .line 632
    .line 633
    :cond_1b
    const-string/jumbo v8, "last-network-log-retrieval"

    .line 634
    .line 635
    .line 636
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v8

    .line 640
    if-eqz v8, :cond_1c

    .line 641
    .line 642
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 643
    .line 644
    .line 645
    move-result-wide v7

    .line 646
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 647
    .line 648
    goto/16 :goto_2

    .line 649
    .line 650
    :cond_1c
    const-string v8, "admin-broadcast-pending"

    .line 651
    .line 652
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v8

    .line 656
    if-eqz v8, :cond_1d

    .line 657
    .line 658
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v8

    .line 666
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v7

    .line 670
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 671
    .line 672
    goto/16 :goto_2

    .line 673
    .line 674
    :cond_1d
    const-string/jumbo v8, "initialization-bundle"

    .line 675
    .line 676
    .line 677
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v8

    .line 681
    if-eqz v8, :cond_1e

    .line 682
    .line 683
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 684
    .line 685
    .line 686
    move-result-object v7

    .line 687
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 688
    .line 689
    goto/16 :goto_2

    .line 690
    .line 691
    :cond_1e
    const-string/jumbo v8, "password-token"

    .line 692
    .line 693
    .line 694
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    if-eqz v8, :cond_1f

    .line 699
    .line 700
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 701
    .line 702
    .line 703
    move-result-wide v7

    .line 704
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 705
    .line 706
    goto/16 :goto_2

    .line 707
    .line 708
    :cond_1f
    const-string/jumbo v8, "current-ime-set"

    .line 709
    .line 710
    .line 711
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result v8

    .line 715
    if-eqz v8, :cond_20

    .line 716
    .line 717
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 718
    .line 719
    goto/16 :goto_2

    .line 720
    .line 721
    :cond_20
    const-string/jumbo v8, "owner-installed-ca-cert"

    .line 722
    .line 723
    .line 724
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v8

    .line 728
    if-eqz v8, :cond_21

    .line 729
    .line 730
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 731
    .line 732
    const-string v8, "alias"

    .line 733
    .line 734
    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v8

    .line 738
    check-cast v7, Landroid/util/ArraySet;

    .line 739
    .line 740
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    goto/16 :goto_2

    .line 744
    .line 745
    :cond_21
    const-string v8, "apps-suspended"

    .line 746
    .line 747
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v8

    .line 751
    if-eqz v8, :cond_22

    .line 752
    .line 753
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 754
    .line 755
    .line 756
    move-result v7

    .line 757
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 758
    .line 759
    goto/16 :goto_2

    .line 760
    .line 761
    :cond_22
    const-string/jumbo v8, "bypass-role-qualifications"

    .line 762
    .line 763
    .line 764
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v8

    .line 768
    if-eqz v8, :cond_23

    .line 769
    .line 770
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 771
    .line 772
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v7

    .line 776
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    .line 777
    .line 778
    goto/16 :goto_2

    .line 779
    .line 780
    :cond_23
    const-string/jumbo v8, "keep-profiles-running"

    .line 781
    .line 782
    .line 783
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v8

    .line 787
    if-eqz v8, :cond_24

    .line 788
    .line 789
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 790
    .line 791
    .line 792
    move-result v7

    .line 793
    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 794
    .line 795
    goto/16 :goto_2

    .line 796
    .line 797
    :cond_24
    const-string/jumbo v8, "protected-packages"

    .line 798
    .line 799
    .line 800
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v8

    .line 804
    if-eqz v8, :cond_26

    .line 805
    .line 806
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 807
    .line 808
    if-nez v7, :cond_25

    .line 809
    .line 810
    new-instance v7, Ljava/util/ArrayList;

    .line 811
    .line 812
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .line 814
    .line 815
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 816
    .line 817
    :cond_25
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 818
    .line 819
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v8

    .line 823
    check-cast v7, Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    goto/16 :goto_2

    .line 829
    .line 830
    :cond_26
    const-string v8, "Unknown tag: %s"

    .line 831
    .line 832
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v7

    .line 836
    invoke-static {v0, v8, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_2

    .line 843
    .line 844
    :cond_27
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 845
    .line 846
    new-instance p3, Ljava/lang/StringBuilder;

    .line 847
    .line 848
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .line 850
    .line 851
    const-string v1, "Settings do not start with policies tag: found "

    .line 852
    .line 853
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object p3

    .line 863
    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
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

    .line 869
    .line 870
    .line 871
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object p1

    .line 875
    invoke-static {v0, p2, p3, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    .line 877
    .line 878
    :catch_4
    :goto_4
    move-object v2, v1

    .line 879
    :cond_28
    if-eqz v2, :cond_29

    .line 880
    .line 881
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 882
    .line 883
    .line 884
    :catch_5
    :cond_29
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 885
    .line 886
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 887
    .line 888
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 889
    .line 890
    .line 891
    move-result-object p0

    .line 892
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 893
    .line 894
    .line 895
    return-void
.end method

.method public static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;)Z
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "keep-profiles-running"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "bypass-role-qualifications"

    .line 7
    .line 8
    .line 9
    const-string v3, "apps-suspended"

    .line 10
    .line 11
    const-string/jumbo v4, "owner-installed-ca-cert"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "current-ime-set"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v6, "password-token"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v7, "initialization-bundle"

    .line 21
    .line 22
    .line 23
    const-string v8, "admin-broadcast-pending"

    .line 24
    .line 25
    const-string/jumbo v9, "last-network-log-retrieval"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v10, "last-bug-report-request"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v11, "last-security-log-retrieval"

    .line 32
    .line 33
    .line 34
    const-string v12, "affiliation-id"

    .line 35
    .line 36
    const-string/jumbo v13, "do-not-ask-credentials-on-boot"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v14, "statusbar"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v15, "secondary-lock-screen"

    .line 43
    .line 44
    .line 45
    move-object/from16 v16, v1

    .line 46
    .line 47
    const-string/jumbo v1, "lock-task-features"

    .line 48
    .line 49
    .line 50
    move-object/from16 v17, v2

    .line 51
    .line 52
    const-string/jumbo v2, "lock-task-component"

    .line 53
    .line 54
    .line 55
    move-object/from16 v18, v3

    .line 56
    .line 57
    const-string v3, "accepted-ca-certificate"

    .line 58
    .line 59
    move-object/from16 v19, v4

    .line 60
    .line 61
    const-string/jumbo v4, "last-resetpassword-admin"

    .line 62
    .line 63
    .line 64
    move-object/from16 v20, v5

    .line 65
    .line 66
    const-string/jumbo v5, "failed-biometric-attempts"

    .line 67
    .line 68
    .line 69
    move-object/from16 v21, v6

    .line 70
    .line 71
    const-string/jumbo v6, "failed-password-attempts-from-gatekeeper"

    .line 72
    .line 73
    .line 74
    move-object/from16 v22, v7

    .line 75
    .line 76
    const-string/jumbo v7, "failed-password-attempts"

    .line 77
    .line 78
    .line 79
    move-object/from16 v23, v8

    .line 80
    .line 81
    const-string/jumbo v8, "password-owner"

    .line 82
    .line 83
    .line 84
    move-object/from16 v24, v9

    .line 85
    .line 86
    const-string/jumbo v9, "permission-based-admin"

    .line 87
    .line 88
    .line 89
    move-object/from16 v25, v10

    .line 90
    .line 91
    const-string v10, "admin"

    .line 92
    .line 93
    move-object/from16 v26, v11

    .line 94
    .line 95
    const-string/jumbo v11, "delegation"

    .line 96
    .line 97
    .line 98
    move-object/from16 v27, v12

    .line 99
    .line 100
    const-string/jumbo v12, "policies"

    .line 101
    .line 102
    .line 103
    move-object/from16 v28, v13

    .line 104
    .line 105
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    .line 106
    .line 107
    .line 108
    move-result-object v13
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 109
    move-object/from16 v29, v14

    .line 110
    .line 111
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    .line 112
    .line 113
    move-object/from16 v30, v15

    .line 114
    .line 115
    const/4 v15, 0x0

    .line 116
    invoke-direct {v14, v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 117
    .line 118
    .line 119
    :try_start_2
    invoke-static {v14}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 120
    .line 121
    .line 122
    move-result-object v15
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    move-object/from16 v31, v13

    .line 124
    .line 125
    :try_start_3
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 126
    .line 127
    move-object/from16 v32, v14

    .line 128
    .line 129
    const/4 v14, 0x0

    .line 130
    :try_start_4
    invoke-interface {v15, v14, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v15, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    .line 135
    .line 136
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 137
    .line 138
    if-eqz v13, :cond_0

    .line 139
    .line 140
    const-string/jumbo v14, "permission-provider"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    move-object/from16 v33, v12

    .line 148
    .line 149
    const/4 v12, 0x0

    .line 150
    invoke-interface {v15, v12, v14, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    :goto_0
    move-object/from16 v13, v31

    .line 156
    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :cond_0
    move-object/from16 v33, v12

    .line 160
    .line 161
    :goto_1
    iget-boolean v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 162
    .line 163
    const/4 v13, 0x1

    .line 164
    if-eqz v12, :cond_1

    .line 165
    .line 166
    const-string/jumbo v12, "setup-complete"

    .line 167
    .line 168
    .line 169
    const/4 v14, 0x0

    .line 170
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    :cond_1
    iget-boolean v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 174
    .line 175
    if-eqz v12, :cond_2

    .line 176
    .line 177
    const-string/jumbo v12, "device-paired"

    .line 178
    .line 179
    .line 180
    const/4 v14, 0x0

    .line 181
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    .line 183
    .line 184
    :cond_2
    iget-boolean v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 185
    .line 186
    if-eqz v12, :cond_3

    .line 187
    .line 188
    const-string/jumbo v12, "device-provisioning-config-applied"

    .line 189
    .line 190
    .line 191
    const/4 v14, 0x0

    .line 192
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    .line 194
    .line 195
    :cond_3
    iget v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    .line 196
    .line 197
    if-eqz v12, :cond_4

    .line 198
    .line 199
    const-string/jumbo v14, "provisioning-state"

    .line 200
    .line 201
    .line 202
    const/4 v13, 0x0

    .line 203
    invoke-interface {v15, v13, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    .line 205
    .line 206
    :cond_4
    iget v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    .line 207
    .line 208
    if-eqz v12, :cond_5

    .line 209
    .line 210
    const-string/jumbo v13, "permission-policy"

    .line 211
    .line 212
    .line 213
    const/4 v14, 0x0

    .line 214
    invoke-interface {v15, v14, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    .line 216
    .line 217
    :cond_5
    const-string/jumbo v12, "needed"

    .line 218
    .line 219
    .line 220
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    if-eqz v12, :cond_6

    .line 227
    .line 228
    const-string/jumbo v12, "new-user-disclaimer"

    .line 229
    .line 230
    .line 231
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 232
    .line 233
    const/4 v14, 0x0

    .line 234
    invoke-interface {v15, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    .line 236
    .line 237
    :cond_6
    iget v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 238
    .line 239
    if-eqz v12, :cond_7

    .line 240
    .line 241
    const-string/jumbo v13, "factory-reset-flags"

    .line 242
    .line 243
    .line 244
    const/4 v14, 0x0

    .line 245
    invoke-interface {v15, v14, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    .line 247
    .line 248
    :cond_7
    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 249
    .line 250
    if-eqz v12, :cond_8

    .line 251
    .line 252
    const-string/jumbo v13, "factory-reset-reason"

    .line 253
    .line 254
    .line 255
    const/4 v14, 0x0

    .line 256
    invoke-interface {v15, v14, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    .line 258
    .line 259
    :cond_8
    const/4 v12, 0x0

    .line 260
    :goto_2
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 261
    .line 262
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    if-ge v12, v13, :cond_a

    .line 267
    .line 268
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 269
    .line 270
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    check-cast v13, Ljava/lang/String;

    .line 275
    .line 276
    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 277
    .line 278
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v14

    .line 282
    check-cast v14, Ljava/util/List;

    .line 283
    .line 284
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v34

    .line 292
    if-eqz v34, :cond_9

    .line 293
    .line 294
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v34

    .line 298
    move-object/from16 v35, v14

    .line 299
    .line 300
    move-object/from16 v14, v34

    .line 301
    .line 302
    check-cast v14, Ljava/lang/String;

    .line 303
    .line 304
    move-object/from16 v34, v1

    .line 305
    .line 306
    const/4 v1, 0x0

    .line 307
    invoke-interface {v15, v1, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    .line 309
    .line 310
    move-object/from16 v36, v2

    .line 311
    .line 312
    const-string/jumbo v2, "delegatePackage"

    .line 313
    .line 314
    .line 315
    invoke-interface {v15, v1, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    .line 317
    .line 318
    const-string/jumbo v2, "scope"

    .line 319
    .line 320
    .line 321
    invoke-interface {v15, v1, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    .line 323
    .line 324
    invoke-interface {v15, v1, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    .line 326
    .line 327
    move-object/from16 v1, v34

    .line 328
    .line 329
    move-object/from16 v14, v35

    .line 330
    .line 331
    move-object/from16 v2, v36

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_9
    move-object/from16 v34, v1

    .line 335
    .line 336
    move-object/from16 v36, v2

    .line 337
    .line 338
    add-int/lit8 v12, v12, 0x1

    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_a
    move-object/from16 v34, v1

    .line 342
    .line 343
    move-object/from16 v36, v2

    .line 344
    .line 345
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
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

    .line 353
    .line 354
    .line 355
    if-ge v2, v1, :cond_c

    .line 356
    .line 357
    :try_start_5
    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    check-cast v12, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 364
    .line 365
    if-eqz v12, :cond_b

    .line 366
    .line 367
    const/4 v13, 0x0

    .line 368
    invoke-interface {v15, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    .line 370
    .line 371
    iget-object v14, v12, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 372
    .line 373
    invoke-virtual {v14}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 374
    .line 375
    .line 376
    move-result-object v14

    .line 377
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v14

    .line 381
    invoke-interface {v15, v13, v11, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v12, v15}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v15, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    .line 389
    .line 390
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_c
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 394
    .line 395
    if-eqz v1, :cond_d

    .line 396
    .line 397
    const/4 v1, 0x0

    .line 398
    invoke-interface {v15, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    .line 400
    .line 401
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 402
    .line 403
    invoke-virtual {v2, v15}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v15, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    .line 408
    .line 409
    :cond_d
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 410
    .line 411
    const-string/jumbo v2, "value"

    .line 412
    .line 413
    .line 414
    if-ltz v1, :cond_e

    .line 415
    .line 416
    const/4 v1, 0x0

    .line 417
    :try_start_6
    invoke-interface {v15, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    .line 419
    .line 420
    iget v9, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 421
    .line 422
    invoke-interface {v15, v1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    .line 424
    .line 425
    invoke-interface {v15, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    .line 427
    .line 428
    :cond_e
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 429
    .line 430
    if-eqz v1, :cond_f

    .line 431
    .line 432
    const/4 v1, 0x0

    .line 433
    invoke-interface {v15, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    .line 435
    .line 436
    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 437
    .line 438
    invoke-interface {v15, v1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    .line 440
    .line 441
    invoke-interface {v15, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    .line 443
    .line 444
    :cond_f
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 445
    .line 446
    if-eqz v1, :cond_10

    .line 447
    .line 448
    const/4 v1, 0x0

    .line 449
    invoke-interface {v15, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    .line 451
    .line 452
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 453
    .line 454
    invoke-interface {v15, v1, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    .line 456
    .line 457
    invoke-interface {v15, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    .line 459
    .line 460
    :cond_10
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 461
    .line 462
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_11

    .line 467
    .line 468
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 469
    .line 470
    if-eqz v1, :cond_11

    .line 471
    .line 472
    const/4 v1, 0x0

    .line 473
    invoke-interface {v15, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    .line 475
    .line 476
    iget v6, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 477
    .line 478
    invoke-interface {v15, v1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    .line 480
    .line 481
    invoke-interface {v15, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    .line 483
    .line 484
    :cond_11
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 485
    .line 486
    const/4 v5, -0x1

    .line 487
    if-eq v1, v5, :cond_12

    .line 488
    .line 489
    const/4 v1, 0x0

    .line 490
    invoke-interface {v15, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    .line 492
    .line 493
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    .line 494
    .line 495
    invoke-interface {v15, v1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    .line 497
    .line 498
    invoke-interface {v15, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    .line 500
    .line 501
    :cond_12
    const/4 v1, 0x0

    .line 502
    :goto_5
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 503
    .line 504
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    if-ge v1, v4, :cond_13

    .line 509
    .line 510
    const/4 v4, 0x0

    .line 511
    invoke-interface {v15, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    .line 513
    .line 514
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 515
    .line 516
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    check-cast v5, Ljava/lang/String;

    .line 521
    .line 522
    invoke-interface {v15, v4, v11, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    .line 524
    .line 525
    invoke-interface {v15, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    .line 527
    .line 528
    add-int/lit8 v1, v1, 0x1

    .line 529
    .line 530
    goto :goto_5

    .line 531
    :cond_13
    const/4 v1, 0x0

    .line 532
    :goto_6
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 533
    .line 534
    check-cast v3, Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-ge v1, v3, :cond_14

    .line 541
    .line 542
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 543
    .line 544
    check-cast v3, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    check-cast v3, Ljava/lang/String;

    .line 551
    .line 552
    move-object/from16 v4, v36

    .line 553
    .line 554
    const/4 v5, 0x0

    .line 555
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    .line 557
    .line 558
    invoke-interface {v15, v5, v11, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    .line 560
    .line 561
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    .line 563
    .line 564
    add-int/lit8 v1, v1, 0x1

    .line 565
    .line 566
    move-object/from16 v36, v4

    .line 567
    .line 568
    goto :goto_6

    .line 569
    :cond_14
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 570
    .line 571
    if-eqz v1, :cond_15

    .line 572
    .line 573
    move-object/from16 v1, v34

    .line 574
    .line 575
    const/4 v3, 0x0

    .line 576
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    .line 578
    .line 579
    iget v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 580
    .line 581
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    .line 583
    .line 584
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 585
    .line 586
    .line 587
    :cond_15
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 588
    .line 589
    if-eqz v1, :cond_16

    .line 590
    .line 591
    move-object/from16 v1, v30

    .line 592
    .line 593
    const/4 v3, 0x0

    .line 594
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    .line 596
    .line 597
    const/4 v4, 0x1

    .line 598
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    .line 600
    .line 601
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    .line 603
    .line 604
    :cond_16
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 605
    .line 606
    if-eqz v1, :cond_17

    .line 607
    .line 608
    move-object/from16 v1, v29

    .line 609
    .line 610
    const/4 v3, 0x0

    .line 611
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    .line 613
    .line 614
    const-string/jumbo v4, "disabled"

    .line 615
    .line 616
    .line 617
    iget-boolean v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 618
    .line 619
    invoke-interface {v15, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    .line 621
    .line 622
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    .line 624
    .line 625
    :cond_17
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 626
    .line 627
    if-eqz v1, :cond_18

    .line 628
    .line 629
    move-object/from16 v1, v28

    .line 630
    .line 631
    const/4 v3, 0x0

    .line 632
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    .line 634
    .line 635
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    .line 637
    .line 638
    :cond_18
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 639
    .line 640
    check-cast v1, Landroid/util/ArraySet;

    .line 641
    .line 642
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_19

    .line 651
    .line 652
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Ljava/lang/String;

    .line 657
    .line 658
    move-object/from16 v4, v27

    .line 659
    .line 660
    const/4 v5, 0x0

    .line 661
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 662
    .line 663
    .line 664
    const-string/jumbo v6, "id"

    .line 665
    .line 666
    .line 667
    invoke-interface {v15, v5, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    .line 669
    .line 670
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    .line 672
    .line 673
    move-object/from16 v27, v4

    .line 674
    .line 675
    goto :goto_7

    .line 676
    :cond_19
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 677
    .line 678
    const-wide/16 v5, 0x0

    .line 679
    .line 680
    cmp-long v1, v3, v5

    .line 681
    .line 682
    if-ltz v1, :cond_1a

    .line 683
    .line 684
    move-object/from16 v1, v26

    .line 685
    .line 686
    const/4 v3, 0x0

    .line 687
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 688
    .line 689
    .line 690
    iget-wide v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 691
    .line 692
    invoke-interface {v15, v3, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 693
    .line 694
    .line 695
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    .line 697
    .line 698
    :cond_1a
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 699
    .line 700
    cmp-long v1, v3, v5

    .line 701
    .line 702
    if-ltz v1, :cond_1b

    .line 703
    .line 704
    move-object/from16 v1, v25

    .line 705
    .line 706
    const/4 v3, 0x0

    .line 707
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    .line 709
    .line 710
    iget-wide v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 711
    .line 712
    invoke-interface {v15, v3, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    .line 714
    .line 715
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    .line 717
    .line 718
    :cond_1b
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 719
    .line 720
    cmp-long v1, v3, v5

    .line 721
    .line 722
    if-ltz v1, :cond_1c

    .line 723
    .line 724
    move-object/from16 v1, v24

    .line 725
    .line 726
    const/4 v3, 0x0

    .line 727
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    .line 729
    .line 730
    iget-wide v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 731
    .line 732
    invoke-interface {v15, v3, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 733
    .line 734
    .line 735
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 736
    .line 737
    .line 738
    :cond_1c
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 739
    .line 740
    if-eqz v1, :cond_1d

    .line 741
    .line 742
    move-object/from16 v1, v23

    .line 743
    .line 744
    const/4 v3, 0x0

    .line 745
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    .line 747
    .line 748
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 749
    .line 750
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    .line 752
    .line 753
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    .line 755
    .line 756
    :cond_1d
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 757
    .line 758
    if-eqz v1, :cond_1e

    .line 759
    .line 760
    move-object/from16 v1, v22

    .line 761
    .line 762
    const/4 v3, 0x0

    .line 763
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    .line 765
    .line 766
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 767
    .line 768
    invoke-virtual {v4, v15}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 769
    .line 770
    .line 771
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    .line 773
    .line 774
    :cond_1e
    iget-wide v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 775
    .line 776
    cmp-long v1, v3, v5

    .line 777
    .line 778
    if-eqz v1, :cond_1f

    .line 779
    .line 780
    move-object/from16 v1, v21

    .line 781
    .line 782
    const/4 v3, 0x0

    .line 783
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 784
    .line 785
    .line 786
    iget-wide v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 787
    .line 788
    invoke-interface {v15, v3, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    .line 790
    .line 791
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    .line 793
    .line 794
    :cond_1f
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 795
    .line 796
    if-eqz v1, :cond_20

    .line 797
    .line 798
    move-object/from16 v1, v20

    .line 799
    .line 800
    const/4 v3, 0x0

    .line 801
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    .line 803
    .line 804
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    .line 806
    .line 807
    :cond_20
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 808
    .line 809
    check-cast v1, Landroid/util/ArraySet;

    .line 810
    .line 811
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    if-eqz v3, :cond_21

    .line 820
    .line 821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    check-cast v3, Ljava/lang/String;

    .line 826
    .line 827
    move-object/from16 v4, v19

    .line 828
    .line 829
    const/4 v5, 0x0

    .line 830
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    .line 832
    .line 833
    const-string v6, "alias"

    .line 834
    .line 835
    invoke-interface {v15, v5, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    .line 837
    .line 838
    invoke-interface {v15, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    .line 840
    .line 841
    move-object/from16 v19, v4

    .line 842
    .line 843
    goto :goto_8

    .line 844
    :cond_21
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 845
    .line 846
    if-eqz v1, :cond_22

    .line 847
    .line 848
    move-object/from16 v1, v18

    .line 849
    .line 850
    const/4 v3, 0x0

    .line 851
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    .line 853
    .line 854
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 855
    .line 856
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    .line 858
    .line 859
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    .line 861
    .line 862
    :cond_22
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 863
    .line 864
    if-eqz v1, :cond_23

    .line 865
    .line 866
    move-object/from16 v1, v17

    .line 867
    .line 868
    const/4 v3, 0x0

    .line 869
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 870
    .line 871
    .line 872
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    .line 873
    .line 874
    invoke-interface {v15, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    .line 876
    .line 877
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    .line 879
    .line 880
    :cond_23
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 881
    .line 882
    if-eqz v1, :cond_24

    .line 883
    .line 884
    move-object/from16 v1, v16

    .line 885
    .line 886
    const/4 v3, 0x0

    .line 887
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    .line 889
    .line 890
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 891
    .line 892
    invoke-interface {v15, v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 893
    .line 894
    .line 895
    invoke-interface {v15, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    .line 897
    .line 898
    :cond_24
    move-object/from16 v0, v33

    .line 899
    .line 900
    const/4 v1, 0x0

    .line 901
    invoke-interface {v15, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    .line 903
    .line 904
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 905
    .line 906
    .line 907
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->flush()V

    .line 908
    .line 909
    .line 910
    invoke-static/range {v32 .. v32}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 911
    .line 912
    .line 913
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V

    .line 914
    .line 915
    .line 916
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 917
    .line 918
    .line 919
    const/4 v0, 0x1

    .line 920
    return v0

    .line 921
    :catch_1
    move-exception v0

    .line 922
    move-object/from16 v32, v14

    .line 923
    .line 924
    goto/16 :goto_0

    .line 925
    .line 926
    :catch_2
    move-exception v0

    .line 927
    move-object/from16 v31, v13

    .line 928
    .line 929
    move-object/from16 v32, v14

    .line 930
    .line 931
    goto :goto_9

    .line 932
    :catch_3
    move-exception v0

    .line 933
    move-object/from16 v31, v13

    .line 934
    .line 935
    const/4 v1, 0x0

    .line 936
    move-object/from16 v32, v1

    .line 937
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

    .line 943
    .line 944
    :goto_9
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    const-string v2, "DevicePolicyManager"

    .line 949
    .line 950
    const-string/jumbo v3, "failed writing file %s"

    .line 951
    .line 952
    .line 953
    invoke-static {v2, v0, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    if-eqz v32, :cond_25

    .line 957
    .line 958
    :try_start_7
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 959
    .line 960
    .line 961
    :catch_5
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 962
    .line 963
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

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "DevicePolicyManager"

    .line 46
    .line 47
    const-string v2, "Previous password owner %s no longer active; disabling"

    .line 48
    .line 49
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void
.end method
