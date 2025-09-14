.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.super Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final DEBUG:Z

.field public static final REMOVE_SHORTCUT_CONTENT_URI:Landroid/net/Uri;

.field public static final isEngMode:Z

.field public static final isUserMode:Z

.field public static mContext:Landroid/content/Context;

.field public static mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

.field public static final mSetupCallbackLock:Ljava/lang/Object;

.field public static final mbadgePolicylist:Ljava/util/List;


# instance fields
.field public final NFC_FILTERS:Ljava/util/List;

.field public final contentObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public final mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

.field public mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

.field public mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mParamsList:Ljava/util/List;

.field public mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mProvisioningLock:Ljava/lang/Object;

.field public mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

.field public final mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

.field public final mReceiver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

.field public mRestart:Z

.field public mSEAMS:Lcom/android/server/SEAMService;

.field public mShortcutService:Landroid/content/pm/IShortcutService;

.field public final mTypeList:Ljava/util/List;

.field public mUms:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const-string v1, "KnoxMUMContainerPolicy"

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string p0, "DO\'premium provisioning completed, sending intent to KLMS agent"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string/jumbo p0, "com.sec.knox.containeragent.klms.created.b2b"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "DO\' license is not activated so ignoring the request..."

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public static -$$Nest$mprovisioningFinished(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .locals 9

    .line 1
    const-string v0, " / "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 4
    .line 5
    const-string v2, "KnoxMUMContainerPolicy"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "provisioningFinished() no ongoing provisioning, skip"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    array-length v6, v3

    .line 34
    move v7, v5

    .line 35
    :goto_0
    if-ge v7, v6, :cond_2

    .line 36
    .line 37
    aget-object v8, v3, v7

    .line 38
    .line 39
    invoke-virtual {v1, p1, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->notifyAdminCreationStatus(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v7, v7, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->notifyAdminCreationStatus(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v1, "provisioningFinished()... "

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    const-string/jumbo p1, "isDeviceOwnerProvisioning(): type object is null"

    .line 79
    .line 80
    .line 81
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const-string/jumbo v1, "knox-do-basic"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 95
    .line 96
    iget p1, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 103
    .line 104
    iget v1, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 105
    .line 106
    const/16 v3, 0xa

    .line 107
    .line 108
    if-ne v1, v3, :cond_a

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 111
    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    const-string/jumbo p1, "isBasicContainerProvisioning(): type object is null"

    .line 115
    .line 116
    .line 117
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    const-string/jumbo v1, "knox-po-basic"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    const-string/jumbo p1, "contaienr created via AFW API. skip enabling container in the framework"

    .line 131
    .line 132
    .line 133
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 139
    .line 140
    iget v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 141
    .line 142
    invoke-static {p1, v1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    :goto_2
    new-instance p1, Landroid/os/Bundle;

    .line 147
    .line 148
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 152
    .line 153
    iget v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    sget-object v3, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_CONFIGURATION_TYPE:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    const-string v3, "EXTRA_RESET_TOKEN"

    .line 173
    .line 174
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_8
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 180
    .line 181
    iget v3, v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 182
    .line 183
    invoke-static {v1, v3, v5, p1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    const-string/jumbo p1, "container created via Knox API. enabling container in the framework"

    .line 187
    .line 188
    .line 189
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 193
    .line 194
    iget p1, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-instance v3, Landroid/content/Intent;

    .line 212
    .line 213
    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 214
    .line 215
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v5, Landroid/os/UserHandle;

    .line 219
    .line 220
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 221
    .line 222
    .line 223
    const-string p1, "android.intent.extra.USER"

    .line 224
    .line 225
    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    .line 227
    .line 228
    const/high16 p1, 0x50000000

    .line 229
    .line 230
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    if-nez v1, :cond_9

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_9
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 237
    .line 238
    new-instance v5, Landroid/os/UserHandle;

    .line 239
    .line 240
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 241
    .line 242
    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string/jumbo v1, "provisioningFinished() not a normal finish, state:"

    .line 252
    .line 253
    .line 254
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 258
    .line 259
    iget v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 260
    .line 261
    invoke-static {p1, v1, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_3
    :try_start_0
    new-instance p1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 265
    .line 266
    invoke-direct {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    .line 267
    .line 268
    .line 269
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 270
    .line 271
    const-string/jumbo v3, "device_policy"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 279
    .line 280
    new-instance v3, Landroid/os/UserHandle;

    .line 281
    .line 282
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 283
    .line 284
    iget v5, v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 285
    .line 286
    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 298
    .line 299
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 304
    .line 305
    iget v5, v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 306
    .line 307
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string/jumbo v6, "calling createContainerInternal "

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 329
    .line 330
    iget v6, v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 331
    .line 332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 352
    .line 353
    iget v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 354
    .line 355
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setContainerId(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminUid(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .line 363
    .line 364
    goto :goto_4

    .line 365
    :catch_0
    move-exception p1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string/jumbo v1, "calling createContainerInternal failed : "

    .line 369
    .line 370
    .line 371
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    :goto_4
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 385
    .line 386
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 387
    .line 388
    if-eqz p1, :cond_b

    .line 389
    .line 390
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 395
    .line 396
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 397
    .line 398
    .line 399
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 400
    .line 401
    const-string/jumbo p0, "provisioning observer unregistered"

    .line 402
    .line 403
    .line 404
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .line 406
    .line 407
    goto :goto_5

    .line 408
    :catch_1
    move-exception p0

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v0, "RemoteException :("

    .line 412
    .line 413
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :cond_b
    :goto_5
    return-void
.end method

.method public static -$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string/jumbo v0, "enterprise.container.locked"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string/jumbo p1, "containerid"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    new-instance p2, Landroid/os/UserHandle;

    .line 32
    .line 33
    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo p3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static -$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string/jumbo v0, "com.samsung.enterprise.container_state_changed"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "containerid"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "container_old_state"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v3, "container_new_state"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "intent"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    new-instance v5, Landroid/os/UserHandle;

    .line 55
    .line 56
    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p0, Landroid/content/Intent;

    .line 66
    .line 67
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 85
    .line 86
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    new-instance p4, Landroid/os/UserHandle;

    .line 104
    .line 105
    invoke-direct {p4, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p0, p4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_2

    .line 118
    .line 119
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance p2, Landroid/content/Intent;

    .line 130
    .line 131
    invoke-direct {p2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    new-instance p1, Landroid/os/UserHandle;

    .line 140
    .line 141
    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p2, p1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 16
    .line 17
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sput-boolean v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEngMode:Z

    .line 24
    .line 25
    const-string/jumbo v1, "user"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isUserMode:Z

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallbackLock:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;

    .line 55
    .line 56
    const-string/jumbo v0, "content://com.sec.android.app.launcher.settings/settings"

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->REMOVE_SHORTCUT_CONTENT_URI:Landroid/net/Uri;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    .line 43
    .line 44
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mReceiver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    .line 52
    .line 53
    new-instance v2, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Landroid/os/Handler;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->contentObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/Object;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 73
    .line 74
    const-string p1, "android.nfc.action.NDEF_DISCOVERED"

    .line 75
    .line 76
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "*/*"

    .line 81
    .line 82
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v4, "MalformedMimeTypeException: "

    .line 90
    .line 91
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "KnoxMUMContainerPolicy"

    .line 102
    .line 103
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :goto_0
    new-instance v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/content/IntentFilter;

    .line 116
    .line 117
    iput-object v1, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    .line 118
    .line 119
    new-instance v1, Landroid/content/IntentFilter;

    .line 120
    .line 121
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string/jumbo p1, "http"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string/jumbo p1, "https"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string/jumbo p1, "tel"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string/jumbo v3, "mailto"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string/jumbo v3, "geo"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string/jumbo p1, "voicemail"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string/jumbo p1, "sip"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string/jumbo p1, "sms"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string/jumbo p1, "smsto"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string/jumbo p1, "mms"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string/jumbo p1, "mmsto"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string/jumbo p1, "file"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    .line 203
    .line 204
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Landroid/content/IntentFilter;

    .line 212
    .line 213
    iput-object v1, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    .line 214
    .line 215
    filled-new-array {v2, p1}, [Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->NFC_FILTERS:Ljava/util/List;

    .line 224
    .line 225
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mInjector:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

    .line 226
    .line 227
    iget-object p1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Landroid/content/Context;

    .line 234
    .line 235
    sput-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 236
    .line 237
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    invoke-direct {p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 245
    .line 246
    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    .line 248
    .line 249
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 256
    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    .line 258
    .line 259
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 260
    .line 261
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 265
    .line 266
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mReceiver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    .line 267
    .line 268
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 274
    .line 275
    .line 276
    iput p1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    .line 277
    .line 278
    new-instance p1, Ljava/util/Random;

    .line 279
    .line 280
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 281
    .line 282
    .line 283
    iput-object p1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->random:Ljava/util/Random;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 286
    .line 287
    new-instance p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 288
    .line 289
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 290
    .line 291
    .line 292
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 293
    .line 294
    new-instance p1, Landroid/os/Handler;

    .line 295
    .line 296
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 297
    .line 298
    .line 299
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    .line 300
    .line 301
    new-instance p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    .line 302
    .line 303
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 304
    .line 305
    .line 306
    const-class p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    .line 307
    .line 308
    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public static addPseudoAdminForWpcod(I)V
    .locals 7

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string v1, "addPseudoAdminForWpcod: exception: "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :try_start_0
    sget v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 10
    .line 11
    sget-object v4, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    const-string v5, "addPseudoAdminForWpcod: containerId-"

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getOrganizationOwnedProfileUserId()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ne v6, p0, :cond_0

    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->addPseudoAdminForParent(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_3

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, " is not WP-C"

    .line 60
    .line 61
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :goto_2
    return-void

    .line 99
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "KnoxMUMContainerPolicy"

    .line 12
    .line 13
    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Security Exception Occurred while pid["

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "] with uid["

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "] trying to access methodName ["

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, "] in [KnoxMUMContainerPolicy] service"

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 68
    .line 69
    if-eqz p0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_0
    throw v0

    .line 75
    :cond_1
    return-void
.end method

.method public static convertStringCommaDelimitedToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "\\s*,\\s*"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x22

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ne v3, v2, :cond_0

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "\""

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Landroid/graphics/Canvas;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public static dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, " "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, " {"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/List;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/util/Pair;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, "  ( "

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, ","

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, " )"

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_0
    const-string v1, " }"

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method public static enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    move v1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Activate Container permission"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    instance-of v0, p0, Ljava/lang/Error;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p0, Ljava/lang/Error;

    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    throw p0
.end method

.method public static getLauncherRefreshIntent(I)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.container.MANAGED_PROFILE_REFRESH"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "com.samsung.android.knox.container.userid"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string/jumbo p0, "com.samsung.sec.knox.EXTRA_PERSONA_ID"

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .line 1
    const-string/jumbo v0, "persona"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 9
    .line 10
    return-object v0
.end method

.method public static getSecureFolderId()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/UserManager;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 48
    .line 49
    return v0

    .line 50
    :cond_1
    const/4 v0, -0x1

    .line 51
    return v0
.end method

.method public static isIgnoreKSPCall(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "persist.sys.knox.ignore_ksp_call"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const-string/jumbo v5, "com.samsung.android.appseparation"

    .line 14
    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    const-string/jumbo p0, "true"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return v3

    .line 49
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public static processConfigurationType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v0, :cond_4

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    .line 26
    .line 27
    .line 28
    instance-of v0, p0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    instance-of v0, p0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    move-object v0, p0

    .line 41
    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-string/jumbo v3, "true"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getContainerLayout()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eq v0, v2, :cond_5

    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    if-eq v0, v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_0
    return v2

    .line 83
    :cond_6
    :goto_1
    return v1
.end method

.method public static readECFile(Ljava/lang/String;)[B
    .locals 6

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/io/FileInputStream;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    const-wide/32 v4, 0x7fffffff

    .line 27
    .line 28
    .line 29
    cmp-long v4, v2, v4

    .line 30
    .line 31
    if-gtz v4, :cond_3

    .line 32
    .line 33
    long-to-int v2, v2

    .line 34
    new-array v3, v2, [B

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    if-ge v4, v2, :cond_1

    .line 38
    .line 39
    sub-int v5, v2, v4

    .line 40
    .line 41
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 42
    .line 43
    .line 44
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-ltz v5, :cond_1

    .line 46
    .line 47
    add-int/2addr v4, v5

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-lt v4, v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 54
    .line 55
    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Bytes : "

    .line 59
    .line 60
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-object v3

    .line 74
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "The file was not completely read: "

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 102
    .line 103
    const-string v1, "The file is too big"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_4
    :goto_2
    const-string/jumbo p0, "filename is null  null"

    .line 114
    .line 115
    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    return-object p0
.end method

.method public static sendIntentBroadcastForContainer(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sendIntentBroadcastForContainer : containerId "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " and action "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "KnoxMUMContainerPolicy"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo p1, "container_id"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string/jumbo p0, "com.samsung.klmsagent"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    new-instance p1, Landroid/os/UserHandle;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static setFilePermission(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/io/File;->setWritable(Z)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    move-object v0, v1

    .line 26
    goto :goto_3

    .line 27
    :catch_1
    move-exception p0

    .line 28
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 30
    :catchall_1
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :catch_2
    move-exception p0

    .line 33
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_3
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_1
    const/4 p0, 0x0

    .line 47
    :goto_2
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return p0

    .line 53
    :goto_3
    if-eqz v0, :cond_2

    .line 54
    .line 55
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :catch_4
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_4
    throw p0
.end method


# virtual methods
.method public final addConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 6

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo v1, "getConfigurationTypeByName value :"

    .line 4
    .line 5
    .line 6
    const-string v2, "Parameter name :"

    .line 7
    .line 8
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 13
    .line 14
    .line 15
    filled-new-array {v5}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 32
    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    :goto_0
    const/4 v4, 0x0

    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    return v4

    .line 59
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processConfigurationType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    return v4

    .line 108
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    invoke-virtual {p0, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationTypeToList(ILcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    .line 119
    .line 120
    .line 121
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return p0

    .line 123
    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string p2, "IOException : "

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_4
    :goto_1
    return v4
.end method

.method public final addConfigurationTypeToList(ILcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string/jumbo v3, "containerBadgeModified.png"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "containerIconModified.png"

    .line 9
    .line 10
    .line 11
    const-string v4, "badge icon file deletion status: "

    .line 12
    .line 13
    const-string v5, " badge file : "

    .line 14
    .line 15
    const-string/jumbo v6, "containerBadge dimensions "

    .line 16
    .line 17
    .line 18
    const-string/jumbo v7, "container icon file deletion status: "

    .line 19
    .line 20
    .line 21
    const-string v8, " icon file : "

    .line 22
    .line 23
    const-string/jumbo v9, "containerIcon dimensions "

    .line 24
    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    move/from16 v11, p1

    .line 31
    .line 32
    invoke-virtual {v2, v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setUserId(I)V

    .line 36
    .line 37
    .line 38
    iget-object v10, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    const-string v12, "KnoxMUMContainerPolicy"

    .line 42
    .line 43
    if-eqz v10, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string/jumbo v10, "ro.build.PDA"

    .line 47
    .line 48
    .line 49
    const-string v13, "Unknown"

    .line 50
    .line 51
    invoke-static {v10, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    new-instance v13, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v14, "1. pdaVersion = "

    .line 58
    .line 59
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance v13, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v14, "trimHiddenVersion("

    .line 75
    .line 76
    .line 77
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v14, ")"

    .line 84
    .line 85
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/16 v13, 0x5f

    .line 96
    .line 97
    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    const/4 v15, -0x1

    .line 102
    if-eq v14, v15, :cond_1

    .line 103
    .line 104
    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(I)I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    :cond_1
    const-string v13, "2. pdaVersion = "

    .line 113
    .line 114
    invoke-static {v13, v10, v12}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput-object v10, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    .line 118
    .line 119
    :goto_0
    invoke-virtual {v2, v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v10, Landroid/graphics/Point;

    .line 123
    .line 124
    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v13, Landroid/graphics/Point;

    .line 128
    .line 129
    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 130
    .line 131
    .line 132
    const/16 v14, 0x5a

    .line 133
    .line 134
    const/16 v15, 0x11

    .line 135
    .line 136
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 137
    .line 138
    .line 139
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    const v15, 0x1050249

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    const v11, 0x1050248

    .line 159
    .line 160
    .line 161
    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    new-instance v15, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "app_icon_width app_icon_height"

    .line 168
    .line 169
    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, " "

    .line 176
    .line 177
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    invoke-static {v12, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    move-object/from16 v16, v13

    .line 193
    .line 194
    const-string/jumbo v13, "window"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v15, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    check-cast v13, Landroid/view/WindowManager;

    .line 202
    .line 203
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    invoke-virtual {v13, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 208
    .line 209
    .line 210
    new-instance v13, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v15, "Screen dimension: "

    .line 213
    .line 214
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget v15, v10, Landroid/graphics/Point;->x:I

    .line 218
    .line 219
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 226
    .line 227
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    new-instance v10, Ljava/io/File;

    .line 238
    .line 239
    const-string v13, "/data/misc/container2.0/"

    .line 240
    .line 241
    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    const-string/jumbo v15, "cannot create folder: "

    .line 249
    .line 250
    .line 251
    if-nez v13, :cond_4

    .line 252
    .line 253
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-eqz v13, :cond_2

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_2
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 261
    .line 262
    if-eqz v0, :cond_3

    .line 263
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_3
    :goto_1
    const/4 v15, 0x0

    .line 280
    goto :goto_3

    .line 281
    :cond_4
    :goto_2
    const/4 v13, 0x1

    .line 282
    move-object/from16 v17, v4

    .line 283
    .line 284
    const/4 v4, 0x0

    .line 285
    invoke-virtual {v10, v13, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10, v13}, Ljava/io/File;->setWritable(Z)Z

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10, v13, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 292
    .line 293
    .line 294
    new-instance v4, Ljava/io/File;

    .line 295
    .line 296
    const-string v10, "/data/misc/container2.0/icon/"

    .line 297
    .line 298
    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 302
    .line 303
    .line 304
    move-result v18

    .line 305
    if-nez v18, :cond_5

    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 308
    .line 309
    .line 310
    move-result v18

    .line 311
    if-eqz v18, :cond_6

    .line 312
    .line 313
    :cond_5
    const/4 v15, 0x0

    .line 314
    goto :goto_4

    .line 315
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :goto_3
    return v15

    .line 332
    :goto_4
    invoke-virtual {v4, v13, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v13}, Ljava/io/File;->setWritable(Z)Z

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v13, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 339
    .line 340
    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getUserId()I

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v10, "_"

    .line 354
    .line 355
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 359
    .line 360
    .line 361
    move-result v15

    .line 362
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v15

    .line 372
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    const-string/jumbo v10, "rcp"

    .line 383
    .line 384
    .line 385
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    check-cast v10, Lcom/android/server/RCPManagerService;

    .line 390
    .line 391
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v15

    .line 395
    const-string v13, " status value:"

    .line 396
    .line 397
    move-object/from16 v19, v5

    .line 398
    .line 399
    const-string v5, "Dest image paths: "

    .line 400
    .line 401
    move-object/from16 v20, v3

    .line 402
    .line 403
    const/4 v3, 0x0

    .line 404
    if-eqz v15, :cond_9

    .line 405
    .line 406
    const-string v15, "CustomBadgeIcon.png"

    .line 407
    .line 408
    invoke-static {v4, v15}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v15

    .line 412
    move-object/from16 v21, v6

    .line 413
    .line 414
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    move-object/from16 v22, v7

    .line 419
    .line 420
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 421
    .line 422
    invoke-static {v6, v7, v15, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    sget-boolean v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 427
    .line 428
    if-eqz v7, :cond_7

    .line 429
    .line 430
    new-instance v7, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    :cond_7
    if-nez v6, :cond_8

    .line 452
    .line 453
    move-object v15, v3

    .line 454
    :cond_8
    invoke-virtual {v2, v15}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_9
    move-object/from16 v21, v6

    .line 459
    .line 460
    move-object/from16 v22, v7

    .line 461
    .line 462
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    const-string v7, " and source path "

    .line 467
    .line 468
    const-string v15, " doesn\'t exist"

    .line 469
    .line 470
    const-string/jumbo v3, "source file "

    .line 471
    .line 472
    .line 473
    if-eqz v6, :cond_10

    .line 474
    .line 475
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    if-eqz v6, :cond_b

    .line 480
    .line 481
    move-object/from16 v23, v13

    .line 482
    .line 483
    const-string v13, "CustomHomeWallpaper-b2b.jpg"

    .line 484
    .line 485
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 486
    .line 487
    .line 488
    move-result v13

    .line 489
    move-object/from16 v24, v8

    .line 490
    .line 491
    const-string v8, "DefaultHomeWallpaper.jpeg"

    .line 492
    .line 493
    if-nez v13, :cond_a

    .line 494
    .line 495
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 496
    .line 497
    .line 498
    move-result v6

    .line 499
    if-eqz v6, :cond_c

    .line 500
    .line 501
    :cond_a
    invoke-static {v4, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    goto :goto_6

    .line 506
    :cond_b
    move-object/from16 v24, v8

    .line 507
    .line 508
    move-object/from16 v23, v13

    .line 509
    .line 510
    :cond_c
    const-string v6, "CustomHomeScreenWallpaper.png"

    .line 511
    .line 512
    invoke-static {v4, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    :goto_6
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 517
    .line 518
    if-eqz v8, :cond_d

    .line 519
    .line 520
    invoke-static {v5, v6, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v13

    .line 528
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    :cond_d
    new-instance v8, Ljava/io/File;

    .line 539
    .line 540
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v13

    .line 544
    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-eqz v8, :cond_f

    .line 552
    .line 553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 554
    .line 555
    .line 556
    move-result-wide v25

    .line 557
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    const/4 v13, 0x0

    .line 562
    invoke-virtual {v10, v13, v8, v13, v6}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 563
    .line 564
    .line 565
    move-result v8

    .line 566
    if-eqz v8, :cond_e

    .line 567
    .line 568
    const-string/jumbo v8, "getCustomHomeScreenWallpaper::Copying file is failed"

    .line 569
    .line 570
    .line 571
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    goto :goto_7

    .line 575
    :cond_e
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    const-string/jumbo v8, "getCustomHomeScreenWallpaper::Copying file is processed"

    .line 579
    .line 580
    .line 581
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    :goto_7
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    .line 586
    .line 587
    goto :goto_8

    .line 588
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v8

    .line 597
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    const/4 v6, 0x0

    .line 611
    :goto_8
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    goto :goto_9

    .line 615
    :cond_10
    move-object/from16 v24, v8

    .line 616
    .line 617
    move-object/from16 v23, v13

    .line 618
    .line 619
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    if-eqz v6, :cond_14

    .line 624
    .line 625
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v8, "NameIcon.png"

    .line 637
    .line 638
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 646
    .line 647
    if-eqz v8, :cond_11

    .line 648
    .line 649
    invoke-static {v5, v6, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    move-result-object v8

    .line 653
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v13

    .line 657
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v8

    .line 664
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    :cond_11
    new-instance v8, Ljava/io/File;

    .line 668
    .line 669
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v13

    .line 673
    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 677
    .line 678
    .line 679
    move-result v8

    .line 680
    if-eqz v8, :cond_13

    .line 681
    .line 682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 683
    .line 684
    .line 685
    move-result-wide v25

    .line 686
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v8

    .line 690
    const/4 v13, 0x0

    .line 691
    invoke-virtual {v10, v13, v8, v13, v6}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 692
    .line 693
    .line 694
    move-result v8

    .line 695
    if-eqz v8, :cond_12

    .line 696
    .line 697
    const-string/jumbo v8, "getCustomizedContainerNameIcon::Copying file is failed"

    .line 698
    .line 699
    .line 700
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    goto :goto_a

    .line 704
    :cond_12
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    const-string/jumbo v8, "getCustomizedContainerNameIcon::Copying file is processed"

    .line 708
    .line 709
    .line 710
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .line 712
    .line 713
    :goto_a
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    .line 715
    .line 716
    goto :goto_b

    .line 717
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v8

    .line 726
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v6

    .line 736
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    const/4 v6, 0x0

    .line 740
    :goto_b
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    if-eqz v6, :cond_19

    .line 748
    .line 749
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string/jumbo v13, "containerIconTemp.png"

    .line 761
    .line 762
    .line 763
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    new-instance v13, Ljava/io/File;

    .line 771
    .line 772
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v8

    .line 776
    invoke-direct {v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 780
    .line 781
    .line 782
    move-result v8

    .line 783
    if-eqz v8, :cond_16

    .line 784
    .line 785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 786
    .line 787
    .line 788
    move-result-wide v26

    .line 789
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v8

    .line 793
    const/4 v13, 0x0

    .line 794
    invoke-virtual {v10, v13, v8, v13, v6}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 795
    .line 796
    .line 797
    move-result v8

    .line 798
    if-eqz v8, :cond_15

    .line 799
    .line 800
    const-string/jumbo v8, "getCustomizedContainerIcon::Copying file is failed"

    .line 801
    .line 802
    .line 803
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .line 805
    .line 806
    goto :goto_c

    .line 807
    :cond_15
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    const-string/jumbo v8, "getCustomizedContainerIcon::Copying file is processed"

    .line 811
    .line 812
    .line 813
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .line 815
    .line 816
    :goto_c
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    goto :goto_d

    .line 823
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v8

    .line 832
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v6

    .line 842
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    const/4 v6, 0x0

    .line 846
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    const/4 v6, 0x0

    .line 850
    :goto_d
    :try_start_0
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readECFile(Ljava/lang/String;)[B

    .line 851
    .line 852
    .line 853
    move-result-object v8

    .line 854
    if-eqz v8, :cond_19

    .line 855
    .line 856
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 857
    .line 858
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 859
    .line 860
    move-object/from16 v27, v5

    .line 861
    .line 862
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 863
    .line 864
    .line 865
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 866
    move-object/from16 v26, v7

    .line 867
    .line 868
    :try_start_2
    array-length v7, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 869
    move-object/from16 v28, v15

    .line 870
    .line 871
    const/4 v15, 0x0

    .line 872
    :try_start_3
    invoke-static {v8, v15, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 873
    .line 874
    .line 875
    move-result-object v7

    .line 876
    invoke-direct {v13, v5, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 877
    .line 878
    .line 879
    array-length v5, v8

    .line 880
    invoke-static {v8, v15, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 881
    .line 882
    .line 883
    move-result-object v5

    .line 884
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 885
    .line 886
    .line 887
    move-result v7

    .line 888
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 889
    .line 890
    .line 891
    move-result v8

    .line 892
    new-instance v13, Ljava/lang/StringBuilder;

    .line 893
    .line 894
    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v9

    .line 910
    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .line 912
    .line 913
    float-to-int v9, v14

    .line 914
    if-gt v7, v9, :cond_17

    .line 915
    .line 916
    float-to-int v7, v11

    .line 917
    if-le v8, v7, :cond_1a

    .line 918
    .line 919
    :cond_17
    const/4 v7, 0x0

    .line 920
    cmpl-float v8, v11, v7

    .line 921
    .line 922
    if-lez v8, :cond_1a

    .line 923
    .line 924
    if-lez v8, :cond_1a

    .line 925
    .line 926
    float-to-int v7, v11

    .line 927
    const/4 v8, 0x0

    .line 928
    invoke-static {v5, v9, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    if-eqz v5, :cond_1a

    .line 933
    .line 934
    const-string/jumbo v7, "resizedBitmap getCustomizedContainerIcon !null "

    .line 935
    .line 936
    .line 937
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .line 939
    .line 940
    new-instance v7, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v7

    .line 955
    invoke-static {v5, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 956
    .line 957
    .line 958
    move-result v5

    .line 959
    if-eqz v5, :cond_1a

    .line 960
    .line 961
    const-string/jumbo v5, "success getCustomizedContainerIcon "

    .line 962
    .line 963
    .line 964
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .line 966
    .line 967
    new-instance v5, Ljava/lang/StringBuilder;

    .line 968
    .line 969
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 986
    .line 987
    if-eqz v0, :cond_18

    .line 988
    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    move-object/from16 v5, v24

    .line 992
    .line 993
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .line 1005
    .line 1006
    goto :goto_e

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    goto :goto_11

    .line 1009
    :cond_18
    :goto_e
    if-eqz v6, :cond_1a

    .line 1010
    .line 1011
    new-instance v0, Ljava/io/File;

    .line 1012
    .line 1013
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v0

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    move-object/from16 v6, v22

    .line 1023
    .line 1024
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1035
    .line 1036
    .line 1037
    goto :goto_12

    .line 1038
    :catch_1
    move-exception v0

    .line 1039
    :goto_f
    move-object/from16 v28, v15

    .line 1040
    .line 1041
    goto :goto_11

    .line 1042
    :catch_2
    move-exception v0

    .line 1043
    :goto_10
    move-object/from16 v26, v7

    .line 1044
    .line 1045
    goto :goto_f

    .line 1046
    :catch_3
    move-exception v0

    .line 1047
    move-object/from16 v27, v5

    .line 1048
    .line 1049
    goto :goto_10

    .line 1050
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_12

    .line 1054
    :cond_19
    move-object/from16 v27, v5

    .line 1055
    .line 1056
    move-object/from16 v26, v7

    .line 1057
    .line 1058
    move-object/from16 v28, v15

    .line 1059
    .line 1060
    :cond_1a
    :goto_12
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    if-eqz v0, :cond_1f

    .line 1065
    .line 1066
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    const-string/jumbo v5, "containerBadgeTemp.png"

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    new-instance v5, Ljava/io/File;

    .line 1088
    .line 1089
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v6

    .line 1093
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v5

    .line 1100
    if-eqz v5, :cond_1c

    .line 1101
    .line 1102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v5

    .line 1106
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v7

    .line 1110
    const/4 v8, 0x0

    .line 1111
    invoke-virtual {v10, v8, v7, v8, v0}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 1112
    .line 1113
    .line 1114
    move-result v7

    .line 1115
    if-eqz v7, :cond_1b

    .line 1116
    .line 1117
    const-string/jumbo v7, "getCustomizedContainerBadge::Copying file is failed"

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    .line 1122
    .line 1123
    goto :goto_13

    .line 1124
    :cond_1b
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    const-string/jumbo v7, "getCustomizedContainerBadge::Copying file is processed"

    .line 1128
    .line 1129
    .line 1130
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    .line 1132
    .line 1133
    :goto_13
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    move-object v6, v0

    .line 1140
    move-object/from16 v5, v28

    .line 1141
    .line 1142
    goto :goto_14

    .line 1143
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v5

    .line 1152
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    move-object/from16 v5, v28

    .line 1156
    .line 1157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    .line 1166
    .line 1167
    const/4 v6, 0x0

    .line 1168
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    const/4 v6, 0x0

    .line 1172
    :goto_14
    :try_start_4
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readECFile(Ljava/lang/String;)[B

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    if-eqz v0, :cond_20

    .line 1177
    .line 1178
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 1179
    .line 1180
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 1181
    .line 1182
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v8

    .line 1186
    array-length v9, v0

    .line 1187
    const/4 v13, 0x0

    .line 1188
    invoke-static {v0, v13, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v9

    .line 1192
    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1193
    .line 1194
    .line 1195
    array-length v8, v0

    .line 1196
    invoke-static {v0, v13, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 1201
    .line 1202
    .line 1203
    move-result v8

    .line 1204
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 1205
    .line 1206
    .line 1207
    move-result v7

    .line 1208
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    move-object/from16 v13, v21

    .line 1211
    .line 1212
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v9

    .line 1228
    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    .line 1230
    .line 1231
    const/high16 v9, 0x40000000    # 2.0f

    .line 1232
    .line 1233
    div-float/2addr v14, v9

    .line 1234
    float-to-int v13, v14

    .line 1235
    if-gt v8, v13, :cond_1d

    .line 1236
    .line 1237
    div-float v8, v11, v9

    .line 1238
    .line 1239
    float-to-int v8, v8

    .line 1240
    if-le v7, v8, :cond_20

    .line 1241
    .line 1242
    :cond_1d
    const/4 v7, 0x0

    .line 1243
    cmpl-float v7, v11, v7

    .line 1244
    .line 1245
    if-lez v7, :cond_20

    .line 1246
    .line 1247
    if-lez v7, :cond_20

    .line 1248
    .line 1249
    div-float/2addr v11, v9

    .line 1250
    float-to-int v7, v11

    .line 1251
    const/4 v8, 0x0

    .line 1252
    invoke-static {v0, v13, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    if-eqz v0, :cond_20

    .line 1257
    .line 1258
    const-string/jumbo v7, "resizedBitmap containerBadgeTemp !null "

    .line 1259
    .line 1260
    .line 1261
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    .line 1263
    .line 1264
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    move-object/from16 v8, v20

    .line 1273
    .line 1274
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v7

    .line 1281
    invoke-static {v0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v0

    .line 1285
    if-eqz v0, :cond_20

    .line 1286
    .line 1287
    const-string/jumbo v0, "success getCustomizedContainerBadge "

    .line 1288
    .line 1289
    .line 1290
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    .line 1292
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 1312
    .line 1313
    if-eqz v0, :cond_1e

    .line 1314
    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1316
    .line 1317
    move-object/from16 v7, v19

    .line 1318
    .line 1319
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    .line 1331
    .line 1332
    goto :goto_15

    .line 1333
    :catch_4
    move-exception v0

    .line 1334
    goto :goto_16

    .line 1335
    :cond_1e
    :goto_15
    if-eqz v6, :cond_20

    .line 1336
    .line 1337
    new-instance v0, Ljava/io/File;

    .line 1338
    .line 1339
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1343
    .line 1344
    .line 1345
    move-result v0

    .line 1346
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    move-object/from16 v7, v17

    .line 1349
    .line 1350
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1361
    .line 1362
    .line 1363
    goto :goto_17

    .line 1364
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1365
    .line 1366
    .line 1367
    goto :goto_17

    .line 1368
    :cond_1f
    move-object/from16 v5, v28

    .line 1369
    .line 1370
    :cond_20
    :goto_17
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    if-eqz v0, :cond_24

    .line 1375
    .line 1376
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    const-string v6, "CustomisedLockScreenWallpaper.png"

    .line 1388
    .line 1389
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v6

    .line 1396
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 1397
    .line 1398
    if-eqz v0, :cond_21

    .line 1399
    .line 1400
    move-object/from16 v8, v26

    .line 1401
    .line 1402
    move-object/from16 v7, v27

    .line 1403
    .line 1404
    invoke-static {v7, v6, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v8

    .line 1412
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .line 1421
    .line 1422
    goto :goto_18

    .line 1423
    :cond_21
    move-object/from16 v7, v27

    .line 1424
    .line 1425
    :goto_18
    new-instance v0, Ljava/io/File;

    .line 1426
    .line 1427
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v8

    .line 1431
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    if-eqz v0, :cond_23

    .line 1439
    .line 1440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1441
    .line 1442
    .line 1443
    move-result-wide v8

    .line 1444
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    const/4 v3, 0x0

    .line 1449
    invoke-virtual {v10, v3, v0, v3, v6}, Lcom/android/server/RCPManagerService;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 1450
    .line 1451
    .line 1452
    move-result v0

    .line 1453
    if-eqz v0, :cond_22

    .line 1454
    .line 1455
    const-string/jumbo v0, "getCustomLockScreenWallpaper::Copying file is failed"

    .line 1456
    .line 1457
    .line 1458
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    .line 1460
    .line 1461
    goto :goto_19

    .line 1462
    :cond_22
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFilePermission(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    const-string/jumbo v0, "getCustomLockScreenWallpaper::Copying file is processed"

    .line 1466
    .line 1467
    .line 1468
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    .line 1470
    .line 1471
    :goto_19
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1472
    .line 1473
    .line 1474
    goto :goto_1a

    .line 1475
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v3

    .line 1484
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    .line 1496
    .line 1497
    const/4 v6, 0x0

    .line 1498
    :goto_1a
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    .line 1499
    .line 1500
    .line 1501
    goto :goto_1b

    .line 1502
    :cond_24
    move-object/from16 v7, v27

    .line 1503
    .line 1504
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    if-eqz v0, :cond_27

    .line 1509
    .line 1510
    const-string v0, "CustomStatusIcon.png"

    .line 1511
    .line 1512
    invoke-static {v4, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v6

    .line 1516
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1521
    .line 1522
    const/4 v5, 0x0

    .line 1523
    invoke-static {v0, v3, v6, v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v0

    .line 1527
    sget-boolean v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 1528
    .line 1529
    if-eqz v3, :cond_25

    .line 1530
    .line 1531
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1532
    .line 1533
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    .line 1539
    move-object/from16 v7, v23

    .line 1540
    .line 1541
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v3

    .line 1551
    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    .line 1553
    .line 1554
    goto :goto_1c

    .line 1555
    :cond_25
    move-object/from16 v7, v23

    .line 1556
    .line 1557
    :goto_1c
    if-nez v0, :cond_26

    .line 1558
    .line 1559
    move-object v6, v5

    .line 1560
    :cond_26
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    .line 1561
    .line 1562
    .line 1563
    goto :goto_1d

    .line 1564
    :cond_27
    move-object/from16 v7, v23

    .line 1565
    .line 1566
    const/4 v5, 0x0

    .line 1567
    :goto_1d
    instance-of v0, v2, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    .line 1568
    .line 1569
    if-eqz v0, :cond_2a

    .line 1570
    .line 1571
    move-object v0, v2

    .line 1572
    check-cast v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    .line 1573
    .line 1574
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v3

    .line 1578
    if-eqz v3, :cond_2a

    .line 1579
    .line 1580
    const-string v6, "FolderHeaderIcon.png"

    .line 1581
    .line 1582
    invoke-static {v4, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v4

    .line 1586
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1587
    .line 1588
    move-object/from16 v8, v16

    .line 1589
    .line 1590
    invoke-static {v3, v6, v4, v8}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v3

    .line 1594
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 1595
    .line 1596
    if-eqz v6, :cond_28

    .line 1597
    .line 1598
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    const-string v8, "Dest image path folder header icon: "

    .line 1601
    .line 1602
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v6

    .line 1618
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    .line 1620
    .line 1621
    :cond_28
    if-nez v3, :cond_29

    .line 1622
    .line 1623
    move-object v3, v5

    .line 1624
    goto :goto_1e

    .line 1625
    :cond_29
    move-object v3, v4

    .line 1626
    :goto_1e
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    .line 1627
    .line 1628
    .line 1629
    :cond_2a
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 1630
    .line 1631
    if-eqz v0, :cond_2b

    .line 1632
    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1634
    .line 1635
    const-string v3, "Images after copy in services: "

    .line 1636
    .line 1637
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v3

    .line 1644
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v3

    .line 1654
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    .line 1656
    .line 1657
    const-string v3, "  "

    .line 1658
    .line 1659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    .line 1661
    .line 1662
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v3

    .line 1666
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    .line 1668
    .line 1669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v3

    .line 1676
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    .line 1682
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v1

    .line 1686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    .line 1688
    .line 1689
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    .line 1695
    .line 1696
    :cond_2b
    move-object/from16 v1, p0

    .line 1697
    .line 1698
    iget-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 1699
    .line 1700
    check-cast v0, Ljava/util/ArrayList;

    .line 1701
    .line 1702
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    .line 1704
    .line 1705
    const/4 v1, 0x1

    .line 1706
    return v1
.end method

.method public final addHomeShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/16 v3, 0x10e

    .line 8
    .line 9
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v7, "KnoxMUMContainerPolicy"

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    const-string v0, "Only above Knox version 2.7 can support"

    .line 19
    .line 20
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v6

    .line 24
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 27
    .line 28
    .line 29
    filled-new-array {v4}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v4, p1

    .line 41
    .line 42
    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 43
    .line 44
    .line 45
    const-string v8, "The current launcher doesn\'t support shortcuts."

    .line 46
    .line 47
    const-string v9, "Exception occurred while adding home shortcut "

    .line 48
    .line 49
    const-string v3, " label:"

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const-string v5, " addShortcutToPersonal:"

    .line 56
    .line 57
    invoke-static {v4, v5, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v5, v1, v6, v4}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-nez v5, :cond_1

    .line 67
    .line 68
    const-string/jumbo v0, "contextAsUser is null. given package may not exist"

    .line 69
    .line 70
    .line 71
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_1
    iget-object v10, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    .line 77
    .line 78
    if-nez v10, :cond_2

    .line 79
    .line 80
    const-string/jumbo v10, "shortcut"

    .line 81
    .line 82
    .line 83
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-static {v10}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    iput-object v10, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    .line 92
    .line 93
    if-nez v10, :cond_2

    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 98
    .line 99
    .line 100
    move-result-wide v10

    .line 101
    :try_start_0
    iget-object v12, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    .line 102
    .line 103
    const/4 v13, 0x1

    .line 104
    invoke-interface {v12, v6, v13}, Landroid/content/pm/IShortcutService;->isRequestPinItemSupported(II)Z

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    if-eqz v12, :cond_7

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    if-lez v14, :cond_3

    .line 117
    .line 118
    new-instance v14, Landroid/content/ComponentName;

    .line 119
    .line 120
    invoke-direct {v14, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_6

    .line 126
    .line 127
    :catch_0
    move-exception v0

    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_3
    const/4 v14, 0x0

    .line 131
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 132
    .line 133
    const-string v15, "android.intent.action.MAIN"

    .line 134
    .line 135
    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    if-nez v14, :cond_4

    .line 139
    .line 140
    const-string v15, "android.intent.category.LAUNCHER"

    .line 141
    .line 142
    invoke-virtual {v2, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    iget-object v15, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 149
    .line 150
    invoke-virtual {v15, v2, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 159
    .line 160
    if-eqz v2, :cond_5

    .line 161
    .line 162
    new-instance v14, Landroid/content/ComponentName;

    .line 163
    .line 164
    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 165
    .line 166
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 167
    .line 168
    invoke-direct {v14, v1, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {v2, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    iget-object v15, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 176
    .line 177
    invoke-virtual {v15, v2, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 186
    .line 187
    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    .line 188
    .line 189
    iget-object v15, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 190
    .line 191
    invoke-virtual {v2, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    iget-object v12, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 200
    .line 201
    invoke-virtual {v2, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .line 223
    .line 224
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v3, ",pkgName:"

    .line 233
    .line 234
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, ",userid"

    .line 241
    .line 242
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    new-instance v3, Landroid/content/pm/ShortcutInfo$Builder;

    .line 260
    .line 261
    invoke-direct {v3, v5, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v15}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v3, v12}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v3, v14}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    new-instance v3, Landroid/os/PersistableBundle;

    .line 281
    .line 282
    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string/jumbo v6, "do_not_show_popup"

    .line 286
    .line 287
    .line 288
    const-string/jumbo v12, "com.android.server.enterprise.application.ApplicationPolicy"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v6, v12}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string v6, "add_to_shortcut_personal"

    .line 295
    .line 296
    invoke-virtual {v3, v6, v13}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 303
    .line 304
    .line 305
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    new-instance v3, Lcom/android/internal/infra/AndroidFuture;

    .line 307
    .line 308
    invoke-direct {v3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 309
    .line 310
    .line 311
    iget-object v6, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    .line 312
    .line 313
    invoke-interface {v6, v1, v2, v4, v3}, Landroid/content/pm/IShortcutService;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    check-cast v3, Landroid/content/Intent;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .line 322
    if-nez v3, :cond_6

    .line 323
    .line 324
    :try_start_3
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    .line 326
    .line 327
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    .line 329
    .line 330
    const/4 v6, 0x0

    .line 331
    goto :goto_5

    .line 332
    :catch_1
    move-exception v0

    .line 333
    const/4 v6, 0x0

    .line 334
    goto :goto_4

    .line 335
    :catch_2
    move-object v12, v3

    .line 336
    goto :goto_2

    .line 337
    :catch_3
    const/4 v12, 0x0

    .line 338
    :goto_2
    move-object v3, v12

    .line 339
    :cond_6
    const/high16 v4, 0x4000000

    .line 340
    .line 341
    const/4 v6, 0x0

    .line 342
    :try_start_4
    invoke-static {v5, v6, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    const-string v4, "<<<--->>> before calling requestPinShortcut"

    .line 347
    .line 348
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    .line 350
    .line 351
    :try_start_5
    new-instance v12, Lcom/android/internal/infra/AndroidFuture;

    .line 352
    .line 353
    invoke-direct {v12}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 354
    .line 355
    .line 356
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mShortcutService:Landroid/content/pm/IShortcutService;

    .line 357
    .line 358
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    const/4 v4, 0x0

    .line 363
    move-object/from16 v1, p2

    .line 364
    .line 365
    move-object v5, v12

    .line 366
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    check-cast v0, Ljava/lang/String;

    .line 374
    .line 375
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-nez v0, :cond_7

    .line 380
    .line 381
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    .line 383
    .line 384
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :catch_4
    :try_start_6
    const-string v0, "Shortcut with the same ID exists and is disabled."

    .line 389
    .line 390
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 391
    .line 392
    .line 393
    :cond_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    .line 395
    .line 396
    move v6, v13

    .line 397
    goto :goto_5

    .line 398
    :goto_4
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 418
    .line 419
    .line 420
    goto :goto_3

    .line 421
    :goto_5
    return v6

    .line 422
    :goto_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    .line 424
    .line 425
    throw v0
.end method

.method public final addNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "addNetworkSSID - ssid : "

    .line 6
    .line 7
    const-string v1, "KnoxMUMContainerPolicy"

    .line 8
    .line 9
    invoke-static {v0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-lez v2, :cond_1

    .line 25
    .line 26
    move-object v0, p2

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p2

    .line 29
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    return p2

    .line 36
    :cond_2
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v3, v2

    .line 47
    check-cast v3, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_3
    const-string p0, "addNetworkSSID failed : already exist"

    .line 61
    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return p2
.end method

.method public final addPackageToExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 10

    .line 1
    const-string v0, "Package Info: "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "addPackageToExternalStorageBlackList "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string/jumbo v2, "null"

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string v3, "KnoxMUMContainerPolicy"

    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 32
    .line 33
    .line 34
    filled-new-array {v4}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    if-eqz v2, :cond_b

    .line 58
    .line 59
    if-eqz p2, :cond_b

    .line 60
    .line 61
    :try_start_0
    const-string v6, ""

    .line 62
    .line 63
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-nez v6, :cond_b

    .line 68
    .line 69
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 74
    .line 75
    const-wide/16 v8, 0x40

    .line 76
    .line 77
    invoke-interface {v6, p2, v8, v9, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 100
    .line 101
    if-eqz v8, :cond_2

    .line 102
    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 109
    .line 110
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto/16 :goto_a

    .line 127
    .line 128
    :catch_0
    move-exception p0

    .line 129
    goto/16 :goto_9

    .line 130
    .line 131
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    move v0, v7

    .line 134
    :goto_2
    if-eqz v0, :cond_4

    .line 135
    .line 136
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const/4 v8, 0x0

    .line 140
    :goto_3
    invoke-virtual {p0, v2, p2, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addPackageToExternalStorageSBABlackListInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_b

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    .line 151
    .line 152
    if-nez v2, :cond_5

    .line 153
    .line 154
    const-string v2, "SEAMService"

    .line 155
    .line 156
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lcom/android/server/SEAMService;

    .line 161
    .line 162
    iput-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    .line 163
    .line 164
    :cond_5
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    .line 165
    .line 166
    if-nez p0, :cond_6

    .line 167
    .line 168
    const-string p0, "addPackageToExternalStorageSBABlackList : SEAMS service cannot be null."

    .line 169
    .line 170
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    .line 175
    .line 176
    return v1

    .line 177
    :cond_6
    if-eqz v0, :cond_9

    .line 178
    .line 179
    :try_start_3
    array-length p0, v0

    .line 180
    if-nez p0, :cond_7

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    array-length p0, v0

    .line 184
    new-array p0, p0, [Ljava/lang/String;

    .line 185
    .line 186
    move v2, v7

    .line 187
    :goto_4
    array-length v6, v0

    .line 188
    if-ge v2, v6, :cond_8

    .line 189
    .line 190
    aget-object v6, v0, v2

    .line 191
    .line 192
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    aput-object v6, p0, v2

    .line 197
    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_8
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 202
    .line 203
    const-string/jumbo p1, "knox.container.proxy.EXTRA_PACKAGE_NAME"

    .line 204
    .line 205
    .line 206
    const-string v0, "android.intent.extra.user_handle"

    .line 207
    .line 208
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 213
    .line 214
    .line 215
    move-result-wide p1

    .line 216
    const-string/jumbo v0, "knox.container.proxy.POLICY_SDCARD_POLICY_CHANGED"

    .line 217
    .line 218
    .line 219
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_9
    :goto_5
    const-string p0, "addPackageToExternalStorageSBABlackList : package signature cannot be null."

    .line 227
    .line 228
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    .line 231
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    .line 233
    .line 234
    return v1

    .line 235
    :cond_a
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    .line 237
    .line 238
    return v7

    .line 239
    :catch_1
    move-exception p0

    .line 240
    goto :goto_7

    .line 241
    :catch_2
    move-exception p0

    .line 242
    goto :goto_8

    .line 243
    :goto_7
    :try_start_4
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    .line 249
    .line 250
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    .line 252
    .line 253
    return v1

    .line 254
    :goto_8
    :try_start_5
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    .line 260
    .line 261
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    .line 263
    .line 264
    return v1

    .line 265
    :goto_9
    :try_start_6
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 270
    .line 271
    .line 272
    :cond_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    .line 274
    .line 275
    goto :goto_b

    .line 276
    :goto_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    .line 278
    .line 279
    throw p0

    .line 280
    :goto_b
    const-string p0, "addPackageToExternalStorageSBABlackList policy failed"

    .line 281
    .line 282
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    return v1
.end method

.method public final addPackageToExternalStorageSBABlackListInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    array-length v1, p3

    .line 5
    if-lez v1, :cond_1

    .line 6
    .line 7
    array-length v1, p3

    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    .line 10
    move v2, v0

    .line 11
    :goto_0
    array-length v3, p3

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    aget-object v3, p3, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    aput-object v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p3, ","

    .line 26
    .line 27
    invoke-static {p3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string p3, ""

    .line 33
    .line 34
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .line 38
    .line 39
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 40
    .line 41
    const-string v2, "adminUid"

    .line 42
    .line 43
    const-string/jumbo v3, "packageName"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1, v2, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 50
    .line 51
    const-string p2, "KnoxExternalStorageSBABlacklist"

    .line 52
    .line 53
    invoke-virtual {p1, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const-string/jumbo v2, "signatures"

    .line 58
    .line 59
    .line 60
    if-lez p1, :cond_2

    .line 61
    .line 62
    invoke-static {v2, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    .line 68
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    .line 78
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    :goto_2
    if-eqz p0, :cond_3

    .line 83
    .line 84
    const-string p0, "KnoxMUMContainerPolicy"

    .line 85
    .line 86
    const-string p1, "addPackageToExternalStorageSBABlackListInternal policy passed"

    .line 87
    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :cond_3
    return v0
.end method

.method public final addPackageToExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addPackageToExternalStorageWhiteList "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string/jumbo v1, "null"

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "KnoxMUMContainerPolicy"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 33
    .line 34
    .line 35
    filled-new-array {v2}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 v0, -0x1

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 58
    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v0

    .line 63
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    const/4 v4, 0x2

    .line 68
    :try_start_0
    invoke-interface {p0, p1, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-exception p0

    .line 79
    :try_start_1
    const-string p1, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageWhiteList "

    .line 80
    .line 81
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_2
    return v0

    .line 86
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addPackageToInstallWhiteList is called for package - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string/jumbo v1, "null"

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "KnoxMUMContainerPolicy"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 33
    .line 34
    .line 35
    filled-new-array {v2}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 v0, -0x1

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 58
    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v0

    .line 63
    :cond_1
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-interface {p0, p1, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string p1, "Failed at ContainerConfigurationPolicy API addPackageToInstallWhiteList "

    .line 87
    .line 88
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    return v0
.end method

.method public final allowLayoutSwitching(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    const-string v0, "allowLayoutSwitching status - "

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 6
    .line 7
    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    :try_start_0
    const-string v5, "LAYOUT_SWITCH"

    .line 33
    .line 34
    invoke-virtual {p0, v1, v5, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string p0, "KnoxMUMContainerPolicy"

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", personaId - "

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception p0

    .line 70
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_1
    return v2

    .line 75
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_0
    return v2
.end method

.method public final cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "cancelCreateContainer"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "KnoxMUMContainerPolicy"

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "cancelCreateContainer ->  :  adminParam: "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    monitor-exit p1

    .line 36
    return v1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v2, "state"

    .line 45
    .line 46
    .line 47
    const/16 v3, 0xc

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    .line 55
    .line 56
    .line 57
    monitor-exit p1

    .line 58
    return v1

    .line 59
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final checkProvisioningPreCondition(ILjava/lang/String;Z)I
    .locals 7

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "checkProvisioningPreCondition"

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 3
    :cond_0
    const-string v0, "KnoxMUMContainerPolicy"

    const-string/jumbo v1, "checkProvisioningPreCondition called type:"

    const-string v2, " flags:"

    .line 4
    invoke-static {p1, v1, p2, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypeByName(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 6
    const-string/jumbo v2, "secure-folder"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, -0x270f

    if-ne v2, v3, :cond_1

    .line 8
    const-string p0, "KnoxMUMContainerPolicy"

    const-string p1, "Cannot create Legacy container on PEACE products"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 9
    :cond_1
    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    instance-of v2, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v2, :cond_2

    .line 10
    const-string p0, "KnoxMUMContainerPolicy"

    const-string p1, "Cannot create COM container on PEACE products"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 11
    :cond_2
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 13
    instance-of v4, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    const/16 v5, -0x3f6

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    const-string p0, "KnoxMUMContainerPolicy"

    const-string p1, "Cannot create COM container on DeskTopMode(DEX)"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 15
    :cond_3
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "desktopmode"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v4

    .line 17
    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v0, :cond_4

    iget v0, v4, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 18
    const-string v0, "KnoxMUMContainerPolicy"

    const-string v4, "Cannot create COM container on DeskTopMode(Dual mode)"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_4
    invoke-static {p1, p3, v2}, Lcom/android/server/pm/PersonaServiceHelper;->canAddMoreManagedProfiles(IZLjava/util/List;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 21
    const-string p0, "KnoxMUMContainerPolicy"

    const-string p1, "Cannot add more profiles"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3fd

    return p0

    .line 22
    :cond_5
    iget-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    monitor-enter p3

    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-eqz p0, :cond_6

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    if-le p0, v1, :cond_6

    .line 24
    const-string p0, "KnoxMUMContainerPolicy"

    const-string v0, "Another provisioning is ongoing."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 25
    :cond_6
    :goto_0
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const-string p0, "KnoxMUMContainerPolicy"

    const-string/jumbo p3, "checkProvisioningPreCondition allowed:"

    const-string v0, " flags:"

    .line 27
    invoke-static {p1, p3, p2, v0, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 28
    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final checkProvisioningPreCondition(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkProvisioningPreCondition(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final clearNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "clearNetworkSSID - admin UID : "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    .line 15
    const-string v2, "KnoxMUMContainerPolicy"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 21
    .line 22
    const-string v0, "adminUid"

    .line 23
    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    .line 38
    const-string v1, "ContainerOnly_wifiAP"

    .line 39
    .line 40
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final clearPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 1
    const-string p0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo p1, "clearPackagesFromExternalStorageBlackList is not available."

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    return p0
.end method

.method public final clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "KnoxMUMContainerPolicy"

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string p1, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageWhiteList "

    .line 50
    .line 51
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return v1
.end method

.method public final createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "adminUid : "

    .line 6
    .line 7
    const-string/jumbo v3, "provisioning not allowed: "

    .line 8
    .line 9
    .line 10
    const-string v4, "admin : "

    .line 11
    .line 12
    const/16 v5, -0x402

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string v0, "KnoxMUMContainerPolicy"

    .line 17
    .line 18
    const-string/jumbo v1, "provisioning failed. no creation param"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v5

    .line 25
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getConfigurationName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-virtual {v0, v7, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-eqz v6, :cond_17

    .line 35
    .line 36
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_1

    .line 41
    .line 42
    goto/16 :goto_a

    .line 43
    .line 44
    :cond_1
    const/4 v8, 0x0

    .line 45
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 50
    .line 51
    instance-of v9, v6, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    .line 52
    .line 53
    const/16 v10, -0x3f6

    .line 54
    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    const-string/jumbo v12, "no_add_managed_profile"

    .line 62
    .line 63
    .line 64
    sget-object v13, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 65
    .line 66
    invoke-virtual {v11, v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_3

    .line 71
    .line 72
    :cond_2
    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-eqz v11, :cond_3

    .line 77
    .line 78
    const-string v1, "KnoxMUMContainerPolicy"

    .line 79
    .line 80
    const-string/jumbo v2, "createContainer fails when Device Owner is enabled."

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 87
    .line 88
    const/16 v2, 0x8

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .line 98
    .line 99
    return v10

    .line 100
    :cond_3
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    new-instance v12, Ljava/util/ArrayList;

    .line 103
    .line 104
    const-string/jumbo v13, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 105
    .line 106
    .line 107
    filled-new-array {v13}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v11, v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    iget-object v11, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 122
    .line 123
    iget v12, v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    .line 124
    .line 125
    const/4 v13, 0x1

    .line 126
    add-int/2addr v12, v13

    .line 127
    iput v12, v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    .line 128
    .line 129
    const/16 v14, 0xa

    .line 130
    .line 131
    if-le v12, v14, :cond_4

    .line 132
    .line 133
    iput v13, v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    .line 134
    .line 135
    :cond_4
    iget v12, v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    .line 136
    .line 137
    iget-object v11, v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->random:Ljava/util/Random;

    .line 138
    .line 139
    const v14, 0x186a0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v14}, Ljava/util/Random;->nextInt(I)I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    mul-int/2addr v11, v12

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getAdminPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getConfigurationName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/CreationParams;->getPasswordResetToken()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 162
    .line 163
    if-lez v1, :cond_5

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 175
    .line 176
    .line 177
    move-result-wide v16

    .line 178
    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 179
    .line 180
    .line 181
    move-result v18

    .line 182
    if-eqz v18, :cond_6

    .line 183
    .line 184
    const-string v0, "KnoxMUMContainerPolicy"

    .line 185
    .line 186
    const-string v1, "Only primary profile (user 0) can activate PO/DO"

    .line 187
    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .line 190
    .line 191
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    .line 193
    .line 194
    return v10

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    goto/16 :goto_9

    .line 197
    .line 198
    :cond_6
    :try_start_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    if-nez v10, :cond_7

    .line 203
    .line 204
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    .line 206
    .line 207
    const/16 v0, -0x400

    .line 208
    .line 209
    return v0

    .line 210
    :cond_7
    if-eqz v12, :cond_9

    .line 211
    .line 212
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    if-eqz v10, :cond_8

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_8
    :try_start_3
    const-string v7, "KnoxMUMContainerPolicy"

    .line 220
    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v4, ", callingUid - "

    .line 230
    .line 231
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v4, v12, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result v1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    move v4, v8

    .line 259
    goto :goto_2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 265
    .line 266
    .line 267
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    .line 269
    .line 270
    return v5

    .line 271
    :cond_9
    :goto_1
    :try_start_5
    iget-object v4, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 272
    .line 273
    if-nez v4, :cond_a

    .line 274
    .line 275
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    const-string v5, "activity"

    .line 278
    .line 279
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    check-cast v4, Landroid/app/ActivityManager;

    .line 284
    .line 285
    iput-object v4, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 286
    .line 287
    :cond_a
    iget-object v4, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 288
    .line 289
    if-eqz v4, :cond_b

    .line 290
    .line 291
    invoke-virtual {v4, v7}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    :cond_b
    move v4, v13

    .line 296
    :goto_2
    instance-of v5, v6, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    .line 297
    .line 298
    if-eqz v5, :cond_c

    .line 299
    .line 300
    const v5, 0x10020060

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_c
    const v5, 0x10000060

    .line 305
    .line 306
    .line 307
    :goto_3
    invoke-virtual {v0, v5, v14, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkProvisioningPreCondition(ILjava/lang/String;Z)I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_d

    .line 312
    .line 313
    const-string v0, "KnoxMUMContainerPolicy"

    .line 314
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    .line 329
    .line 330
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    .line 332
    .line 333
    return v5

    .line 334
    :cond_d
    :try_start_6
    instance-of v3, v6, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    .line 335
    .line 336
    if-eqz v3, :cond_f

    .line 337
    .line 338
    if-nez v4, :cond_e

    .line 339
    .line 340
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 341
    .line 342
    .line 343
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    .line 345
    .line 346
    const/16 v0, -0x3ff

    .line 347
    .line 348
    return v0

    .line 349
    :cond_e
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isContainerOnlyModeAllowed()Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-nez v3, :cond_f

    .line 354
    .line 355
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 356
    .line 357
    .line 358
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    .line 360
    .line 361
    const/16 v0, -0x3fd

    .line 362
    .line 363
    return v0

    .line 364
    :cond_f
    :try_start_8
    const-string v3, "KnoxMUMContainerPolicy"

    .line 365
    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 382
    .line 383
    .line 384
    move-result v21

    .line 385
    const-string v22, "KnoxMUMContainerPolicy"

    .line 386
    .line 387
    const-string v2, "Admin %d has successfully requested to create container."

    .line 388
    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v23

    .line 401
    const/16 v19, 0x1

    .line 402
    .line 403
    const/16 v20, 0x1

    .line 404
    .line 405
    const/16 v24, 0x0

    .line 406
    .line 407
    const/16 v18, 0x5

    .line 408
    .line 409
    invoke-static/range {v18 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 410
    .line 411
    .line 412
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    .line 414
    .line 415
    if-eqz v9, :cond_10

    .line 416
    .line 417
    const-string v2, "KnoxMUMContainerPolicy"

    .line 418
    .line 419
    const-string v3, "Start to check secure folder"

    .line 420
    .line 421
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    new-instance v2, Landroid/os/Bundle;

    .line 425
    .line 426
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 427
    .line 428
    .line 429
    const-string/jumbo v3, "type"

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const-string/jumbo v3, "requestId"

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    .line 440
    .line 441
    const-string/jumbo v3, "isCLType"

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    .line 446
    .line 447
    const-string/jumbo v3, "pwdRstToken"

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    const-string/jumbo v3, "creatorUid"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    .line 458
    .line 459
    const-string/jumbo v1, "state"

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    .line 464
    .line 465
    const-string v1, "adminPackageName"

    .line 466
    .line 467
    invoke-virtual {v2, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 471
    .line 472
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 473
    .line 474
    .line 475
    iput-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 476
    .line 477
    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 478
    .line 479
    monitor-enter v3

    .line 480
    :try_start_9
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 481
    .line 482
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->start(Landroid/os/Bundle;)Z

    .line 483
    .line 484
    .line 485
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 486
    const-string/jumbo v0, "com.sec.knox.action.CREATE_SECURE_FOLDER"

    .line 487
    .line 488
    .line 489
    const-string/jumbo v1, "com.samsung.android.knox.containercore"

    .line 490
    .line 491
    .line 492
    invoke-static {v0, v1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 497
    .line 498
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 507
    .line 508
    .line 509
    goto/16 :goto_8

    .line 510
    .line 511
    :catchall_1
    move-exception v0

    .line 512
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 513
    throw v0

    .line 514
    :cond_10
    new-instance v2, Landroid/content/Intent;

    .line 515
    .line 516
    const-string v3, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 517
    .line 518
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    if-eqz v4, :cond_12

    .line 522
    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    if-eqz v0, :cond_12

    .line 532
    .line 533
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    if-eqz v3, :cond_12

    .line 542
    .line 543
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    check-cast v3, Landroid/content/ComponentName;

    .line 548
    .line 549
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v7, "Checking : "

    .line 556
    .line 557
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    const-string v7, "KnoxMUMContainerPolicy"

    .line 568
    .line 569
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    if-eqz v5, :cond_11

    .line 577
    .line 578
    goto :goto_4

    .line 579
    :cond_12
    const/4 v3, 0x0

    .line 580
    :goto_4
    if-eqz v3, :cond_13

    .line 581
    .line 582
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    .line 583
    .line 584
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 585
    .line 586
    .line 587
    goto :goto_5

    .line 588
    :cond_13
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    .line 589
    .line 590
    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    .line 592
    .line 593
    :goto_5
    const-string/jumbo v0, "com.samsung.knox.container.configType"

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    .line 598
    .line 599
    const-string/jumbo v0, "com.samsung.knox.container.requestId"

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    .line 604
    .line 605
    const-string/jumbo v0, "com.samsung.knox.container.isCLType"

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 609
    .line 610
    .line 611
    const-string/jumbo v0, "com.samsung.knox.container.pwdRstToken"

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    .line 616
    .line 617
    const-string/jumbo v0, "com.samsung.knox.container.adminUid"

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    .line 622
    .line 623
    :try_start_b
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 624
    .line 625
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {v0, v12, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 630
    .line 631
    .line 632
    move-result-object v7
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1

    .line 633
    goto :goto_6

    .line 634
    :catch_1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 635
    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    const-string v3, "Package \'"

    .line 639
    .line 640
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v3, "\' is not found"

    .line 647
    .line 648
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    const/4 v7, 0x0

    .line 659
    :goto_6
    if-eqz v7, :cond_14

    .line 660
    .line 661
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 662
    .line 663
    if-eqz v0, :cond_14

    .line 664
    .line 665
    const-string v0, "android.resource://"

    .line 666
    .line 667
    const-string v1, "/"

    .line 668
    .line 669
    invoke-static {v0, v12, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 674
    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    const-string v1, "android.app.extra.PROVISIONING_LOGO_URI"

    .line 687
    .line 688
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 689
    .line 690
    .line 691
    :cond_14
    const-string v0, "android.app.extra.PROVISIONING_MAIN_COLOR"

    .line 692
    .line 693
    const-string v1, "#3D6DCC"

    .line 694
    .line 695
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    .line 701
    .line 702
    const/high16 v0, 0x34020000

    .line 703
    .line 704
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 705
    .line 706
    .line 707
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 708
    .line 709
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    if-eqz v0, :cond_16

    .line 718
    .line 719
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 720
    .line 721
    new-instance v1, Landroid/os/UserHandle;

    .line 722
    .line 723
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 728
    .line 729
    .line 730
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 731
    .line 732
    if-eqz v3, :cond_15

    .line 733
    .line 734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 735
    .line 736
    .line 737
    move-result-wide v3

    .line 738
    :try_start_c
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 739
    .line 740
    .line 741
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    .line 743
    .line 744
    goto :goto_7

    .line 745
    :catchall_2
    move-exception v0

    .line 746
    move-object v1, v0

    .line 747
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 748
    .line 749
    .line 750
    throw v1

    .line 751
    :cond_15
    :goto_7
    const-string v0, "KnoxMUMContainerPolicy"

    .line 752
    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    .line 754
    .line 755
    const-string/jumbo v2, "createContainer: intent from User:"

    .line 756
    .line 757
    .line 758
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    const-string v2, " with requestid: "

    .line 769
    .line 770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    goto :goto_8

    .line 784
    :cond_16
    const-string v0, "KnoxMUMContainerPolicy"

    .line 785
    .line 786
    const-string v1, "Device provisioning is not enabled"

    .line 787
    .line 788
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    :goto_8
    return v11

    .line 792
    :goto_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    .line 794
    .line 795
    throw v0

    .line 796
    :cond_17
    :goto_a
    const-string v0, "KnoxMUMContainerPolicy"

    .line 797
    .line 798
    const-string v1, "Invalid Knox Configuration Type!"

    .line 799
    .line 800
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .line 802
    .line 803
    const/16 v0, -0x406

    .line 804
    .line 805
    return v0
.end method

.method public final createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    .locals 5

    .line 1
    const-string/jumbo v0, "createContainerInternal"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getContainerId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string/jumbo v1, "createContainerInternal ::  uid : "

    .line 16
    .line 17
    .line 18
    const-string v2, ", containerId : "

    .line 19
    .line 20
    const-string v3, "KnoxMUMContainerPolicy"

    .line 21
    .line 22
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v1, "Failed to add container to DB: "

    .line 28
    .line 29
    const-string v2, "Container Added to DB: "

    .line 30
    .line 31
    const-string v4, "Add Container owner relationship."

    .line 32
    .line 33
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEngMode:Z

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_0
    const-string p1, "Failed at addContainerToDB "

    .line 83
    .line 84
    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_1
    const-string/jumbo p0, "device_policy"

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    :try_start_1
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addPseudoAdminForWpcod(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_1
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_2
    const/4 p0, 0x0

    .line 115
    return p0
.end method

.method public final createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "createContainerMarkSuccess"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "KnoxMUMContainerPolicy"

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "createContainerMarkSuccess ->  : param: "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ne v3, v4, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v2, v1

    .line 67
    :goto_0
    if-eqz v2, :cond_2

    .line 68
    .line 69
    move-object v1, v2

    .line 70
    :cond_2
    if-eqz v1, :cond_3

    .line 71
    .line 72
    const/4 p0, 0x2

    .line 73
    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRequestState(I)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    monitor-exit v0

    .line 82
    const/4 p0, 0x0

    .line 83
    return p0

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final createContainerWithCallback(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;ILcom/samsung/android/knox/IEnterpriseContainerCallback;)I
    .locals 0

    .line 1
    sput-object p4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final deleteHomeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/16 v0, 0x10e

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "KnoxMUMContainerPolicy"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Only above Knox version 2.7 can support"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 21
    .line 22
    .line 23
    filled-new-array {v3}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, " removeShortcutFromPersonal"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Landroid/content/ComponentName;

    .line 53
    .line 54
    invoke-direct {v2, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object v2, v0

    .line 59
    :goto_0
    new-instance p3, Landroid/content/Intent;

    .line 60
    .line 61
    const-string v3, "android.intent.action.MAIN"

    .line 62
    .line 63
    invoke-direct {p3, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    invoke-virtual {p0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    if-nez p0, :cond_2

    .line 88
    .line 89
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    .line 94
    .line 95
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 96
    .line 97
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {v2, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_5

    .line 108
    :catch_0
    move-exception p0

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    new-instance p1, Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string/jumbo p2, "component"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo p2, "userid"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->REMOVE_SHORTCUT_CONTENT_URI:Landroid/net/Uri;

    .line 141
    .line 142
    const-string/jumbo p3, "remove_shortcut"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    .line 150
    .line 151
    const/4 v1, 0x1

    .line 152
    goto :goto_4

    .line 153
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :goto_4
    return v1

    .line 158
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method

.method public final doSelfUninstall()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 6
    .line 7
    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceCallingCheckPermission(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    .line 41
    .line 42
    invoke-direct {v4, p0, v3, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Fail doSelfUninstall "

    .line 53
    .line 54
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "KnoxMUMContainerPolicy"

    .line 58
    .line 59
    invoke-static {p0, v0, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, "Permission Denial: can\'t dump KnoxContainerManager"

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string p0, "KnoxMUMContainerPolicy"

    .line 27
    .line 28
    const-string/jumbo p1, "persona list is null"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    check-cast p3, Landroid/content/pm/UserInfo;

    .line 50
    .line 51
    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Persona:"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    if-eqz p3, :cond_2

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, " Object dump :{ mName :"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, " mVersion :"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v1, " mPasswordMinimumNonLetters :"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, " mPasswordMinimumLetters : "

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v1, " mPasswordMinimumNumeric : "

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, " mPasswordMinimumUpperCase : "

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v1, " mPasswordMinimumLowerCase : "

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v1, " mPasswordMinimumSymbols : "

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v1, " mPasswordQuality : "

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v1, " mMaximumFailedPasswordsForWipe : "

    .line 268
    .line 269
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v1, " mManagedType : "

    .line 289
    .line 290
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getManagedType()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v1, " mMaximumTimeToLock : "

    .line 310
    .line 311
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v1, " mCustomBadgeIcon : "

    .line 331
    .line 332
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v1, " mCustomHomeScreenWallpaper : "

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v1, " mEC : "

    .line 373
    .line 374
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v1, " mNameIcon : "

    .line 394
    .line 395
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v1, " mECName  : "

    .line 415
    .line 416
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    const-string v1, " mECIcon : "

    .line 436
    .line 437
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v1, " mECBadge : "

    .line 457
    .line 458
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string v1, " mCustomLockScreenWallpaper : "

    .line 478
    .line 479
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string v1, " mCustomStatusLabel : "

    .line 499
    .line 500
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    const-string v1, " mCustomStatusIcon : "

    .line 520
    .line 521
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    const-string v1, " mAppInstallationList : "

    .line 541
    .line 542
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    const-string v1, " mForbiddenStrings : "

    .line 562
    .line 563
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    const-string v1, " mProtectedList : "

    .line 583
    .line 584
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v1, " mGoogleAppsList : "

    .line 604
    .line 605
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    const-string v1, " mMaximumCharacterOccurences : "

    .line 625
    .line 626
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    const-string v1, " mMaximumCharacterSequenceLength : "

    .line 646
    .line 647
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string v1, " mMaximumNumericSequenceLength : "

    .line 667
    .line 668
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    .line 672
    .line 673
    .line 674
    move-result v1

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    const-string v1, " mPasswordMinimumLength : "

    .line 688
    .line 689
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    const-string v1, " mSimplePasswordEnabled : "

    .line 709
    .line 710
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    const-string v1, " mMultifactorAuthEnabled : "

    .line 730
    .line 731
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    const-string v1, " mPasswordPattern : "

    .line 751
    .line 752
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    .line 770
    .line 771
    const-string v1, " mAllowMultiwindowMode : "

    .line 772
    .line 773
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    .line 777
    .line 778
    .line 779
    move-result v1

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    .line 791
    .line 792
    const-string v1, " mAllowTaskManager : "

    .line 793
    .line 794
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    const-string v1, " mAllowUSBDebugging : "

    .line 814
    .line 815
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    const-string v0, " RCP Data sync settings : "

    .line 833
    .line 834
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-static {p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 842
    .line 843
    .line 844
    const-string v0, " RCP Allow User change Data sync settings : "

    .line 845
    .line 846
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-static {p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 854
    .line 855
    .line 856
    const-string v0, " RCP Notification sync settings : "

    .line 857
    .line 858
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    .line 862
    .line 863
    .line 864
    move-result-object p3

    .line 865
    invoke-static {p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 866
    .line 867
    .line 868
    const-string p3, "\n"

    .line 869
    .line 870
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    goto/16 :goto_0

    .line 874
    .line 875
    :cond_3
    return-void
.end method

.method public final enableBluetooth(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z
    .locals 12

    .line 1
    const-string p3, "Exception occured in installing bluetooth package inside container: "

    .line 2
    .line 3
    const-string/jumbo v0, "enableBluetooth status - "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "KnoxMUMContainerPolicy"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "enableBluetooth: bluetooth adapter is null! BT not supported on this device!"

    .line 16
    .line 17
    .line 18
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 25
    .line 26
    .line 27
    filled-new-array {v4}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 45
    .line 46
    new-instance v5, Landroid/content/ComponentName;

    .line 47
    .line 48
    const-string/jumbo p1, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v4, "com.android.bluetooth"

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    .line 59
    .line 60
    move-result-wide v10

    .line 61
    :try_start_0
    const-string p1, "Bluetooth"

    .line 62
    .line 63
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    const-wide/16 v0, 0x40

    .line 89
    .line 90
    invoke-interface {p1, v4, v0, v1, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_5

    .line 136
    :catch_2
    move-exception p0

    .line 137
    goto :goto_3

    .line 138
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    const/4 v9, 0x0

    .line 142
    const/4 v6, 0x1

    .line 143
    move-object v4, p1

    .line 144
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const/4 v7, 0x0

    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v6, 0x2

    .line 151
    move-object v4, p1

    .line 152
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->restartBluetooth$1()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :goto_4
    return v2

    .line 169
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_5
    return v2
.end method

.method public final enableExternalStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eq p2, v3, :cond_0

    .line 32
    .line 33
    const-string v3, "ExternalStorage"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const-string/jumbo p0, "knox.container.proxy.POLICY_SDCARD_POLICY_CHANGED"

    .line 42
    .line 43
    .line 44
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 45
    .line 46
    new-instance v5, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v6, "android.intent.extra.user_handle"

    .line 52
    .line 53
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    invoke-static {p0, v5}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    :cond_0
    move v2, v4

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_4

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_0
    const/16 p0, 0x80

    .line 73
    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 81
    .line 82
    invoke-virtual {p2, p1, p0}, Lcom/android/server/pm/PersonaManagerService;->setAttributes(II)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 91
    .line 92
    invoke-virtual {p2, p1, p0}, Lcom/android/server/pm/PersonaManagerService;->clearAttributes(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_2
    :try_start_1
    const-string p1, "KnoxMUMContainerPolicy"

    .line 100
    .line 101
    const-string p2, "Fail enableExternalStorage "

    .line 102
    .line 103
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_3
    return v2

    .line 108
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    throw p0
.end method

.method public final enableNFC(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z
    .locals 11

    .line 1
    const-string p3, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo v0, "enableNFC status - "

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 9
    .line 10
    .line 11
    filled-new-array {v2}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_6

    .line 28
    .line 29
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    :try_start_0
    const-string v5, "NFC"

    .line 36
    .line 37
    invoke-virtual {p0, v1, v5, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_c

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    move v1, v2

    .line 67
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_2
    if-eqz v1, :cond_5

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v3, "broadcast NFC policy change event "

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, " for "

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    new-instance v0, Landroid/content/Intent;

    .line 104
    .line 105
    const-string/jumbo v5, "com.samsung.android.knox.nfc.policy"

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string/jumbo v5, "containerId"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    const-string/jumbo v5, "com.sec.knox.container.extra.updated.value"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    const/16 v0, 0x96

    .line 132
    .line 133
    if-lt p1, v0, :cond_0

    .line 134
    .line 135
    const/16 v0, 0xa0

    .line 136
    .line 137
    if-gt p1, v0, :cond_0

    .line 138
    .line 139
    const-string/jumbo v0, "com.samsung.android.securefolder.nfc.discovered"

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_0
    const-string/jumbo v0, "com.samsung.android.knox.nfc.discovered"

    .line 144
    .line 145
    .line 146
    :goto_3
    if-eqz p2, :cond_3

    .line 147
    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 149
    .line 150
    .line 151
    move-result-wide v9

    .line 152
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->NFC_FILTERS:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    :cond_1
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_2

    .line 163
    .line 164
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    check-cast p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    .line 169
    .line 170
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    if-eqz v3, :cond_1

    .line 175
    .line 176
    iget-object v4, p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    .line 177
    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v8, 0x0

    .line 180
    move-object v5, v0

    .line 181
    move v7, p1

    .line 182
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    goto :goto_7

    .line 188
    :catch_2
    move-exception p0

    .line 189
    goto :goto_6

    .line 190
    :cond_2
    :goto_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    goto :goto_b

    .line 194
    :goto_6
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string p2, "addCrossProfileIntentFilter RemoteException: "

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :goto_7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_3
    const-string/jumbo p0, "clearCrossProfileIntentFilters RemoteException: "

    .line 220
    .line 221
    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 223
    .line 224
    .line 225
    move-result-wide p1

    .line 226
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-eqz v3, :cond_4

    .line 231
    .line 232
    invoke-interface {v3, v2, v0}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 233
    .line 234
    .line 235
    goto :goto_8

    .line 236
    :catchall_2
    move-exception p0

    .line 237
    goto :goto_a

    .line 238
    :catch_3
    move-exception v0

    .line 239
    goto :goto_9

    .line 240
    :cond_4
    :goto_8
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    .line 242
    .line 243
    goto :goto_b

    .line 244
    :goto_9
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :goto_a
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :cond_5
    :goto_b
    return v1

    .line 265
    :goto_c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :cond_6
    return v2
.end method

.method public final enableUsbAccess(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z
    .locals 4

    .line 1
    const-string/jumbo p3, "enableUsbAccess status - "

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    :try_start_0
    const-string p1, "USB"

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string p0, "KnoxMUMContainerPolicy"

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :goto_1
    return v1

    .line 68
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_0
    return v1
.end method

.method public final enforceAppSeparationPermission(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2, v1, p2, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_4

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    const-string p0, "Failed to retrieve DO component on device"

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_2
    :try_start_4
    const-string p0, ""

    .line 60
    .line 61
    :goto_3
    const/4 p1, 0x0

    .line 62
    invoke-interface {v2, v1, p0, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_1

    .line 67
    .line 68
    return-void

    .line 69
    :goto_4
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 73
    :catch_1
    const-string p0, "Error in checking AppSeparation Permission"

    .line 74
    .line 75
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 79
    .line 80
    const-string p1, "Knox App Separation Permission"

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "enforceMultifactorAuthentication is called...."

    .line 2
    .line 3
    .line 4
    const-string v1, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string/jumbo p1, "password_policy"

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-virtual {p1, p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string p1, "Failed at ContainerConfigurationPolicy API enforceMultifactorAuthentication "

    .line 55
    .line 56
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_0
    const-string/jumbo p0, "enforceMultifactorAuthentication result - "

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    return v0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 18
    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne v2, p1, :cond_1

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public final forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I
    .locals 8

    .line 1
    const/4 v0, -0x2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "forceResetPassword: containerId: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "KnoxMUMContainerPolicy"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 30
    .line 31
    .line 32
    filled-new-array {v2}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Reset Password requested for container "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string/jumbo v4, "resetPwdKey"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v6, "timeout"

    .line 73
    .line 74
    .line 75
    const-string/jumbo v2, "cxtInfo"

    .line 76
    .line 77
    .line 78
    move-object v3, p1

    .line 79
    move-object v5, p2

    .line 80
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 88
    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    const-string/jumbo p1, "lock_settings"

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 103
    .line 104
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 109
    .line 110
    if-nez p1, :cond_2

    .line 111
    .line 112
    const-string/jumbo p1, "dar"

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/android/server/knox/dar/DarManagerService;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 122
    .line 123
    :cond_2
    return v0
.end method

.method public final getAppSeparationConfig()Landroid/os/Bundle;
    .locals 8

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string v1, "AppSeparationTable"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    .line 13
    invoke-virtual {v4, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    const-string/jumbo p0, "getAppSeparationConfig(): no record. Return null"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "APP_SEPARATION_OUTSIDE"

    .line 34
    .line 35
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    const-string v7, "AppSeparationOutside"

    .line 38
    .line 39
    invoke-virtual {v6, v3, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v7, 0x1

    .line 44
    if-ne v6, v7, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v7, 0x0

    .line 48
    :goto_0
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    const-string v5, "APP_SEPARATION_APP_LIST"

    .line 52
    .line 53
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    .line 55
    const-string v7, "AppSeparationApplist"

    .line 56
    .line 57
    invoke-virtual {v6, v3, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertStringCommaDelimitedToList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    .line 72
    const-string v6, "AppSeparationCoexistenceList"

    .line 73
    .line 74
    invoke-virtual {p0, v3, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertStringCommaDelimitedToList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v4, v5, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string/jumbo v3, "getAppSeparationConfig() exception: "

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v1, v0}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v2
.end method

.method public final getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "application_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x1

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    if-ne p2, v2, :cond_1

    .line 59
    .line 60
    new-array p1, v5, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    aput-object p0, p1, v4

    .line 67
    .line 68
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const-string p0, "Caller inside persona ? : false throw exception"

    .line 76
    .line 77
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    new-instance p0, Ljava/lang/SecurityException;

    .line 81
    .line 82
    const-string p1, "No priviledge on containerId "

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/16 p2, 0x3e8

    .line 93
    .line 94
    if-eq p1, p2, :cond_4

    .line 95
    .line 96
    const/16 p2, 0x1482

    .line 97
    .line 98
    if-eq p1, p2, :cond_4

    .line 99
    .line 100
    if-eqz p0, :cond_3

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eq p2, p1, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    return-object v1

    .line 116
    :cond_4
    :goto_1
    new-array p1, v5, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 117
    .line 118
    aput-object p0, p1, v4

    .line 119
    .line 120
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object p0

    .line 125
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string p2, "Exception: "

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v1
.end method

.method public final getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 10
    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    .line 26
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string v2, "activity"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/app/ActivityManager;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    const/4 v4, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    move-object v0, v4

    .line 71
    :goto_1
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 72
    .line 73
    check-cast p0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    const-string/jumbo p0, "getConfigurationTypeByName type "

    .line 102
    .line 103
    .line 104
    const-string v2, " adminUid "

    .line 105
    .line 106
    invoke-static {p0, p2, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p2, " callingUid "

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string p2, "KnoxMUMContainerPolicy"

    .line 130
    .line 131
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    const-string/jumbo p0, "com.samsung.android.knox.containercore"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    const/4 p2, 0x0

    .line 142
    const/4 v2, 0x1

    .line 143
    if-nez p0, :cond_3

    .line 144
    .line 145
    const-string/jumbo p0, "com.android.managedprovisioning"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_3

    .line 153
    .line 154
    const/16 p0, 0x3e8

    .line 155
    .line 156
    if-eq p1, p0, :cond_3

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-eqz p0, :cond_3

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-ne p0, p1, :cond_2

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    new-array p0, v2, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 172
    .line 173
    aput-object v1, p0, p2

    .line 174
    .line 175
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :cond_3
    :goto_2
    new-array p0, v2, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 181
    .line 182
    aput-object v1, p0, p2

    .line 183
    .line 184
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :cond_4
    return-object v4

    .line 190
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    throw p0
.end method

.method public final getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 10
    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    .line 26
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_0
    const-string v0, "KnoxConfigurationType: input uid: "

    .line 34
    .line 35
    const-string v1, "KnoxMUMContainerPolicy"

    .line 36
    .line 37
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 41
    .line 42
    check-cast p0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/4 v0, 0x0

    .line 49
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eq v3, p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v4, "KnoxConfigurationType: name, uid: "

    .line 76
    .line 77
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, " "

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    :cond_3
    const-string/jumbo v3, "secure-folder"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    return-object v0
.end method

.method public final getContainerCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;
    .locals 6

    .line 1
    const-string/jumbo v0, "getContainerCreationParams"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 22
    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    move-object v1, v2

    .line 30
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    move-object v1, v3

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v1, v2

    .line 71
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->clone()Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_3
    return-object v2

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final getContainers(I)Ljava/util/List;
    .locals 10

    .line 1
    const-string v0, " "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getContainers: admin uid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxMUMContainerPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 7
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v7

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_1

    .line 10
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 11
    :cond_3
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 12
    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getContainers exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-object v1

    .line 13
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw p0
.end method

.method public final getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    if-eqz p1, :cond_0

    .line 15
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v0, :cond_0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 17
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "/data/misc/container3.0/"

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "custom-container-icon"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const-string/jumbo v4, "custom-name-icon"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v5, "custom-badge-icon"

    .line 21
    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const-string/jumbo v2, "profileIcon.png"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const-string v2, "badgeIcon.png"

    .line 40
    .line 41
    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    const-string/jumbo v2, "nameIcon.png"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-object v0, v3

    .line 61
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    const-string v2, "PATH = "

    .line 66
    .line 67
    const-string v6, "KnoxMUMContainerPolicy"

    .line 68
    .line 69
    invoke-static {v2, v0, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz p0, :cond_9

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_9

    .line 92
    .line 93
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_5
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_6
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_7
    const-string/jumbo p1, "custom-lock-screen-wallpaper"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :cond_8
    const-string/jumbo p1, "custom-home-screen-wallpaper"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_9

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_9
    return-object v3
.end method

.method public final getDefaultConfigurationTypes()Ljava/util/List;
    .locals 4

    .line 1
    const-string/jumbo v0, "getDefaultConfigurationTypes"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 8
    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "KnoxConfigurationType: name, uid: "

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "KnoxMUMContainerPolicy"

    .line 65
    .line 66
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-object v0
.end method

.method public final getDeviceOwnerUid()I
    .locals 5

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_4

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    const-string p0, "Failed to retrieve DO component on device"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    const-string p0, "Failed to get application info for DO component."

    .line 61
    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_3
    const/4 p0, -0x1

    .line 67
    return p0

    .line 68
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "device_policy"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    const-string p0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo p1, "getEnforceAuthForContainer failed > returning true"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public final getFIDOInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 7

    .line 1
    const-string v0, "KnoxFIDOSettingTable"

    .line 2
    .line 3
    const-string/jumbo v1, "getFIDOInfo()"

    .line 4
    .line 5
    .line 6
    const-string v2, "KnoxMUMContainerPolicy"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 14
    .line 15
    .line 16
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v4, "cid"

    .line 39
    .line 40
    .line 41
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    .line 52
    invoke-virtual {p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    const-string/jumbo p0, "getFIDOInfo(): no record. Return null"

    .line 59
    .line 60
    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v4, "fido_request_uri"

    .line 73
    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    .line 77
    const-string/jumbo v6, "request"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v4, "fido_response_uri"

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    .line 92
    const-string/jumbo v5, "respond"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v0, "getFIDOInfo() exception: "

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p1, v2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v1
.end method

.method public final getFeatureAccessPermission(ILjava/lang/String;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "featureValue"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-instance v3, Landroid/content/ContentValues;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "adminUid"

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo p1, "featureType"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 40
    .line 41
    const-string p1, "KnoxFeatureAccess"

    .line 42
    .line 43
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-lez p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/content/ContentValues;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-lez p2, :cond_0

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    move v2, p1

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const-string p0, "LAYOUT_SWITCH"

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const-string p0, "Bluetooth"

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_2

    .line 104
    .line 105
    const-string p0, "USB"

    .line 106
    .line 107
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_2

    .line 112
    .line 113
    const-string p0, "NFC"

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    if-eqz p0, :cond_3

    .line 120
    .line 121
    :cond_2
    const/4 v2, 0x1

    .line 122
    goto :goto_2

    .line 123
    :goto_1
    const-string/jumbo p1, "getFeatureAccessPermission exception "

    .line 124
    .line 125
    .line 126
    const-string p2, "KnoxMUMContainerPolicy"

    .line 127
    .line 128
    invoke-static {p0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_2
    return v2
.end method

.method public final getHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0x1388

    .line 21
    .line 22
    const-string v2, "KnoxMUMContainerPolicy"

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    const-string/jumbo v3, "propertyValue"

    .line 27
    .line 28
    .line 29
    filled-new-array {v3}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-instance v5, Landroid/content/ContentValues;

    .line 34
    .line 35
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 39
    .line 40
    const-string/jumbo v7, "cid"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v8, "propertyName"

    .line 44
    .line 45
    .line 46
    const-string v9, "HibernationTimeout"

    .line 47
    .line 48
    invoke-static {v6, v5, v7, v8, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    .line 53
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 54
    .line 55
    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v6, "adminUid"

    .line 64
    .line 65
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    .line 70
    const-string p1, "CONTAINER_POLICY"

    .line 71
    .line 72
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-lez p1, :cond_2

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v0, "time=- "

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroid/content/ContentValues;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Landroid/content/ContentValues;

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-eqz p0, :cond_1

    .line 124
    .line 125
    const-string p1, "0"

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_0

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide p0

    .line 138
    return-wide p0

    .line 139
    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    .line 140
    .line 141
    return-wide p0

    .line 142
    :cond_2
    const-string/jumbo p0, "getHibernationTimeout failed to get value from DB > returning default value"

    .line 143
    .line 144
    .line 145
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    return-wide v0

    .line 149
    :cond_3
    const-string/jumbo p0, "getHibernationTimeout failed > returning default value."

    .line 150
    .line 151
    .line 152
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    return-wide v0
.end method

.method public final getKnoxCustomBadgePolicy()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "getNetworkSSID - adminUid : "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "KnoxMUMContainerPolicy"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x1

    .line 65
    if-le v1, v2, :cond_1

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/16 v4, 0x22

    .line 73
    .line 74
    if-ne v3, v4, :cond_1

    .line 75
    .line 76
    add-int/lit8 v1, v1, -0x1

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ne v3, v4, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-object v0
.end method

.method public final getOwnContainers()[Lcom/samsung/android/knox/container/EnterpriseContainerObject;
    .locals 12

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, "KnoxMUMContainerPolicy"

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 v7, 0x1

    .line 25
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :catch_0
    move-exception p0

    .line 34
    move-object v7, v5

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    move-object v6, v5

    .line 38
    :goto_0
    if-eqz v6, :cond_3

    .line 39
    .line 40
    new-instance v7, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_4

    .line 54
    .line 55
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 60
    .line 61
    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 62
    .line 63
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    .line 64
    .line 65
    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    sget-boolean v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 70
    .line 71
    if-eqz v10, :cond_2

    .line 72
    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v11, "Persona found with id , creator uid, passed uid: "

    .line 79
    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    .line 84
    .line 85
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_1
    move-exception p0

    .line 109
    goto :goto_4

    .line 110
    :cond_2
    :goto_2
    if-ne v9, v2, :cond_1

    .line 111
    .line 112
    new-instance v9, Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    .line 113
    .line 114
    invoke-direct {v9}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;-><init>()V

    .line 115
    .line 116
    .line 117
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    .line 118
    .line 119
    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->setContainerId(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v2}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 130
    .line 131
    invoke-virtual {v10, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    iget-object v8, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v9, v8}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    move-object v7, v5

    .line 145
    :cond_4
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :goto_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v2, "getOwnContainers exception: "

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :goto_5
    if-eqz v7, :cond_5

    .line 176
    .line 177
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-nez p0, :cond_5

    .line 182
    .line 183
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    new-array p0, p0, [Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    .line 188
    .line 189
    invoke-interface {v7, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    move-object v5, p0

    .line 194
    check-cast v5, [Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    .line 195
    .line 196
    :cond_5
    return-object v5

    .line 197
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    .line 199
    .line 200
    throw p0
.end method

.method public final getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    const-string/jumbo v0, "getPackageSignaturesFromExternalStorageWhiteList"

    .line 2
    .line 3
    .line 4
    const-string v1, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string p1, "Failed at ContainerConfigurationPolicy API getPackageSignaturesFromExternalStorageWhiteList "

    .line 60
    .line 61
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-object v0
.end method

.method public final getPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 6

    .line 1
    const-string/jumbo v0, "getPackagesFromExternalStorageBlackList "

    .line 2
    .line 3
    .line 4
    const-string v1, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    const-string/jumbo v2, "packageName"

    .line 33
    .line 34
    .line 35
    filled-new-array {v2}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .line 43
    .line 44
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v5, "adminUid"

    .line 51
    .line 52
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 56
    .line 57
    const-string p1, "KnoxExternalStorageSBABlacklist"

    .line 58
    .line 59
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-lez p1, :cond_4

    .line 70
    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroid/content/ContentValues;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 103
    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v2, "getPackagesFromExternalStorageSBABlackList SUCCESS : "

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-lez p0, :cond_3

    .line 129
    .line 130
    move-object v0, p1

    .line 131
    :cond_3
    return-object v0

    .line 132
    :cond_4
    const-string/jumbo p0, "getPackagesFromExternalStorageSBABlackList policy returning null"

    .line 133
    .line 134
    .line 135
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return-object v0
.end method

.method public final getPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    const-string/jumbo v0, "getPackagesFromExternalStorageWhiteList "

    .line 2
    .line 3
    .line 4
    const-string v1, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    const/4 v4, 0x2

    .line 47
    invoke-interface {p0, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageWhiteList "

    .line 57
    .line 58
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    return-object v0
.end method

.method public final getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    const-string/jumbo v0, "getPackagesFromInstallWhiteList is called..."

    .line 2
    .line 3
    .line 4
    const-string v1, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-interface {p0, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "Failed at ContainerConfigurationPolicy API getPackagesFromInstallWhiteList "

    .line 57
    .line 58
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    return-object v0
.end method

.method public final getProvisioningState()Landroid/os/Bundle;
    .locals 2

    .line 1
    const-string/jumbo v0, "getProvisioningState"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, "KnoxMUMContainerPolicy"

    .line 15
    .line 16
    const-string/jumbo v1, "no ongoing provisioning"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance p0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toBundle()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    monitor-exit v0

    .line 36
    return-object p0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final getSSID(I)Ljava/util/Set;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "ContainerOnly_wifiAP"

    .line 5
    .line 6
    const-string/jumbo v2, "wifiSSIDforKNOX"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-lez v1, :cond_0

    .line 25
    .line 26
    const-string v1, ","

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    array-length v1, p0

    .line 33
    :goto_0
    if-ge v0, v1, :cond_0

    .line 34
    .line 35
    aget-object v2, p0, v0

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object p1
.end method

.method public final getService()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "persona"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getStatus(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getStatus exception: "

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 7
    .line 8
    .line 9
    filled-new-array {v2}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    :try_start_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getStatusInternal(I)I

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_1
    const-string p1, "KnoxMUMContainerPolicy"

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    const/4 p0, -0x1

    .line 65
    return p0

    .line 66
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final getStatusInternal(I)I
    .locals 6

    .line 1
    const-string/jumbo v0, "getStatusInternal of user: "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "KnoxMUMContainerPolicy"

    .line 9
    .line 10
    const-string/jumbo v3, "getStatusInternal callerUid : "

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v3, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x3e8

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v4, "KnoxMUMContainerPolicy"

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 57
    .line 58
    if-ne p0, p1, :cond_1

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    const/16 p0, 0x5d

    .line 62
    .line 63
    return p0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    const/16 p0, 0x5f

    .line 74
    .line 75
    return p0

    .line 76
    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    const/16 p0, 0x5b

    .line 84
    .line 85
    return p0

    .line 86
    :cond_3
    monitor-exit v0

    .line 87
    goto :goto_1

    .line 88
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    const-string p1, "KnoxMUMContainerPolicy"

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string/jumbo v1, "getStatusInternal exception: "

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v0, p1}, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_1
    return v3
.end method

.method public final getUserManagerService()Landroid/os/UserManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "user"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/UserManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "Bluetooth"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception p0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    return v0

    .line 28
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    return v0
.end method

.method public final isBluetoothEnabledBeforeFOTA(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "Bluetooth"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception p0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    return v0

    .line 28
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    return v0
.end method

.method public final isContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v3, "caller_id_to_show_"

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v1, p0, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 p1, 0x1

    .line 48
    if-ne p0, p1, :cond_0

    .line 49
    .line 50
    move v0, p1

    .line 51
    :cond_0
    return v0
.end method

.method public final isContainerOnlyModeAllowed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "KnoxMUMContainerPolicy"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-string/jumbo p0, "isContainerOnlyModeAllowed return false, reason: the device is managed by any device owner. "

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const-string/jumbo p0, "isContainerOnlyModeAllowed return false, reason: managed profile exists on the device. "

    .line 66
    .line 67
    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return v2

    .line 72
    :cond_2
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :cond_3
    return v2
.end method

.method public final isEmergencyModeSupported()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    move v1, v2

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v1, v3, :cond_3

    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 36
    .line 37
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 38
    .line 39
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 46
    .line 47
    and-int/lit8 v4, v3, 0x10

    .line 48
    .line 49
    const/16 v5, 0x10

    .line 50
    .line 51
    if-ne v4, v5, :cond_1

    .line 52
    .line 53
    and-int/lit8 v3, v3, 0x40

    .line 54
    .line 55
    const/16 v4, 0x40

    .line 56
    .line 57
    if-ne v3, v4, :cond_2

    .line 58
    .line 59
    :cond_1
    monitor-exit v0

    .line 60
    return v2

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    monitor-exit v0

    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_4
    :goto_1
    monitor-exit v0

    .line 70
    return v2

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 4
    .line 5
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    const-string v2, "ExternalStorage"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_1
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method public final isLayoutSwitchingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "isLayoutSwitchingAllowed API is called for personaId - "

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "KnoxMUMContainerPolicy"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    :try_start_0
    const-string v3, "LAYOUT_SWITCH"

    .line 31
    .line 32
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    return v0

    .line 48
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_0
    return v0
.end method

.method public final isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string/jumbo p0, "isMultifactorAuthenticationEnforced is called...."

    .line 2
    .line 3
    .line 4
    const-string v0, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo p0, "password_policy"

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "Failed at ContainerConfigurationPolicy API isMultifactorAuthenticationEnabled "

    .line 35
    .line 36
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    const-string/jumbo p0, "isMultifactorAuthenticationEnabled result - "

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    .line 21
    .line 22
    .line 23
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    return v0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v5, "isNFCEnabled exception: "

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v5, "KnoxMUMContainerPolicy"

    .line 37
    .line 38
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :try_start_1
    const-string v3, "NFC"

    .line 42
    .line 43
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :catch_1
    move-exception p0

    .line 54
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_1
    return v0

    .line 59
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    return v0
.end method

.method public final isPackageAllowedToAccessExternalSdcard(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 0

    .line 1
    const-string p0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo p1, "isPackageAllowedToAccessExternalSdcard"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final isPackageInInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "isPackageInInstallWhiteList is called for pkgName - "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "KnoxMUMContainerPolicy"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 24
    .line 25
    .line 26
    filled-new-array {v2}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 v0, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 49
    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInApprovedInstallerWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string p1, "Failed at ContainerConfigurationPolicy API isPackageInInstallWhiteList "

    .line 68
    .line 69
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    return v0
.end method

.method public final isResetContainerOnRebootEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo v1, "isResetPersonaOnRebootEnabled personaId "

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 13
    .line 14
    .line 15
    filled-new-array {v4}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 27
    .line 28
    .line 29
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 67
    .line 68
    .line 69
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/16 p1, 0x40

    .line 71
    .line 72
    and-int/2addr p0, p1

    .line 73
    if-ne p0, p1, :cond_1

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    :try_start_1
    const-string p1, "Failed at KnoxMUMContainerPolicy API isResetContainerOnRebootEnabled "

    .line 86
    .line 87
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :goto_2
    return v2

    .line 92
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final isSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "isSettingsOptionEnabled(): Return result: "

    .line 2
    .line 3
    .line 4
    const-string v1, "Target container is superlocked. return false for "

    .line 5
    .line 6
    const-string/jumbo v2, "isSettingsOptionEnabled"

    .line 7
    .line 8
    .line 9
    const-string v3, "KnoxMUMContainerPolicy"

    .line 10
    .line 11
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto :goto_5

    .line 24
    :cond_0
    :try_start_0
    const-string/jumbo v4, "option_callerinfo"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_4

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :catch_1
    move-exception p2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance p2, Landroid/os/UserHandle;

    .line 89
    .line 90
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    xor-int/lit8 p0, p0, 0x1

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return p0

    .line 115
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 119
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string/jumbo p2, "isSettingsOptionEnabled() exception: "

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, p1, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return v2

    .line 131
    :cond_3
    :goto_5
    const-string p0, "Error from isSettingsOptionEnabled(): option is null or empty"

    .line 132
    .line 133
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return v2
.end method

.method public final isSettingsOptionEnabledInternal(ILjava/lang/String;Z)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "isSettingsOptionEnabledInternal: Return result: "

    .line 2
    .line 3
    .line 4
    const-string v1, "Target container is superlocked. return false for "

    .line 5
    .line 6
    sget-boolean v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 7
    .line 8
    const-string v3, "KnoxMUMContainerPolicy"

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v5, "isSettingsOptionEnabledInternal for personaId="

    .line 15
    .line 16
    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v5, "; option="

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 39
    if-eqz p2, :cond_6

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    :try_start_0
    const-string/jumbo v2, "option_callerinfo"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    return v4

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_4

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_3

    .line 91
    :catch_1
    move-exception p2

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p2, Landroid/os/UserHandle;

    .line 112
    .line 113
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    xor-int/lit8 p0, p0, 0x1

    .line 121
    .line 122
    sget-boolean p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_3
    return p0

    .line 142
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    .line 144
    .line 145
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 146
    :cond_4
    sget-boolean p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 147
    .line 148
    if-eqz p0, :cond_5

    .line 149
    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string/jumbo p2, "isSettingsOptionEnabledInternal: no record found for "

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, ":  Return default value: "

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_5
    return p3

    .line 177
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string/jumbo p2, "isSettingsOptionEnabledInternal: Exception "

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {p0, p1, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return v4

    .line 189
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 190
    .line 191
    const-string p0, "Error from isSettingsOptionEnabledInternal: option is null or empty"

    .line 192
    .line 193
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :cond_7
    return v4
.end method

.method public final isUsbAccessEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "USB"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getFeatureAccessPermission(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception p0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    return v0

    .line 28
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    return v0
.end method

.method public final lockContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string/jumbo p2, "lockContainer is called...."

    .line 2
    .line 3
    .line 4
    const-string v0, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance p2, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string/jumbo p1, "password_policy"

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lock(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    iget p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 52
    .line 53
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 54
    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/16 v3, 0x2e

    .line 64
    .line 65
    invoke-static {p1, v3, p0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    const-string p1, "Failed at KnoxMUMContainerPolicy API lockContainer "

    .line 76
    .line 77
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_2
    const-string/jumbo p0, "lockContainer result - "

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    return p2
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
    .locals 1

    .line 1
    const-string/jumbo p0, "onAdminRemoval:"

    .line 2
    .line 3
    .line 4
    const-string v0, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onPreAdminRemoval"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "onPreAdminRemoval:"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "KnoxMUMContainerPolicy"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo v4, "onPreAdminRemoval: removing container "

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    if-eqz p1, :cond_4

    .line 80
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 87
    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-ne v4, p1, :cond_1

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string/jumbo v3, "onPreAdminRemoval: removing type"

    .line 137
    .line 138
    .line 139
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    return-void
.end method

.method public final registerBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 35
    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ne v3, p1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v2, 0x0

    .line 72
    :goto_1
    if-eqz v2, :cond_4

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_4

    .line 95
    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    monitor-exit v0

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    monitor-exit v0

    .line 102
    const/4 p0, 0x0

    .line 103
    :goto_3
    return p0

    .line 104
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p0
.end method

.method public final removeConfigurationTypeInternal(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "KnoxMUMContainerPolicy"

    .line 4
    .line 5
    const-string v2, "IOException : "

    .line 6
    .line 7
    const-string/jumbo v3, "folder header icon file deletion status: "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "getFolderHeaderIcon icon file : "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v5, "custom status icon file deletion status: "

    .line 14
    .line 15
    .line 16
    const-string/jumbo v6, "getCustomStatusIcon icon file : "

    .line 17
    .line 18
    .line 19
    const-string/jumbo v7, "lock screen wall paper icon file deletion status: "

    .line 20
    .line 21
    .line 22
    const-string/jumbo v8, "getCustomLockScreenWallpaper icon file : "

    .line 23
    .line 24
    .line 25
    const-string/jumbo v9, "ecbadge icon file deletion status: "

    .line 26
    .line 27
    .line 28
    const-string/jumbo v10, "getECBadge icon file : "

    .line 29
    .line 30
    .line 31
    const-string/jumbo v11, "ec icon file deletion status: "

    .line 32
    .line 33
    .line 34
    const-string/jumbo v12, "getECIcon icon file : "

    .line 35
    .line 36
    .line 37
    const-string/jumbo v13, "getCustomizedContainerNameIcon icon file : "

    .line 38
    .line 39
    .line 40
    const-string/jumbo v14, "getCustomHomeScreenWallpaper icon file : "

    .line 41
    .line 42
    .line 43
    const-string v15, "badge icon file deletion status: "

    .line 44
    .line 45
    move-object/from16 v16, v2

    .line 46
    .line 47
    const-string v2, "badge icon file : "

    .line 48
    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    if-eqz v0, :cond_e

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    .line 54
    .line 55
    .line 56
    move-result v18

    .line 57
    if-nez v18, :cond_0

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide v18

    .line 65
    move-object/from16 v20, v3

    .line 66
    .line 67
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-boolean v21, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    .line 72
    .line 73
    if-eqz v21, :cond_1

    .line 74
    .line 75
    move-object/from16 v22, v4

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_1
    move-object/from16 v22, v4

    .line 100
    .line 101
    :goto_0
    if-eqz v3, :cond_2

    .line 102
    .line 103
    new-instance v2, Ljava/io/File;

    .line 104
    .line 105
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-eqz v21, :cond_3

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    :cond_3
    const-string/jumbo v3, "home screen wall paper icon file deletion status: "

    .line 149
    .line 150
    .line 151
    if-eqz v2, :cond_4

    .line 152
    .line 153
    :try_start_1
    new-instance v4, Ljava/io/File;

    .line 154
    .line 155
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v21, :cond_5

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_5
    if-eqz v2, :cond_6

    .line 199
    .line 200
    new-instance v4, Ljava/io/File;

    .line 201
    .line 202
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    if-eqz v2, :cond_7

    .line 244
    .line 245
    new-instance v3, Ljava/io/File;

    .line 246
    .line 247
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    if-eqz v2, :cond_8

    .line 289
    .line 290
    new-instance v3, Ljava/io/File;

    .line 291
    .line 292
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    if-eqz v21, :cond_9

    .line 319
    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_9
    if-eqz v2, :cond_a

    .line 336
    .line 337
    new-instance v3, Ljava/io/File;

    .line 338
    .line 339
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    if-eqz v21, :cond_b

    .line 366
    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    :cond_b
    if-eqz v2, :cond_c

    .line 383
    .line 384
    new-instance v3, Ljava/io/File;

    .line 385
    .line 386
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    :cond_c
    instance-of v2, v0, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    .line 409
    .line 410
    if-eqz v2, :cond_d

    .line 411
    .line 412
    move-object v2, v0

    .line 413
    check-cast v2, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    .line 414
    .line 415
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    move-object/from16 v4, v22

    .line 422
    .line 423
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    if-eqz v2, :cond_d

    .line 437
    .line 438
    new-instance v3, Ljava/io/File;

    .line 439
    .line 440
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    move-object/from16 v4, v20

    .line 450
    .line 451
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    :cond_d
    move-object/from16 v2, p0

    .line 465
    .line 466
    iget-object v2, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 467
    .line 468
    check-cast v2, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .line 472
    .line 473
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 474
    .line 475
    .line 476
    const/4 v0, 0x1

    .line 477
    return v0

    .line 478
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    move-object/from16 v3, v16

    .line 481
    .line 482
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    .line 498
    .line 499
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    .line 501
    .line 502
    return v17

    .line 503
    :goto_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    .line 505
    .line 506
    throw v0

    .line 507
    :cond_e
    :goto_3
    return v17
.end method

.method public final removeContainer(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 10

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 6
    .line 7
    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 20
    .line 21
    .line 22
    :try_start_0
    const-string/jumbo v1, "removeContainer"

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "SEAMS invalidated caller. lets go for MDM check.."

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    filled-new-array {v2}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    const-string v3, "Container removal started"

    .line 72
    .line 73
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Landroid/os/UserManager;->removeUser(I)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 97
    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v4, "Admin %d has successfully removed Workspace %d"

    .line 107
    .line 108
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 113
    .line 114
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    const/4 v5, 0x1

    .line 119
    const-string v7, "KnoxMUMContainerPolicy"

    .line 120
    .line 121
    const/4 v3, 0x5

    .line 122
    const/4 v4, 0x1

    .line 123
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    if-eqz p0, :cond_0

    .line 130
    .line 131
    const-string p0, "Container removal success"

    .line 132
    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const/4 p0, 0x0

    .line 137
    return p0

    .line 138
    :cond_0
    const-string p0, "Container removal failed"

    .line 139
    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    const/16 p0, -0x4b1

    .line 144
    .line 145
    return p0
.end method

.method public final removeContainerInternal(I)I
    .locals 11

    .line 1
    const-string v0, "/data/misc/container3.0/"

    .line 2
    .line 3
    const-string/jumbo v1, "user:"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "removeContainerInternal"

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v3, "removeContainerInternal:"

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "KnoxMUMContainerPolicy"

    .line 31
    .line 32
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-nez v6, :cond_0

    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " not found"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    const/16 p0, -0x3f6

    .line 76
    .line 77
    return p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainerOwnerRelationship(I)V

    .line 84
    .line 85
    .line 86
    new-instance p0, Ljava/io/File;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    array-length v1, v0

    .line 116
    move v7, v2

    .line 117
    :goto_0
    if-ge v7, v1, :cond_1

    .line 118
    .line 119
    aget-object v8, v0, v7

    .line 120
    .line 121
    new-instance v9, Ljava/io/File;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 131
    .line 132
    .line 133
    add-int/lit8 v7, v7, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 137
    .line 138
    .line 139
    :cond_2
    iget p0, v6, Landroid/content/pm/UserInfo;->id:I

    .line 140
    .line 141
    const-string/jumbo v0, "com.sec.knox.containeragent.klms.removed.b2b"

    .line 142
    .line 143
    .line 144
    invoke-static {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :goto_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v1, "Exception:"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo v0, "removeContainer("

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v0, ")"

    .line 188
    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string/jumbo v1, "sendContainerRemovalIntent(containerId: "

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    new-instance p0, Landroid/content/Intent;

    .line 221
    .line 222
    const-string/jumbo v0, "enterprise.container.remove.progress"

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string/jumbo v0, "containerid"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    new-instance v3, Landroid/os/UserHandle;

    .line 237
    .line 238
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 243
    .line 244
    .line 245
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    new-instance p0, Landroid/content/Intent;

    .line 252
    .line 253
    const-string/jumbo v1, "enterprise.container.unmountfailure"

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    new-instance v0, Landroid/os/UserHandle;

    .line 265
    .line 266
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p0, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    return v2

    .line 277
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    .line 279
    .line 280
    throw p0
.end method

.method public final removeContainerOwnerRelationship(I)V
    .locals 6

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string v1, "Container not found or Failed to remove container from DB: "

    .line 4
    .line 5
    const-string v2, "Container removed from ownership DB: "

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string/jumbo v5, "containerID"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    const-string v4, "MUMCONTAINER"

    .line 28
    .line 29
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-lez p0, :cond_0

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Failed at removeContainerOwnerRelationship "

    .line 72
    .line 73
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method public final removeNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "removeNetworkSSID - SSID : "

    .line 6
    .line 7
    .line 8
    const-string v1, "KnoxMUMContainerPolicy"

    .line 9
    .line 10
    invoke-static {v0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    move-object v0, p2

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-string/jumbo p0, "removeNetworkSSID - invalid Str "

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return p2

    .line 43
    :cond_2
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    move-object v3, v2

    .line 54
    check-cast v3, Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_3
    const-string p0, "addNetworkSSID failed : no exist."

    .line 68
    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return p2
.end method

.method public final removePackageFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 0

    .line 1
    const-string p0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string/jumbo p1, "removePackageFromExternalStorageBlackList is not available."

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    return p0
.end method

.method public final removePackageFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "removePackageFromExternalStorageWhiteList "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v1, "null"

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "KnoxMUMContainerPolicy"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 34
    .line 35
    .line 36
    filled-new-array {v2}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const/4 v0, -0x1

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v0

    .line 64
    :cond_1
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const/4 v4, 0x2

    .line 82
    invoke-interface {p0, p1, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p0

    .line 91
    const-string p1, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageWhiteList "

    .line 92
    .line 93
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    return v0
.end method

.method public final removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "removePackageFromInstallWhiteList is called for package - "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v1, "null"

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "KnoxMUMContainerPolicy"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 34
    .line 35
    .line 36
    filled-new-array {v2}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const/4 v0, -0x1

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    const-string p0, "Application PolicyService is not yet ready!!!"

    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v0

    .line 64
    :cond_1
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-interface {p0, p1, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p0

    .line 91
    const-string p1, "Failed at ContainerConfigurationPolicy API removePackageFromInstallWhiteList "

    .line 92
    .line 93
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    return v0
.end method

.method public final resetContainerOnReboot(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const-string p0, "KnoxMUMContainerPolicy"

    .line 2
    .line 3
    const-string p1, "Not support Container Only mode"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final restartBluetooth$1()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "restartBluetooth called! ba = "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "KnoxMUMContainerPolicy"

    .line 21
    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final saveBlockedList(ILjava/util/Set;)Z
    .locals 8

    .line 1
    check-cast p2, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    const-string v0, "ContainerOnly_wifiAP"

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(IILjava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ","

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const-string v5, "ContainerOnly_wifiAP"

    .line 68
    .line 69
    const-string/jumbo v6, "wifiSSIDforKNOX"

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    move v3, p1

    .line 74
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    :goto_1
    return p0
.end method

.method public final setAppSeparationCoexistentApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 13

    .line 1
    const-string v0, "AppSeparationTable"

    .line 2
    .line 3
    const-string v1, "Application "

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v4, "setApppSeparationCoexistentApps: calling package : "

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "KnoxMUMContainerPolicy"

    .line 35
    .line 36
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isIgnoreKSPCall(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v5, 0x0

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    const-string/jumbo p0, "ignoring call from KSP as call from AppSeparation Agent was received earlier"

    .line 47
    .line 48
    .line 49
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v5

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 56
    .line 57
    if-lez p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceAppSeparationPermission(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceOwnerUid()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p2, :cond_2

    .line 72
    .line 73
    const-string/jumbo p0, "setAppSeparationCoexistentApps() : AppList cannot be null"

    .line 74
    .line 75
    .line 76
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return v5

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_2
    const-string v2, ","

    .line 84
    .line 85
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance v2, Landroid/content/ContentValues;

    .line 90
    .line 91
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "adminUid"

    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    .line 105
    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-lez v3, :cond_3

    .line 110
    .line 111
    new-instance v3, Landroid/content/ContentValues;

    .line 112
    .line 113
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v6, "AppSeparationCoexistenceList"

    .line 117
    .line 118
    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    .line 123
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_4

    .line 128
    .line 129
    const-string/jumbo p0, "setAppSeparationCoexistentApps passed"

    .line 130
    .line 131
    .line 132
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 143
    .line 144
    const/16 v2, 0x4c

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .line 154
    .line 155
    const-string p0, "PersonaManagerService"

    .line 156
    .line 157
    const-string/jumbo v0, "enforceAppSeparationCoexistenceAllowListUpdate"

    .line 158
    .line 159
    .line 160
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    const-string v10, "KnoxMUMContainerPolicy"

    .line 168
    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p2, " installation is allowed by admin "

    .line 178
    .line 179
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p1, " for Separated Apps"

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    const/4 v7, 0x1

    .line 205
    const/4 v8, 0x1

    .line 206
    const/4 v12, 0x0

    .line 207
    const/4 v6, 0x5

    .line 208
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    const/4 p0, 0x1

    .line 212
    return p0

    .line 213
    :cond_3
    const-string p0, "No default policy applied. Use setAppSeperationConfig()"

    .line 214
    .line 215
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    return v5

    .line 219
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string/jumbo p2, "setAppSeparationCoexistentApps() exception: "

    .line 222
    .line 223
    .line 224
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p0, p1, v4}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_4
    return v5
.end method

.method public final setAppSeparationConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, " for Separated Apps"

    .line 8
    .line 9
    const-string v4, ","

    .line 10
    .line 11
    const-string v5, "Application "

    .line 12
    .line 13
    const-string v6, "Admin "

    .line 14
    .line 15
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v9, "setAppSeparationConfig: calling package : "

    .line 32
    .line 33
    .line 34
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const-string v9, "KnoxMUMContainerPolicy"

    .line 45
    .line 46
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isIgnoreKSPCall(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    const/4 v10, 0x0

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    const-string/jumbo v0, "ignoring call from KSP as call from AppSeparation Agent was received earlier"

    .line 57
    .line 58
    .line 59
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v10

    .line 63
    :cond_0
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isUserMode:Z

    .line 64
    .line 65
    if-eqz v8, :cond_1

    .line 66
    .line 67
    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_1

    .line 72
    .line 73
    const-string/jumbo v0, "setAppSeparationConfig() : Activate DO!"

    .line 74
    .line 75
    .line 76
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return v10

    .line 80
    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_2

    .line 85
    .line 86
    const-string v0, "Failed to activate AppSeparation - on DeviceOwner DualDAR mode"

    .line 87
    .line 88
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return v10

    .line 92
    :cond_2
    if-eqz v1, :cond_3

    .line 93
    .line 94
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 95
    .line 96
    if-lez v1, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceAppSeparationPermission(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceOwnerUid()I

    .line 107
    .line 108
    .line 109
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const-string v7, "PersonaManagerService"

    .line 111
    .line 112
    const-string v8, "adminUid"

    .line 113
    .line 114
    const-string v11, "AppSeparationTable"

    .line 115
    .line 116
    const/4 v12, 0x1

    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    :try_start_1
    const-string/jumbo v2, "setAppSeparationConfig() : config is null. remove row and enforce."

    .line 120
    .line 121
    .line 122
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    new-instance v2, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 138
    .line 139
    invoke-virtual {v0, v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(ILjava/lang/String;Ljava/util/HashMap;)I

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 147
    .line 148
    const/16 v3, 0x48

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    .line 158
    .line 159
    const-string/jumbo v0, "enforceAppSeparationDeletion"

    .line 160
    .line 161
    .line 162
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    const-string v17, "KnoxMUMContainerPolicy"

    .line 170
    .line 171
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, " has de-activated Separated Apps."

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v18

    .line 198
    const/4 v14, 0x1

    .line 199
    const/4 v15, 0x1

    .line 200
    const/16 v19, 0x0

    .line 201
    .line 202
    const/4 v13, 0x5

    .line 203
    invoke-static/range {v13 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    return v12

    .line 207
    :catch_0
    move-exception v0

    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :cond_4
    const-string v6, "APP_SEPARATION_OUTSIDE"

    .line 211
    .line 212
    invoke-virtual {v2, v6, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    const-string v13, "APP_SEPARATION_APP_LIST"

    .line 217
    .line 218
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-static {v4, v13}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    const-string v14, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 227
    .line 228
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-nez v2, :cond_5

    .line 233
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    :cond_5
    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    new-instance v4, Landroid/content/ContentValues;

    .line 244
    .line 245
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    invoke-virtual {v4, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    .line 254
    .line 255
    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 256
    .line 257
    invoke-virtual {v8, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-lez v8, :cond_6

    .line 262
    .line 263
    const-string v0, "AppSeparation is already enabled. Use setAppSeparationWhitelistedApps() to update app list."

    .line 264
    .line 265
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    return v10

    .line 269
    :cond_6
    const-string v8, "AppSeparationOutside"

    .line 270
    .line 271
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    invoke-virtual {v4, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    .line 277
    .line 278
    const-string v8, "AppSeparationApplist"

    .line 279
    .line 280
    invoke-virtual {v4, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v8, "AppSeparationCoexistenceList"

    .line 284
    .line 285
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 289
    .line 290
    invoke-virtual {v0, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_8

    .line 295
    .line 296
    const-string/jumbo v0, "setAppSeparationConfig passed"

    .line 297
    .line 298
    .line 299
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 307
    .line 308
    .line 309
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 310
    .line 311
    const/16 v8, 0x47

    .line 312
    .line 313
    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 318
    .line 319
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    .line 321
    .line 322
    const-string/jumbo v0, "enforceAppSeparationAllowListUpdate"

    .line 323
    .line 324
    .line 325
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 329
    .line 330
    .line 331
    move-result v17

    .line 332
    const-string v18, "KnoxMUMContainerPolicy"

    .line 333
    .line 334
    if-eqz v6, :cond_7

    .line 335
    .line 336
    const-string v0, "Admin %s has located Apps (outside) of Separated Apps"

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_7
    const-string v0, "Admin %s has located Apps (inside) of Separated Apps"

    .line 340
    .line 341
    :goto_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v19

    .line 359
    const/4 v15, 0x1

    .line 360
    const/16 v16, 0x1

    .line 361
    .line 362
    const/16 v20, 0x0

    .line 363
    .line 364
    const/4 v14, 0x5

    .line 365
    invoke-static/range {v14 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 366
    .line 367
    .line 368
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 369
    .line 370
    .line 371
    move-result v24

    .line 372
    const-string v25, "KnoxMUMContainerPolicy"

    .line 373
    .line 374
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v6, " installation is allowed by admin "

    .line 393
    .line 394
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v26

    .line 407
    const/16 v22, 0x1

    .line 408
    .line 409
    const/16 v23, 0x1

    .line 410
    .line 411
    const/16 v27, 0x0

    .line 412
    .line 413
    const/16 v21, 0x5

    .line 414
    .line 415
    invoke-static/range {v21 .. v27}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 419
    .line 420
    .line 421
    move-result v16

    .line 422
    const-string v17, "KnoxMUMContainerPolicy"

    .line 423
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v2, " coexistence installation is allowed by admin "

    .line 433
    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 438
    .line 439
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v18

    .line 457
    const/4 v14, 0x1

    .line 458
    const/4 v15, 0x1

    .line 459
    const/16 v19, 0x0

    .line 460
    .line 461
    const/4 v13, 0x5

    .line 462
    invoke-static/range {v13 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    .line 464
    .line 465
    return v12

    .line 466
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string/jumbo v2, "setAppSeparationConfig() exception: "

    .line 469
    .line 470
    .line 471
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-static {v0, v1, v9}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    :cond_8
    return v10
.end method

.method public final setAppSeparationWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 13

    .line 1
    const-string v0, "AppSeparationTable"

    .line 2
    .line 3
    const-string v1, "Application "

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v4, "setAppSeparationWhitelistedApps: calling package : "

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "KnoxMUMContainerPolicy"

    .line 35
    .line 36
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isIgnoreKSPCall(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v5, 0x0

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    const-string/jumbo p0, "ignoring call from KSP as call from AppSeparation Agent was received earlier"

    .line 47
    .line 48
    .line 49
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v5

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 56
    .line 57
    if-lez p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceAppSeparationPermission(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceOwnerUid()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p2, :cond_2

    .line 72
    .line 73
    const-string/jumbo p0, "setAppSeparationWhitelistedApps() : AppList cannot be null. Please use setAppSeperationConfig to wipe app separation policy"

    .line 74
    .line 75
    .line 76
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return v5

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_2
    const-string v2, ","

    .line 84
    .line 85
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance v2, Landroid/content/ContentValues;

    .line 90
    .line 91
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "adminUid"

    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    .line 105
    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-lez v3, :cond_3

    .line 110
    .line 111
    new-instance v3, Landroid/content/ContentValues;

    .line 112
    .line 113
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v6, "AppSeparationApplist"

    .line 117
    .line 118
    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    .line 123
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_4

    .line 128
    .line 129
    const-string/jumbo p0, "setAppSeparationWhitelistedApps passed"

    .line 130
    .line 131
    .line 132
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 143
    .line 144
    const/16 v2, 0x47

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .line 154
    .line 155
    const-string p0, "PersonaManagerService"

    .line 156
    .line 157
    const-string/jumbo v0, "enforceAppSeparationAllowListUpdate"

    .line 158
    .line 159
    .line 160
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    const-string v10, "KnoxMUMContainerPolicy"

    .line 168
    .line 169
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p2, " installation is allowed by admin "

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p0, " for Separated Apps"

    .line 196
    .line 197
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    const/4 v7, 0x1

    .line 205
    const/4 v8, 0x1

    .line 206
    const/4 v12, 0x0

    .line 207
    const/4 v6, 0x5

    .line 208
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    const/4 p0, 0x1

    .line 212
    return p0

    .line 213
    :cond_3
    const-string p0, "No default policy applied. Use setAppSeperationConfig()"

    .line 214
    .line 215
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    return v5

    .line 219
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string/jumbo p2, "setAppSeparationWhitelistedApps() exception: "

    .line 222
    .line 223
    .line 224
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p0, p1, v4}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_4
    return v5
.end method

.method public final setContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setCustomResource(ILcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 20

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string/jumbo v3, "setCustomResource - not a valid type "

    .line 8
    .line 9
    .line 10
    const-string v4, "Personal mode tab : "

    .line 11
    .line 12
    const-string/jumbo v5, "container name : "

    .line 13
    .line 14
    .line 15
    const-string/jumbo v6, "container icon dimensions "

    .line 16
    .line 17
    .line 18
    const-string/jumbo v7, "container badge dimensions "

    .line 19
    .line 20
    .line 21
    new-instance v8, Ljava/util/ArrayList;

    .line 22
    .line 23
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 24
    .line 25
    .line 26
    filled-new-array {v9}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v9, p0

    .line 38
    .line 39
    invoke-virtual {v9, v1, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    const/4 v10, -0x2

    .line 44
    if-nez v8, :cond_0

    .line 45
    .line 46
    return v10

    .line 47
    :cond_0
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 50
    .line 51
    .line 52
    move-result-wide v11

    .line 53
    const-string v8, "/data/misc/container3.0/"

    .line 54
    .line 55
    const-string v13, "/"

    .line 56
    .line 57
    invoke-static {v1, v8, v13}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    :try_start_0
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    const v15, 0x1050249

    .line 68
    .line 69
    .line 70
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    float-to-int v14, v14

    .line 75
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    const v10, 0x1050248

    .line 82
    .line 83
    .line 84
    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 85
    .line 86
    .line 87
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    float-to-int v10, v10

    .line 89
    const-string/jumbo v15, "refreshLauncherUI launcherRefresh"

    .line 90
    .line 91
    .line 92
    const-string v9, "KnoxMUMContainerPolicy"

    .line 93
    .line 94
    move-object/from16 v16, v3

    .line 95
    .line 96
    const-string v3, " "

    .line 97
    .line 98
    move-object/from16 v17, v4

    .line 99
    .line 100
    const-string/jumbo v4, "key-image"

    .line 101
    .line 102
    .line 103
    move-object/from16 v18, v5

    .line 104
    .line 105
    const/4 v5, 0x1

    .line 106
    move-object/from16 v19, v15

    .line 107
    .line 108
    if-ne v0, v5, :cond_3

    .line 109
    .line 110
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v5, "badgeIcon.png"

    .line 119
    .line 120
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v2, :cond_1

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Landroid/graphics/Bitmap;

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto/16 :goto_7

    .line 138
    .line 139
    :cond_1
    const/4 v2, 0x0

    .line 140
    :goto_0
    if-eqz v2, :cond_8

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    new-instance v15, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    div-int/lit8 v3, v14, 0x2

    .line 172
    .line 173
    if-gt v4, v3, :cond_2

    .line 174
    .line 175
    div-int/lit8 v3, v10, 0x2

    .line 176
    .line 177
    if-le v6, v3, :cond_8

    .line 178
    .line 179
    :cond_2
    const/4 v3, 0x2

    .line 180
    div-int/2addr v14, v3

    .line 181
    div-int/2addr v10, v3

    .line 182
    const/4 v3, 0x0

    .line 183
    invoke-static {v2, v14, v10, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    goto :goto_2

    .line 188
    :cond_3
    const/4 v5, 0x2

    .line 189
    if-ne v0, v5, :cond_6

    .line 190
    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string/jumbo v7, "profileIcon.png"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-eqz v2, :cond_4

    .line 210
    .line 211
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/graphics/Bitmap;

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_4
    const/4 v2, 0x0

    .line 219
    :goto_1
    if-eqz v2, :cond_8

    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    new-instance v15, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    if-gt v4, v14, :cond_5

    .line 251
    .line 252
    if-le v7, v10, :cond_8

    .line 253
    .line 254
    :cond_5
    const/4 v3, 0x0

    .line 255
    invoke-static {v2, v14, v10, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    goto :goto_2

    .line 260
    :cond_6
    const/4 v3, 0x3

    .line 261
    if-ne v0, v3, :cond_f

    .line 262
    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string/jumbo v5, "nameIcon.png"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    if-eqz v2, :cond_7

    .line 282
    .line 283
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Landroid/graphics/Bitmap;

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_7
    const/4 v2, 0x0

    .line 291
    :cond_8
    :goto_2
    if-nez v2, :cond_a

    .line 292
    .line 293
    new-instance v0, Ljava/io/File;

    .line 294
    .line 295
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 299
    .line 300
    .line 301
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    if-eqz v0, :cond_9

    .line 303
    .line 304
    const/4 v10, 0x0

    .line 305
    goto :goto_3

    .line 306
    :cond_9
    const/4 v10, -0x2

    .line 307
    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    .line 309
    .line 310
    return v10

    .line 311
    :cond_a
    :try_start_2
    new-instance v3, Ljava/io/File;

    .line 312
    .line 313
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-nez v4, :cond_b

    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 323
    .line 324
    .line 325
    const/4 v4, 0x1

    .line 326
    const/4 v6, 0x0

    .line 327
    invoke-virtual {v3, v4, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v4, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 334
    .line 335
    .line 336
    :cond_b
    new-instance v3, Ljava/io/File;

    .line 337
    .line 338
    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-nez v4, :cond_c

    .line 346
    .line 347
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 348
    .line 349
    .line 350
    const/4 v4, 0x1

    .line 351
    const/4 v6, 0x0

    .line 352
    invoke-virtual {v3, v4, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v4, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 359
    .line 360
    .line 361
    :cond_c
    invoke-static {v2, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->writeFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_d

    .line 366
    .line 367
    const/4 v10, 0x0

    .line 368
    goto :goto_4

    .line 369
    :cond_d
    const/4 v10, -0x2

    .line 370
    :goto_4
    if-nez v10, :cond_e

    .line 371
    .line 372
    const/4 v2, 0x1

    .line 373
    if-ne v0, v2, :cond_e

    .line 374
    .line 375
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLauncherRefreshIntent(I)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const-string/jumbo v3, "com.samsung.android.knox.container.block_create_shortcut"

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    const-string/jumbo v2, "com.samsung.android.knox.container.name"

    .line 386
    .line 387
    .line 388
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    invoke-static {v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    move-object/from16 v3, v19

    .line 398
    .line 399
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 403
    .line 404
    sget-object v2, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 405
    .line 406
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    .line 408
    .line 409
    :cond_e
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    .line 411
    .line 412
    return v10

    .line 413
    :cond_f
    move-object/from16 v3, v19

    .line 414
    .line 415
    const/4 v4, 0x4

    .line 416
    const-string/jumbo v5, "key-name"

    .line 417
    .line 418
    .line 419
    if-ne v0, v4, :cond_12

    .line 420
    .line 421
    if-eqz v2, :cond_10

    .line 422
    .line 423
    const/4 v0, 0x0

    .line 424
    :try_start_3
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    goto :goto_5

    .line 429
    :cond_10
    const/4 v5, 0x0

    .line 430
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    .line 431
    .line 432
    .line 433
    invoke-static {v1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->setCustomName(ILjava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_11

    .line 438
    .line 439
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLauncherRefreshIntent(I)Landroid/content/Intent;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 447
    .line 448
    sget-object v2, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 449
    .line 450
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 451
    .line 452
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    move-object/from16 v1, v18

    .line 456
    .line 457
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 468
    .line 469
    .line 470
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    .line 472
    .line 473
    const/4 v0, 0x0

    .line 474
    return v0

    .line 475
    :cond_11
    :try_start_4
    const-string/jumbo v0, "setting Custom Profile name unsuccessful"

    .line 476
    .line 477
    .line 478
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    .line 480
    .line 481
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    .line 483
    .line 484
    const/4 v0, -0x2

    .line 485
    return v0

    .line 486
    :cond_12
    const/4 v4, 0x5

    .line 487
    if-ne v0, v4, :cond_15

    .line 488
    .line 489
    if-eqz v2, :cond_13

    .line 490
    .line 491
    const/4 v0, 0x0

    .line 492
    :try_start_5
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    goto :goto_6

    .line 497
    :cond_13
    const/4 v0, 0x0

    .line 498
    move-object v5, v0

    .line 499
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    .line 500
    .line 501
    .line 502
    invoke-static {v1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->setPersonalModeName(ILjava/lang/String;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_14

    .line 507
    .line 508
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getLauncherRefreshIntent(I)Landroid/content/Intent;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 516
    .line 517
    sget-object v2, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 518
    .line 519
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 520
    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    move-object/from16 v1, v17

    .line 525
    .line 526
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 537
    .line 538
    .line 539
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    .line 541
    .line 542
    const/4 v0, 0x0

    .line 543
    return v0

    .line 544
    :cond_14
    :try_start_6
    const-string/jumbo v0, "setting personal tab name unsuccessful"

    .line 545
    .line 546
    .line 547
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 548
    .line 549
    .line 550
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    .line 552
    .line 553
    const/4 v0, -0x2

    .line 554
    return v0

    .line 555
    :cond_15
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    move-object/from16 v2, v16

    .line 558
    .line 559
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 570
    .line 571
    .line 572
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    .line 574
    .line 575
    const/4 v0, -0x1

    .line 576
    return v0

    .line 577
    :goto_7
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    .line 579
    .line 580
    throw v0
.end method

.method public final setEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setFIDOInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "KnoxMUMContainerPolicy"

    .line 4
    .line 5
    const-string/jumbo v2, "setFIDOInfo()"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 14
    .line 15
    .line 16
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    const-string/jumbo v4, "cid"

    .line 33
    .line 34
    .line 35
    const-string v5, "adminUid"

    .line 36
    .line 37
    const-string v6, "KnoxFIDOSettingTable"

    .line 38
    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    :try_start_0
    const-string/jumbo p2, "setFIDOinfo() : fidoinfo is null. remove row."

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    new-instance p2, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    .line 72
    invoke-virtual {p0, v3, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(ILjava/lang/String;Ljava/util/HashMap;)I

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    const-string/jumbo v7, "fido_request_uri"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string/jumbo v8, "fido_response_uri"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    .line 93
    .line 94
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .line 96
    .line 97
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 98
    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    .line 105
    .line 106
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 107
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 116
    .line 117
    invoke-virtual {p1, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 118
    .line 119
    .line 120
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const-string/jumbo v4, "respond"

    .line 122
    .line 123
    .line 124
    const-string/jumbo v5, "request"

    .line 125
    .line 126
    .line 127
    if-lez p1, :cond_1

    .line 128
    .line 129
    :try_start_1
    new-instance p1, Landroid/content/ContentValues;

    .line 130
    .line 131
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 141
    .line 142
    invoke-virtual {p0, v6, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 154
    .line 155
    invoke-virtual {p0, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    :goto_0
    if-eqz p0, :cond_2

    .line 160
    .line 161
    const-string/jumbo p0, "setFIDOInfo passed"

    .line 162
    .line 163
    .line 164
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    .line 167
    return v2

    .line 168
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string/jumbo p2, "setFIDOInfo() exception: "

    .line 171
    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p0, p1, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    return v3
.end method

.method public final setFeatureAccessPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    .line 8
    const-string v1, "adminUid"

    .line 9
    .line 10
    const-string/jumbo v2, "featureType"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    .line 18
    const-string p2, "KnoxFeatureAccess"

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    const-string/jumbo v2, "featureValue"

    .line 27
    .line 28
    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Landroid/content/ContentValues;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 55
    .line 56
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 80
    .line 81
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    :goto_0
    if-eqz p0, :cond_1

    .line 86
    .line 87
    const-string p0, "KnoxMUMContainerPolicy"

    .line 88
    .line 89
    const-string/jumbo p1, "setFeatureAccessPermission policy passed"

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x1

    .line 96
    return p0

    .line 97
    :cond_1
    const/4 p0, 0x0

    .line 98
    return p0
.end method

.method public final setHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 0

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string/jumbo p3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 4
    .line 5
    .line 6
    filled-new-array {p3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final setSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "setSettingsOptionEnabled()"

    .line 2
    .line 3
    .line 4
    const-string v1, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 22
    .line 23
    .line 24
    filled-new-array {v3}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :try_start_0
    const-string/jumbo v2, "option_callerinfo"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 49
    .line 50
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const/4 p2, 0x1

    .line 76
    xor-int/lit8 v2, p3, 0x1

    .line 77
    .line 78
    invoke-virtual {p0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    move v0, p2

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    const-string/jumbo p0, "setSettingsOptionEnabled failed : result = false"

    .line 84
    .line 85
    .line 86
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    const-string/jumbo p0, "setSettingsOptionEnabled() : enable = "

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    return v0

    .line 96
    :cond_2
    :goto_1
    const-string p0, "Error from setSettingsOptionEnabled(): option is null or empty"

    .line 97
    .line 98
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v0
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    const-string/jumbo v0, "systemReady"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "KnoxMUMContainerPolicy"

    .line 8
    .line 9
    const-string v1, "System ready called...."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "registerContentObserver - 0"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v1, "hide_secure_folder_flag"

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->contentObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mInjector:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "enterprise_license_policy"

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    .line 59
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 68
    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    const-string v1, "activity"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/app/ActivityManager;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 85
    .line 86
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Lcom/samsung/android/knox/SemPersonaManager;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    const-string v0, "ContainerLicenseObserver is not added! Please invoke registerContainerLicenseObserver more later!"

    .line 118
    .line 119
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public final unlockContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "unlockContainer is called...."

    .line 2
    .line 3
    .line 4
    const-string v1, "KnoxMUMContainerPolicy"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceContainerOwnershipPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string/jumbo p1, "password_policy"

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->unlock(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 52
    .line 53
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 54
    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/16 v4, 0x2f

    .line 64
    .line 65
    invoke-static {p1, v4, p0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    const-string p1, "Failed at KnoxMUMContainerPolicy API unlockContainer "

    .line 76
    .line 77
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_2
    const-string/jumbo p0, "unlockContainer result - "

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    return v0
.end method

.method public final unregisterBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final updateProvisioningState(Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "updateProvisioningState"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p0, "KnoxMUMContainerPolicy"

    .line 11
    .line 12
    const-string/jumbo p1, "updateProvisioningState() invalid input"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const-string/jumbo v1, "state"

    .line 20
    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const-string v3, "KnoxMUMContainerPolicy"

    .line 28
    .line 29
    const-string/jumbo v4, "updateProvisioningState called: state = "

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v4, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    const-string p0, "KnoxMUMContainerPolicy"

    .line 38
    .line 39
    const-string/jumbo p1, "updateProvisioningState() invalid state"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v2

    .line 49
    const/4 v3, 0x1

    .line 50
    if-ne v1, v3, :cond_3

    .line 51
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 57
    .line 58
    if-le v1, v3, :cond_2

    .line 59
    .line 60
    const-string p0, "KnoxMUMContainerPolicy"

    .line 61
    .line 62
    const-string/jumbo p1, "updateProvisioningState() provisioning already ongoing"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    monitor-exit v2

    .line 69
    return v0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->start(Landroid/os/Bundle;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    monitor-exit v2

    .line 84
    return p0

    .line 85
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 86
    .line 87
    if-nez p0, :cond_4

    .line 88
    .line 89
    const-string p0, "KnoxMUMContainerPolicy"

    .line 90
    .line 91
    const-string/jumbo p1, "no ongoing provisioning"

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    monitor-exit v2

    .line 98
    return v0

    .line 99
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    monitor-exit v2

    .line 104
    return p0

    .line 105
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method
