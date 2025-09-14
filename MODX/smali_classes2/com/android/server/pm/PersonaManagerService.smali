.class public final Lcom/android/server/pm/PersonaManagerService;
.super Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DEVICE_SUPPORT_KNOX:Z

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static final cachedTime:Ljava/util/HashMap;

.field public static final containerCriticalApps:Ljava/util/List;

.field public static mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

.field public static mDeviceOwnerPackage:Ljava/lang/String;

.field static mSeparationConfiginCache:Landroid/os/Bundle;

.field public static sInstance:Lcom/android/server/pm/PersonaManagerService;

.field public static workTabSupportLauncherUids:Ljava/util/ArrayList;


# instance fields
.field public final LOG_FS_TAG:Ljava/lang/String;

.field public final analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

.field containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

.field public final containerNames:Ljava/util/HashSet;

.field public edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mAPM:Landroid/app/ApplicationPackageManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mCorePackageUid:Ljava/util/List;

.field public final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFingerPrintReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mFocusLauncherLock:Ljava/lang/Object;

.field public final mFocusLock:Ljava/lang/Object;

.field public mFocusedLauncherId:I

.field public mFocusedUserId:I

.field public mImeSet:Ljava/util/Set;

.field public final mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

.field public mKALockscreenTimeoutAdminFlag:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

.field public mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

.field public final mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPackageReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public final mPersonaCacheFile:Ljava/io/File;

.field public final mPersonaCacheLock:Ljava/lang/Object;

.field public final mPersonaCacheMap:Ljava/util/HashMap;

.field public final mPersonaDbLock:Ljava/lang/Object;

.field public final mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field public final mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

.field public final mSecureFolderId:I

.field public final mSetupWizardCompleteReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

.field public final mUserListFile:Ljava/io/File;

.field public mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public final mUserSwitchObserver:Lcom/android/server/pm/PersonaManagerService$1;

.field public final mUsersDir:Ljava/io/File;

.field public packageFilter:Landroid/content/IntentFilter;

.field public personaManager:Lcom/samsung/android/knox/SemPersonaManager;


# direct methods
.method public static -$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "PersonaManagerService"

    .line 5
    .line 6
    const-string v1, "enableMyFilesLauncherActivity"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "visible_app_icon"

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

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
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string/jumbo p1, "myfiles"

    .line 43
    .line 44
    .line 45
    const-string v3, "SET_APP_ICON_STATUS"

    .line 46
    .line 47
    const-string v4, ""

    .line 48
    .line 49
    invoke-virtual {p0, p1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    return-void

    .line 64
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public static -$$Nest$menforceAppSeparationAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "enforceAppSeparationAllowListUpdateInternal Is in allowlist ? - "

    .line 4
    .line 5
    const-string v3, "enforceAppSeparationAllowListUpdateInternal packageInfoList size -"

    .line 6
    .line 7
    const-string v4, "enforceAppSeparationAllowListUpdateInternal coexistenceAppSet size - "

    .line 8
    .line 9
    const-string v5, "enforceAppSeparationAllowListUpdateInternal prevWlAppsSet size - "

    .line 10
    .line 11
    const-string v6, "enforceAppSeparationAllowListUpdateInternal wlAppsSet size - "

    .line 12
    .line 13
    const-string v7, "enforceAppSeparationAllowListUpdateInternal is called for isOutside - "

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    sget-object v9, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    if-eqz v8, :cond_0

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v12, 0x0

    .line 34
    :goto_0
    const-string v13, "enforceAppSeparationWhiteListUpdateInternal sending removedinfo intent. count = "

    .line 35
    .line 36
    const-string v14, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 37
    .line 38
    const-string v15, "com.samsung.android.appseparation"

    .line 39
    .line 40
    const-string v2, "app_uninstalled"

    .line 41
    .line 42
    const-string v11, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 43
    .line 44
    move/from16 v17, v12

    .line 45
    .line 46
    const-string v12, "SeparationWhiteListReturn"

    .line 47
    .line 48
    move-object/from16 v18, v3

    .line 49
    .line 50
    const-string v3, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    .line 51
    .line 52
    move-object/from16 v19, v4

    .line 53
    .line 54
    const-string v4, "enforceAppSeparationAllowListUpdateInternal after update packageName - "

    .line 55
    .line 56
    move-object/from16 v20, v5

    .line 57
    .line 58
    const-string v5, "enforceAppSeparationAllowListUpdateInternal used by createSeparationConfig"

    .line 59
    .line 60
    move-object/from16 v21, v6

    .line 61
    .line 62
    const-string v6, "enforceAppSeparationAllowListUpdateInternal before update packageName - "

    .line 63
    .line 64
    move-object/from16 v22, v7

    .line 65
    .line 66
    const-string v7, "enforceAppSeparationAllowListUpdateInternal isOutside - "

    .line 67
    .line 68
    move/from16 v23, v10

    .line 69
    .line 70
    const-string v10, "APP_SEPARATION_OUTSIDE"

    .line 71
    .line 72
    move-object/from16 v24, v13

    .line 73
    .line 74
    const-string v13, "APP_SEPARATION_APP_LIST"

    .line 75
    .line 76
    move-object/from16 v25, v14

    .line 77
    .line 78
    const-string v14, "PersonaManagerService"

    .line 79
    .line 80
    if-nez v9, :cond_4

    .line 81
    .line 82
    :try_start_0
    const-string v0, "enforceAppSeparationAllowListUpdateInternal no app separation data found in db"

    .line 83
    .line 84
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    if-eqz v8, :cond_1

    .line 88
    .line 89
    move-object/from16 v26, v15

    .line 90
    .line 91
    const/4 v15, 0x0

    .line 92
    invoke-virtual {v8, v10, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v7, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v6, v5, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move-object/from16 v26, v15

    .line 126
    .line 127
    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_2
    sput-object v9, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 131
    .line 132
    if-eqz v9, :cond_3

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 140
    .line 141
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v7, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    if-eqz v5, :cond_3

    .line 149
    .line 150
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_3

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v4, v5, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 171
    .line 172
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    const/4 v3, 0x1

    .line 179
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 183
    .line 184
    .line 185
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 186
    .line 187
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    move-object/from16 v15, v25

    .line 198
    .line 199
    move-object/from16 v2, v26

    .line 200
    .line 201
    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    move-object/from16 v4, v24

    .line 210
    .line 211
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 227
    .line 228
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 239
    .line 240
    .line 241
    if-nez v23, :cond_1d

    .line 242
    .line 243
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_23

    .line 247
    .line 248
    :catchall_0
    move-exception v0

    .line 249
    move-object/from16 v28, v15

    .line 250
    .line 251
    move-object/from16 v27, v24

    .line 252
    .line 253
    move-object/from16 v15, v25

    .line 254
    .line 255
    move-object/from16 v16, v0

    .line 256
    .line 257
    move-object/from16 v35, v28

    .line 258
    .line 259
    const/4 v0, 0x1

    .line 260
    const/4 v15, 0x0

    .line 261
    move-object/from16 v36, v4

    .line 262
    .line 263
    move-object v4, v2

    .line 264
    move-object v2, v9

    .line 265
    move-object v9, v3

    .line 266
    move-object/from16 v3, v36

    .line 267
    .line 268
    move-object/from16 v37, v12

    .line 269
    .line 270
    move-object v12, v11

    .line 271
    move-object/from16 v11, v37

    .line 272
    .line 273
    goto/16 :goto_25

    .line 274
    .line 275
    :catch_1
    move-exception v0

    .line 276
    move-object/from16 v28, v15

    .line 277
    .line 278
    move-object/from16 v27, v24

    .line 279
    .line 280
    move-object/from16 v15, v25

    .line 281
    .line 282
    move-object/from16 v34, v28

    .line 283
    .line 284
    const/16 v16, 0x0

    .line 285
    .line 286
    const/16 v22, 0x1

    .line 287
    .line 288
    move-object v15, v2

    .line 289
    move-object v2, v9

    .line 290
    move-object v9, v3

    .line 291
    move-object v3, v4

    .line 292
    move-object/from16 v36, v12

    .line 293
    .line 294
    move-object v12, v11

    .line 295
    move-object/from16 v11, v36

    .line 296
    .line 297
    goto/16 :goto_1f

    .line 298
    .line 299
    :cond_4
    move-object/from16 v28, v15

    .line 300
    .line 301
    move-object/from16 v27, v24

    .line 302
    .line 303
    const/4 v15, 0x0

    .line 304
    move-object/from16 v24, v2

    .line 305
    .line 306
    :try_start_2
    invoke-virtual {v9, v10, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 311
    .line 312
    .line 313
    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    .line 314
    move-object/from16 v26, v11

    .line 315
    .line 316
    :try_start_3
    const-string v11, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 317
    .line 318
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    new-instance v29, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 325
    .line 326
    .line 327
    if-eqz v8, :cond_5

    .line 328
    .line 329
    :try_start_4
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 330
    .line 331
    .line 332
    move-result-object v29
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    :cond_5
    move-object/from16 v30, v12

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :catchall_1
    move-exception v0

    .line 337
    move-object/from16 v16, v0

    .line 338
    .line 339
    move-object v2, v9

    .line 340
    move-object v11, v12

    .line 341
    move-object/from16 v12, v26

    .line 342
    .line 343
    move-object/from16 v35, v28

    .line 344
    .line 345
    :goto_5
    const/4 v0, 0x1

    .line 346
    const/4 v15, 0x0

    .line 347
    move-object v9, v3

    .line 348
    move-object v3, v4

    .line 349
    move-object/from16 v4, v24

    .line 350
    .line 351
    move-object/from16 v24, v27

    .line 352
    .line 353
    goto/16 :goto_25

    .line 354
    .line 355
    :catch_2
    move-exception v0

    .line 356
    move-object v2, v9

    .line 357
    move-object v11, v12

    .line 358
    move-object/from16 v15, v24

    .line 359
    .line 360
    move-object/from16 v12, v26

    .line 361
    .line 362
    move-object/from16 v24, v27

    .line 363
    .line 364
    move-object/from16 v34, v28

    .line 365
    .line 366
    :goto_6
    const/16 v16, 0x0

    .line 367
    .line 368
    const/16 v22, 0x1

    .line 369
    .line 370
    move-object v9, v3

    .line 371
    move-object v3, v4

    .line 372
    goto/16 :goto_1f

    .line 373
    .line 374
    :goto_7
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    iput-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 379
    .line 380
    if-nez v15, :cond_6

    .line 381
    .line 382
    :try_start_6
    new-instance v15, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 385
    .line 386
    .line 387
    goto :goto_8

    .line 388
    :catchall_2
    move-exception v0

    .line 389
    move-object/from16 v16, v0

    .line 390
    .line 391
    move-object v2, v9

    .line 392
    move-object/from16 v12, v26

    .line 393
    .line 394
    move-object/from16 v35, v28

    .line 395
    .line 396
    move-object/from16 v11, v30

    .line 397
    .line 398
    goto :goto_5

    .line 399
    :catch_3
    move-exception v0

    .line 400
    move-object v2, v9

    .line 401
    move-object/from16 v15, v24

    .line 402
    .line 403
    move-object/from16 v12, v26

    .line 404
    .line 405
    move-object/from16 v24, v27

    .line 406
    .line 407
    move-object/from16 v34, v28

    .line 408
    .line 409
    move-object/from16 v11, v30

    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_6
    :goto_8
    :try_start_7
    new-instance v12, Ljava/util/HashSet;

    .line 413
    .line 414
    invoke-direct {v12, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 415
    .line 416
    .line 417
    if-nez v29, :cond_7

    .line 418
    .line 419
    :try_start_8
    new-instance v29, Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .line 423
    .line 424
    :cond_7
    move-object/from16 v15, v29

    .line 425
    .line 426
    if-nez v11, :cond_8

    .line 427
    .line 428
    new-instance v11, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 431
    .line 432
    .line 433
    :cond_8
    move-object/from16 v29, v3

    .line 434
    .line 435
    :try_start_9
    new-instance v3, Ljava/util/HashSet;

    .line 436
    .line 437
    invoke-direct {v3, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 438
    .line 439
    .line 440
    new-instance v11, Ljava/util/HashSet;

    .line 441
    .line 442
    invoke-direct {v11, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 443
    .line 444
    .line 445
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 446
    .line 447
    move-object/from16 v31, v4

    .line 448
    .line 449
    move-object/from16 v4, v22

    .line 450
    .line 451
    :try_start_a
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    move-object/from16 v15, v21

    .line 467
    .line 468
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    .line 472
    .line 473
    .line 474
    move-result v15

    .line 475
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    move-object/from16 v15, v20

    .line 488
    .line 489
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    .line 493
    .line 494
    .line 495
    move-result v15

    .line 496
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    move-object/from16 v15, v19

    .line 509
    .line 510
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 514
    .line 515
    .line 516
    move-result v15

    .line 517
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 528
    .line 529
    .line 530
    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 531
    const/4 v15, 0x1

    .line 532
    :try_start_b
    invoke-virtual {v4, v15}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 533
    .line 534
    .line 535
    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 536
    :try_start_c
    invoke-virtual {v1, v8, v12, v11}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    .line 537
    .line 538
    .line 539
    move-result-object v15

    .line 540
    move/from16 v19, v2

    .line 541
    .line 542
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 543
    .line 544
    move-object/from16 v20, v9

    .line 545
    .line 546
    move-object/from16 v9, v18

    .line 547
    .line 548
    :try_start_d
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 552
    .line 553
    .line 554
    move-result v9

    .line 555
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 569
    const/4 v9, 0x1

    .line 570
    const/4 v15, 0x0

    .line 571
    :goto_9
    :try_start_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v18
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 575
    if-eqz v18, :cond_15

    .line 576
    .line 577
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v18

    .line 581
    move-object/from16 v21, v2

    .line 582
    .line 583
    move-object/from16 v2, v18

    .line 584
    .line 585
    check-cast v2, Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 586
    .line 587
    :try_start_10
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 588
    .line 589
    .line 590
    move-result v18
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 591
    if-nez v18, :cond_14

    .line 592
    .line 593
    move/from16 v18, v15

    .line 594
    .line 595
    :try_start_11
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {v1, v15}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    .line 598
    .line 599
    .line 600
    move-result v15

    .line 601
    if-eqz v15, :cond_9

    .line 602
    .line 603
    new-instance v15, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 606
    .line 607
    .line 608
    move/from16 v22, v9

    .line 609
    .line 610
    :try_start_12
    const-string v9, "enforceAppSeparationAllowListUpdateInternal isKeyBoardApp - "

    .line 611
    .line 612
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 616
    .line 617
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    move/from16 v15, v18

    .line 628
    .line 629
    move-object/from16 v2, v21

    .line 630
    .line 631
    move/from16 v9, v22

    .line 632
    .line 633
    goto :goto_9

    .line 634
    :catchall_3
    move-exception v0

    .line 635
    :goto_a
    move-object/from16 v16, v0

    .line 636
    .line 637
    move/from16 v15, v18

    .line 638
    .line 639
    :goto_b
    move-object/from16 v2, v20

    .line 640
    .line 641
    move/from16 v0, v22

    .line 642
    .line 643
    move-object/from16 v4, v24

    .line 644
    .line 645
    move-object/from16 v12, v26

    .line 646
    .line 647
    move-object/from16 v24, v27

    .line 648
    .line 649
    move-object/from16 v35, v28

    .line 650
    .line 651
    move-object/from16 v9, v29

    .line 652
    .line 653
    move-object/from16 v11, v30

    .line 654
    .line 655
    move-object/from16 v3, v31

    .line 656
    .line 657
    goto/16 :goto_25

    .line 658
    .line 659
    :catch_4
    move-exception v0

    .line 660
    :goto_c
    move/from16 v16, v18

    .line 661
    .line 662
    move-object/from16 v2, v20

    .line 663
    .line 664
    move-object/from16 v15, v24

    .line 665
    .line 666
    move-object/from16 v12, v26

    .line 667
    .line 668
    move-object/from16 v24, v27

    .line 669
    .line 670
    move-object/from16 v34, v28

    .line 671
    .line 672
    move-object/from16 v9, v29

    .line 673
    .line 674
    move-object/from16 v11, v30

    .line 675
    .line 676
    move-object/from16 v3, v31

    .line 677
    .line 678
    goto/16 :goto_1f

    .line 679
    .line 680
    :catchall_4
    move-exception v0

    .line 681
    move/from16 v22, v9

    .line 682
    .line 683
    goto :goto_a

    .line 684
    :catch_5
    move-exception v0

    .line 685
    move/from16 v22, v9

    .line 686
    .line 687
    goto :goto_c

    .line 688
    :cond_9
    move/from16 v22, v9

    .line 689
    .line 690
    new-instance v9, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .line 694
    .line 695
    const-string v15, "enforceAppSeparationAllowListUpdateInternal Non system app - "

    .line 696
    .line 697
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 701
    .line 702
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v9

    .line 709
    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    new-instance v9, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 721
    .line 722
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v15

    .line 726
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v9

    .line 733
    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    new-instance v9, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 745
    .line 746
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v15

    .line 750
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v9

    .line 757
    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .line 759
    .line 760
    if-eqz v8, :cond_a

    .line 761
    .line 762
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 763
    .line 764
    invoke-virtual {v11, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v9

    .line 768
    goto :goto_d

    .line 769
    :cond_a
    move/from16 v9, v19

    .line 770
    .line 771
    :goto_d
    if-eqz v9, :cond_b

    .line 772
    .line 773
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v15

    .line 779
    if-eqz v15, :cond_c

    .line 780
    .line 781
    :cond_b
    if-nez v9, :cond_d

    .line 782
    .line 783
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 784
    .line 785
    invoke-virtual {v12, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result v9

    .line 789
    if-eqz v9, :cond_d

    .line 790
    .line 791
    :cond_c
    if-nez v23, :cond_e

    .line 792
    .line 793
    if-nez v23, :cond_d

    .line 794
    .line 795
    if-eqz v17, :cond_d

    .line 796
    .line 797
    goto :goto_e

    .line 798
    :cond_d
    move-object/from16 v32, v0

    .line 799
    .line 800
    move-object/from16 v33, v4

    .line 801
    .line 802
    goto/16 :goto_12

    .line 803
    .line 804
    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 805
    .line 806
    .line 807
    move-result-object v9

    .line 808
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 809
    .line 810
    .line 811
    move-result v15

    .line 812
    if-eqz v15, :cond_13

    .line 813
    .line 814
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v15

    .line 818
    check-cast v15, Landroid/content/pm/UserInfo;

    .line 819
    .line 820
    move-object/from16 v32, v0

    .line 821
    .line 822
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 823
    .line 824
    if-eqz v0, :cond_11

    .line 825
    .line 826
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    if-eqz v0, :cond_f

    .line 831
    .line 832
    goto :goto_10

    .line 833
    :cond_f
    move-object/from16 v33, v4

    .line 834
    .line 835
    :cond_10
    const/4 v4, 0x1

    .line 836
    goto :goto_11

    .line 837
    :cond_11
    :goto_10
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 838
    .line 839
    move-object/from16 v33, v4

    .line 840
    .line 841
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 842
    .line 843
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-eqz v0, :cond_10

    .line 848
    .line 849
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 850
    .line 851
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    if-nez v0, :cond_10

    .line 856
    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .line 861
    .line 862
    const-string v4, "enforceAppSeparationAllowListUpdateInternal Installing package "

    .line 863
    .line 864
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 868
    .line 869
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    const-string v4, " in user -"

    .line 873
    .line 874
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    .line 878
    .line 879
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .line 888
    .line 889
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 890
    .line 891
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 892
    .line 893
    invoke-static {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    if-nez v0, :cond_12

    .line 898
    .line 899
    const/4 v4, 0x1

    .line 900
    const/16 v22, 0x0

    .line 901
    .line 902
    goto :goto_11

    .line 903
    :cond_12
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-eqz v0, :cond_10

    .line 908
    .line 909
    const/4 v4, 0x1

    .line 910
    add-int/lit8 v18, v18, 0x1

    .line 911
    .line 912
    :goto_11
    move-object/from16 v0, v32

    .line 913
    .line 914
    move-object/from16 v4, v33

    .line 915
    .line 916
    goto :goto_f

    .line 917
    :cond_13
    move-object/from16 v32, v0

    .line 918
    .line 919
    move-object/from16 v33, v4

    .line 920
    .line 921
    :goto_12
    const/4 v4, 0x1

    .line 922
    move/from16 v15, v18

    .line 923
    .line 924
    move/from16 v9, v22

    .line 925
    .line 926
    goto :goto_13

    .line 927
    :cond_14
    move-object/from16 v32, v0

    .line 928
    .line 929
    move-object/from16 v33, v4

    .line 930
    .line 931
    move/from16 v22, v9

    .line 932
    .line 933
    move/from16 v18, v15

    .line 934
    .line 935
    goto :goto_12

    .line 936
    :goto_13
    move-object/from16 v2, v21

    .line 937
    .line 938
    move-object/from16 v0, v32

    .line 939
    .line 940
    move-object/from16 v4, v33

    .line 941
    .line 942
    goto/16 :goto_9

    .line 943
    .line 944
    :catchall_5
    move-exception v0

    .line 945
    move/from16 v22, v9

    .line 946
    .line 947
    move/from16 v18, v15

    .line 948
    .line 949
    goto/16 :goto_a

    .line 950
    .line 951
    :catchall_6
    move-exception v0

    .line 952
    move/from16 v22, v9

    .line 953
    .line 954
    move/from16 v18, v15

    .line 955
    .line 956
    move-object/from16 v16, v0

    .line 957
    .line 958
    goto/16 :goto_b

    .line 959
    .line 960
    :catch_6
    move-exception v0

    .line 961
    move/from16 v22, v9

    .line 962
    .line 963
    move/from16 v18, v15

    .line 964
    .line 965
    goto/16 :goto_c

    .line 966
    .line 967
    :cond_15
    move/from16 v22, v9

    .line 968
    .line 969
    move/from16 v18, v15

    .line 970
    .line 971
    if-nez v23, :cond_16

    .line 972
    .line 973
    if-nez v17, :cond_16

    .line 974
    .line 975
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 976
    .line 977
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsCreated()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 978
    .line 979
    .line 980
    :cond_16
    if-eqz v8, :cond_17

    .line 981
    .line 982
    const/4 v2, 0x0

    .line 983
    invoke-virtual {v8, v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    invoke-static {v7, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 992
    .line 993
    .line 994
    if-eqz v2, :cond_18

    .line 995
    .line 996
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    if-eqz v2, :cond_18

    .line 1005
    .line 1006
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    check-cast v2, Ljava/lang/String;

    .line 1011
    .line 1012
    invoke-static {v6, v2, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_14

    .line 1016
    :cond_17
    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .line 1018
    .line 1019
    :cond_18
    sput-object v20, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1020
    .line 1021
    move-object/from16 v2, v20

    .line 1022
    .line 1023
    const/4 v3, 0x0

    .line 1024
    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1029
    .line 1030
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v2

    .line 1034
    invoke-static {v7, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1035
    .line 1036
    .line 1037
    if-eqz v2, :cond_19

    .line 1038
    .line 1039
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_19

    .line 1048
    .line 1049
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    check-cast v2, Ljava/lang/String;

    .line 1054
    .line 1055
    move-object/from16 v3, v31

    .line 1056
    .line 1057
    invoke-static {v3, v2, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_15

    .line 1061
    :cond_19
    new-instance v0, Landroid/content/Intent;

    .line 1062
    .line 1063
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1064
    .line 1065
    .line 1066
    move-object/from16 v9, v29

    .line 1067
    .line 1068
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    .line 1070
    .line 1071
    move/from16 v4, v22

    .line 1072
    .line 1073
    move-object/from16 v11, v30

    .line 1074
    .line 1075
    invoke-virtual {v0, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 1079
    .line 1080
    .line 1081
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    .line 1082
    .line 1083
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1084
    .line 1085
    .line 1086
    move-object/from16 v12, v26

    .line 1087
    .line 1088
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    .line 1090
    .line 1091
    move/from16 v2, v18

    .line 1092
    .line 1093
    move-object/from16 v15, v24

    .line 1094
    .line 1095
    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    .line 1097
    .line 1098
    move-object/from16 v3, v25

    .line 1099
    .line 1100
    move-object/from16 v4, v28

    .line 1101
    .line 1102
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    .line 1104
    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1108
    .line 1109
    .line 1110
    move-object/from16 v4, v27

    .line 1111
    .line 1112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .line 1124
    .line 1125
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1126
    .line 1127
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1128
    .line 1129
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    .line 1130
    .line 1131
    .line 1132
    goto :goto_16

    .line 1133
    :catch_7
    move-exception v0

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1135
    .line 1136
    .line 1137
    :goto_16
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1138
    .line 1139
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 1140
    .line 1141
    .line 1142
    if-nez v23, :cond_1d

    .line 1143
    .line 1144
    goto/16 :goto_4

    .line 1145
    .line 1146
    :catchall_7
    move-exception v0

    .line 1147
    move/from16 v22, v9

    .line 1148
    .line 1149
    move/from16 v18, v15

    .line 1150
    .line 1151
    move-object/from16 v2, v20

    .line 1152
    .line 1153
    move-object/from16 v15, v24

    .line 1154
    .line 1155
    move-object/from16 v4, v25

    .line 1156
    .line 1157
    move-object/from16 v12, v26

    .line 1158
    .line 1159
    move-object/from16 v24, v27

    .line 1160
    .line 1161
    move-object/from16 v34, v28

    .line 1162
    .line 1163
    move-object/from16 v9, v29

    .line 1164
    .line 1165
    move-object/from16 v11, v30

    .line 1166
    .line 1167
    move-object/from16 v3, v31

    .line 1168
    .line 1169
    move-object/from16 v16, v0

    .line 1170
    .line 1171
    move-object v4, v15

    .line 1172
    move/from16 v15, v18

    .line 1173
    .line 1174
    move/from16 v0, v22

    .line 1175
    .line 1176
    move-object/from16 v35, v34

    .line 1177
    .line 1178
    goto/16 :goto_25

    .line 1179
    .line 1180
    :catch_8
    move-exception v0

    .line 1181
    move/from16 v22, v9

    .line 1182
    .line 1183
    move/from16 v18, v15

    .line 1184
    .line 1185
    move-object/from16 v2, v20

    .line 1186
    .line 1187
    move-object/from16 v15, v24

    .line 1188
    .line 1189
    move-object/from16 v4, v25

    .line 1190
    .line 1191
    move-object/from16 v12, v26

    .line 1192
    .line 1193
    move-object/from16 v24, v27

    .line 1194
    .line 1195
    move-object/from16 v34, v28

    .line 1196
    .line 1197
    move-object/from16 v9, v29

    .line 1198
    .line 1199
    move-object/from16 v11, v30

    .line 1200
    .line 1201
    move-object/from16 v3, v31

    .line 1202
    .line 1203
    move/from16 v16, v18

    .line 1204
    .line 1205
    goto/16 :goto_1f

    .line 1206
    .line 1207
    :catchall_8
    move-exception v0

    .line 1208
    move-object/from16 v2, v20

    .line 1209
    .line 1210
    :goto_17
    move-object/from16 v15, v24

    .line 1211
    .line 1212
    move-object/from16 v4, v25

    .line 1213
    .line 1214
    move-object/from16 v12, v26

    .line 1215
    .line 1216
    move-object/from16 v24, v27

    .line 1217
    .line 1218
    move-object/from16 v34, v28

    .line 1219
    .line 1220
    move-object/from16 v9, v29

    .line 1221
    .line 1222
    move-object/from16 v11, v30

    .line 1223
    .line 1224
    move-object/from16 v3, v31

    .line 1225
    .line 1226
    :goto_18
    const/16 v16, 0x1

    .line 1227
    .line 1228
    :goto_19
    move-object v4, v15

    .line 1229
    move-object/from16 v35, v34

    .line 1230
    .line 1231
    const/4 v15, 0x0

    .line 1232
    move/from16 v36, v16

    .line 1233
    .line 1234
    move-object/from16 v16, v0

    .line 1235
    .line 1236
    move/from16 v0, v36

    .line 1237
    .line 1238
    goto/16 :goto_25

    .line 1239
    .line 1240
    :catch_9
    move-exception v0

    .line 1241
    move-object/from16 v2, v20

    .line 1242
    .line 1243
    :goto_1a
    move-object/from16 v15, v24

    .line 1244
    .line 1245
    move-object/from16 v4, v25

    .line 1246
    .line 1247
    move-object/from16 v12, v26

    .line 1248
    .line 1249
    move-object/from16 v24, v27

    .line 1250
    .line 1251
    move-object/from16 v34, v28

    .line 1252
    .line 1253
    move-object/from16 v9, v29

    .line 1254
    .line 1255
    move-object/from16 v11, v30

    .line 1256
    .line 1257
    move-object/from16 v3, v31

    .line 1258
    .line 1259
    :goto_1b
    const/16 v16, 0x1

    .line 1260
    .line 1261
    :goto_1c
    move/from16 v22, v16

    .line 1262
    .line 1263
    const/16 v16, 0x0

    .line 1264
    .line 1265
    goto/16 :goto_1f

    .line 1266
    .line 1267
    :catchall_9
    move-exception v0

    .line 1268
    move-object v2, v9

    .line 1269
    goto :goto_17

    .line 1270
    :catch_a
    move-exception v0

    .line 1271
    move-object v2, v9

    .line 1272
    goto :goto_1a

    .line 1273
    :catchall_a
    move-exception v0

    .line 1274
    move-object v2, v9

    .line 1275
    move/from16 v16, v15

    .line 1276
    .line 1277
    move-object/from16 v15, v24

    .line 1278
    .line 1279
    move-object/from16 v4, v25

    .line 1280
    .line 1281
    move-object/from16 v12, v26

    .line 1282
    .line 1283
    move-object/from16 v24, v27

    .line 1284
    .line 1285
    move-object/from16 v34, v28

    .line 1286
    .line 1287
    move-object/from16 v9, v29

    .line 1288
    .line 1289
    move-object/from16 v11, v30

    .line 1290
    .line 1291
    move-object/from16 v3, v31

    .line 1292
    .line 1293
    goto :goto_19

    .line 1294
    :catch_b
    move-exception v0

    .line 1295
    move-object v2, v9

    .line 1296
    move/from16 v16, v15

    .line 1297
    .line 1298
    move-object/from16 v15, v24

    .line 1299
    .line 1300
    move-object/from16 v4, v25

    .line 1301
    .line 1302
    move-object/from16 v12, v26

    .line 1303
    .line 1304
    move-object/from16 v24, v27

    .line 1305
    .line 1306
    move-object/from16 v34, v28

    .line 1307
    .line 1308
    move-object/from16 v9, v29

    .line 1309
    .line 1310
    move-object/from16 v11, v30

    .line 1311
    .line 1312
    move-object/from16 v3, v31

    .line 1313
    .line 1314
    goto :goto_1c

    .line 1315
    :catchall_b
    move-exception v0

    .line 1316
    move-object v3, v4

    .line 1317
    move-object v2, v9

    .line 1318
    move-object/from16 v15, v24

    .line 1319
    .line 1320
    move-object/from16 v4, v25

    .line 1321
    .line 1322
    move-object/from16 v12, v26

    .line 1323
    .line 1324
    move-object/from16 v24, v27

    .line 1325
    .line 1326
    move-object/from16 v34, v28

    .line 1327
    .line 1328
    move-object/from16 v9, v29

    .line 1329
    .line 1330
    move-object/from16 v11, v30

    .line 1331
    .line 1332
    goto :goto_18

    .line 1333
    :catch_c
    move-exception v0

    .line 1334
    move-object v3, v4

    .line 1335
    move-object v2, v9

    .line 1336
    move-object/from16 v15, v24

    .line 1337
    .line 1338
    move-object/from16 v4, v25

    .line 1339
    .line 1340
    move-object/from16 v12, v26

    .line 1341
    .line 1342
    move-object/from16 v24, v27

    .line 1343
    .line 1344
    move-object/from16 v34, v28

    .line 1345
    .line 1346
    move-object/from16 v9, v29

    .line 1347
    .line 1348
    move-object/from16 v11, v30

    .line 1349
    .line 1350
    goto :goto_1b

    .line 1351
    :catchall_c
    move-exception v0

    .line 1352
    move-object v2, v9

    .line 1353
    move-object/from16 v15, v24

    .line 1354
    .line 1355
    move-object/from16 v12, v26

    .line 1356
    .line 1357
    move-object/from16 v24, v27

    .line 1358
    .line 1359
    move-object/from16 v34, v28

    .line 1360
    .line 1361
    move-object/from16 v11, v30

    .line 1362
    .line 1363
    :goto_1d
    const/16 v16, 0x1

    .line 1364
    .line 1365
    move-object v9, v3

    .line 1366
    move-object v3, v4

    .line 1367
    move-object/from16 v4, v25

    .line 1368
    .line 1369
    goto/16 :goto_19

    .line 1370
    .line 1371
    :catch_d
    move-exception v0

    .line 1372
    move-object v2, v9

    .line 1373
    move-object/from16 v15, v24

    .line 1374
    .line 1375
    move-object/from16 v12, v26

    .line 1376
    .line 1377
    move-object/from16 v24, v27

    .line 1378
    .line 1379
    move-object/from16 v34, v28

    .line 1380
    .line 1381
    move-object/from16 v11, v30

    .line 1382
    .line 1383
    :goto_1e
    const/16 v16, 0x1

    .line 1384
    .line 1385
    move-object v9, v3

    .line 1386
    move-object v3, v4

    .line 1387
    move-object/from16 v4, v25

    .line 1388
    .line 1389
    goto/16 :goto_1c

    .line 1390
    .line 1391
    :catchall_d
    move-exception v0

    .line 1392
    move-object v2, v9

    .line 1393
    move-object v11, v12

    .line 1394
    move-object/from16 v15, v24

    .line 1395
    .line 1396
    move-object/from16 v12, v26

    .line 1397
    .line 1398
    move-object/from16 v24, v27

    .line 1399
    .line 1400
    move-object/from16 v34, v28

    .line 1401
    .line 1402
    goto :goto_1d

    .line 1403
    :catch_e
    move-exception v0

    .line 1404
    move-object v2, v9

    .line 1405
    move-object v11, v12

    .line 1406
    move-object/from16 v15, v24

    .line 1407
    .line 1408
    move-object/from16 v12, v26

    .line 1409
    .line 1410
    move-object/from16 v24, v27

    .line 1411
    .line 1412
    move-object/from16 v34, v28

    .line 1413
    .line 1414
    goto :goto_1e

    .line 1415
    :catchall_e
    move-exception v0

    .line 1416
    move-object v2, v9

    .line 1417
    move-object/from16 v15, v24

    .line 1418
    .line 1419
    move-object/from16 v24, v27

    .line 1420
    .line 1421
    move-object/from16 v34, v28

    .line 1422
    .line 1423
    const/16 v16, 0x1

    .line 1424
    .line 1425
    move-object v9, v3

    .line 1426
    move-object v3, v4

    .line 1427
    move-object/from16 v4, v25

    .line 1428
    .line 1429
    move-object/from16 v36, v12

    .line 1430
    .line 1431
    move-object v12, v11

    .line 1432
    move-object/from16 v11, v36

    .line 1433
    .line 1434
    goto/16 :goto_19

    .line 1435
    .line 1436
    :catch_f
    move-exception v0

    .line 1437
    move-object v2, v9

    .line 1438
    move-object/from16 v15, v24

    .line 1439
    .line 1440
    move-object/from16 v24, v27

    .line 1441
    .line 1442
    move-object/from16 v34, v28

    .line 1443
    .line 1444
    const/16 v16, 0x1

    .line 1445
    .line 1446
    move-object v9, v3

    .line 1447
    move-object v3, v4

    .line 1448
    move-object/from16 v4, v25

    .line 1449
    .line 1450
    move-object/from16 v36, v12

    .line 1451
    .line 1452
    move-object v12, v11

    .line 1453
    move-object/from16 v11, v36

    .line 1454
    .line 1455
    goto/16 :goto_1c

    .line 1456
    .line 1457
    :goto_1f
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    .line 1460
    .line 1461
    .line 1462
    move-object/from16 v17, v15

    .line 1463
    .line 1464
    :try_start_15
    const-string v15, "Exception in enforceAppSeparationAllowListUpdateInternal "

    .line 1465
    .line 1466
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v4

    .line 1476
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    .line 1480
    .line 1481
    .line 1482
    if-eqz v8, :cond_1a

    .line 1483
    .line 1484
    const/4 v4, 0x0

    .line 1485
    invoke-virtual {v8, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v0

    .line 1489
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v4

    .line 1493
    invoke-static {v7, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1494
    .line 1495
    .line 1496
    if-eqz v4, :cond_1b

    .line 1497
    .line 1498
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v0

    .line 1502
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1503
    .line 1504
    .line 1505
    move-result v4

    .line 1506
    if-eqz v4, :cond_1b

    .line 1507
    .line 1508
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v4

    .line 1512
    check-cast v4, Ljava/lang/String;

    .line 1513
    .line 1514
    invoke-static {v6, v4, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    goto :goto_20

    .line 1518
    :cond_1a
    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    .line 1520
    .line 1521
    :cond_1b
    sput-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1522
    .line 1523
    if-eqz v2, :cond_1c

    .line 1524
    .line 1525
    const/4 v4, 0x0

    .line 1526
    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1527
    .line 1528
    .line 1529
    move-result v0

    .line 1530
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1531
    .line 1532
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v2

    .line 1536
    invoke-static {v7, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1537
    .line 1538
    .line 1539
    if-eqz v2, :cond_1c

    .line 1540
    .line 1541
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1546
    .line 1547
    .line 1548
    move-result v2

    .line 1549
    if-eqz v2, :cond_1c

    .line 1550
    .line 1551
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v2

    .line 1555
    check-cast v2, Ljava/lang/String;

    .line 1556
    .line 1557
    invoke-static {v3, v2, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    goto :goto_21

    .line 1561
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    .line 1562
    .line 1563
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1567
    .line 1568
    .line 1569
    const/4 v2, 0x0

    .line 1570
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1571
    .line 1572
    .line 1573
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 1574
    .line 1575
    .line 1576
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    .line 1577
    .line 1578
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    .line 1583
    .line 1584
    move/from16 v15, v16

    .line 1585
    .line 1586
    move-object/from16 v4, v17

    .line 1587
    .line 1588
    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1589
    .line 1590
    .line 1591
    move-object/from16 v2, v25

    .line 1592
    .line 1593
    move-object/from16 v3, v34

    .line 1594
    .line 1595
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    .line 1597
    .line 1598
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1601
    .line 1602
    .line 1603
    move-object/from16 v3, v24

    .line 1604
    .line 1605
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v2

    .line 1615
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    .line 1617
    .line 1618
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1619
    .line 1620
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1621
    .line 1622
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    .line 1623
    .line 1624
    .line 1625
    goto :goto_22

    .line 1626
    :catch_10
    move-exception v0

    .line 1627
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1628
    .line 1629
    .line 1630
    :goto_22
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1631
    .line 1632
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 1633
    .line 1634
    .line 1635
    if-nez v23, :cond_1d

    .line 1636
    .line 1637
    goto/16 :goto_4

    .line 1638
    .line 1639
    :cond_1d
    :goto_23
    return-void

    .line 1640
    :catchall_f
    move-exception v0

    .line 1641
    move-object/from16 v4, v17

    .line 1642
    .line 1643
    :goto_24
    move-object/from16 v15, v25

    .line 1644
    .line 1645
    move-object/from16 v35, v34

    .line 1646
    .line 1647
    move/from16 v15, v16

    .line 1648
    .line 1649
    move-object/from16 v16, v0

    .line 1650
    .line 1651
    move/from16 v0, v22

    .line 1652
    .line 1653
    goto :goto_25

    .line 1654
    :catchall_10
    move-exception v0

    .line 1655
    move-object v4, v15

    .line 1656
    goto :goto_24

    .line 1657
    :goto_25
    if-eqz v8, :cond_1e

    .line 1658
    .line 1659
    move-object/from16 v17, v4

    .line 1660
    .line 1661
    const/4 v4, 0x0

    .line 1662
    invoke-virtual {v8, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1663
    .line 1664
    .line 1665
    move-result v5

    .line 1666
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v4

    .line 1670
    invoke-static {v7, v14, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1671
    .line 1672
    .line 1673
    if-eqz v4, :cond_1f

    .line 1674
    .line 1675
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v4

    .line 1679
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1680
    .line 1681
    .line 1682
    move-result v5

    .line 1683
    if-eqz v5, :cond_1f

    .line 1684
    .line 1685
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v5

    .line 1689
    check-cast v5, Ljava/lang/String;

    .line 1690
    .line 1691
    invoke-static {v6, v5, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    .line 1693
    .line 1694
    goto :goto_26

    .line 1695
    :cond_1e
    move-object/from16 v17, v4

    .line 1696
    .line 1697
    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    .line 1699
    .line 1700
    :cond_1f
    sput-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1701
    .line 1702
    if-eqz v2, :cond_20

    .line 1703
    .line 1704
    const/4 v4, 0x0

    .line 1705
    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v2

    .line 1709
    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1710
    .line 1711
    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v4

    .line 1715
    invoke-static {v7, v14, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1716
    .line 1717
    .line 1718
    if-eqz v4, :cond_20

    .line 1719
    .line 1720
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v2

    .line 1724
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v4

    .line 1728
    if-eqz v4, :cond_20

    .line 1729
    .line 1730
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v4

    .line 1734
    check-cast v4, Ljava/lang/String;

    .line 1735
    .line 1736
    invoke-static {v3, v4, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    .line 1738
    .line 1739
    goto :goto_27

    .line 1740
    :cond_20
    new-instance v2, Landroid/content/Intent;

    .line 1741
    .line 1742
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    .line 1747
    .line 1748
    invoke-virtual {v2, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 1752
    .line 1753
    .line 1754
    :try_start_17
    new-instance v0, Landroid/content/Intent;

    .line 1755
    .line 1756
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    .line 1761
    .line 1762
    move-object/from16 v2, v17

    .line 1763
    .line 1764
    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1765
    .line 1766
    .line 1767
    move-object/from16 v2, v25

    .line 1768
    .line 1769
    move-object/from16 v3, v35

    .line 1770
    .line 1771
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1772
    .line 1773
    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1775
    .line 1776
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1777
    .line 1778
    .line 1779
    move-object/from16 v3, v24

    .line 1780
    .line 1781
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    .line 1783
    .line 1784
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1785
    .line 1786
    .line 1787
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v2

    .line 1791
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    .line 1793
    .line 1794
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1795
    .line 1796
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1797
    .line 1798
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    .line 1799
    .line 1800
    .line 1801
    goto :goto_28

    .line 1802
    :catch_11
    move-exception v0

    .line 1803
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1804
    .line 1805
    .line 1806
    :goto_28
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1807
    .line 1808
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 1809
    .line 1810
    .line 1811
    if-nez v23, :cond_21

    .line 1812
    .line 1813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 1814
    .line 1815
    .line 1816
    :cond_21
    throw v16
.end method

.method public static -$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo v0, "ro.build.PDA"

    .line 7
    .line 8
    .line 9
    const-string v1, "Unknown"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "1. pdaVersion = "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "PersonaManagerService"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v3, "trimHiddenVersion("

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ")"

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x5f

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v4, -0x1

    .line 64
    if-eq v3, v4, :cond_1

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_1
    const-string v1, "2. pdaVersion = "

    .line 76
    .line 77
    invoke-static {v1, v0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 81
    .line 82
    :goto_0
    return-object v0
.end method

.method public static -$$Nest$mgetRequiredApps(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x100000

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "android.intent.action.MAIN"

    .line 50
    .line 51
    const-string v3, "android.intent.category.LAUNCHER"

    .line 52
    .line 53
    invoke-static {v0, v3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const v4, 0xc2200

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v2, Landroid/util/ArraySet;

    .line 71
    .line 72
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 90
    .line 91
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 92
    .line 93
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    new-instance v0, Landroid/util/ArraySet;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const v2, 0x1070205

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public static -$$Nest$mgetWorkTabSupportLauncherUids(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "com.nttdocomo.android.dhome"

    .line 10
    .line 11
    const-string v2, "com.nttdocomo.android.homezozo"

    .line 12
    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "android.intent.action.MAIN"

    .line 18
    .line 19
    const-string v3, "android.intent.category.HOME"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/high16 v4, 0xc0000

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 58
    .line 59
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-wide/16 v6, 0x40

    .line 98
    .line 99
    invoke-interface {v4, v3, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_1

    .line 104
    .line 105
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    .line 107
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    return-object v0
.end method

.method public static -$$Nest$mlogUserRemoval(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 5
    .line 6
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 8
    .line 9
    const-string v2, "USER-REMOVED"

    .line 10
    .line 11
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public static -$$Nest$mmigrateKnoxFingerprintPlusValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 8

    .line 1
    const-string v0, "knox_finger_print_plus"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 26
    .line 27
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_1
    const-string v4, "Migrate fingerprint plus settings value. knoxId = "

    .line 64
    .line 65
    const-string v5, "PersonaManagerService:FOTA"

    .line 66
    .line 67
    invoke-static {v3, v4, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4, v0, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v6, v0, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_2
    move-exception v4

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v7, "Migration failed! knoxId = "

    .line 94
    .line 95
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    return-void
.end method

.method public static -$$Nest$mrecoverContainerInfo(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string/jumbo v0, "persist.sys.knox.userinfo"

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1, v1}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    const-string v0, "PersonaManagerService"

    .line 38
    .line 39
    const-string v1, "UserInfo currupted, set again"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->setContainerInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_2
    return-void
.end method

.method public static -$$Nest$mremoveDisallowedSFpackages(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "removeDisallowedSFpackages() called."

    .line 5
    .line 6
    .line 7
    const-string v1, "PersonaManagerService:FOTA"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo p0, "removeDisallowedSFpackages() - user manager is null"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    const-string/jumbo v3, "removeDisallowedSecureFolderPackages() user="

    .line 61
    .line 62
    .line 63
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v3, Landroid/util/ArraySet;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const v5, 0x1070205

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    new-instance v4, Landroid/util/ArraySet;

    .line 101
    .line 102
    const-string v5, "AllowPackage"

    .line 103
    .line 104
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 105
    .line 106
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 111
    .line 112
    .line 113
    new-instance v5, Landroid/util/ArraySet;

    .line 114
    .line 115
    const-string v6, "DefaultPackage"

    .line 116
    .line 117
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    .line 118
    .line 119
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_1

    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Ljava/lang/String;

    .line 147
    .line 148
    sget-boolean v5, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 149
    .line 150
    if-eqz v5, :cond_3

    .line 151
    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v6, "dsallowedPackage: "

    .line 158
    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_0
    move-exception v2

    .line 174
    goto :goto_3

    .line 175
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 176
    .line 177
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 178
    .line 179
    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_4

    .line 184
    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v6, "Not removing package "

    .line 191
    .line 192
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v4, ": has active device admin"

    .line 199
    .line 200
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 212
    .line 213
    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v4, "exception occurred in removeDisallowedSecureFolderPackages()! "

    .line 220
    .line 221
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v3, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_5
    :goto_4
    return-void
.end method

.method public static -$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 32
    .line 33
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 42
    .line 43
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 53
    .line 54
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 63
    .line 64
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const/4 v3, -0x2

    .line 81
    if-ne v2, v3, :cond_0

    .line 82
    .line 83
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v3, "android.intent.extra.user_handle"

    .line 89
    .line 90
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 91
    .line 92
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    const-string v1, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    .line 105
    .line 106
    invoke-static {v1, v2}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    return-void
.end method

.method public static -$$Nest$msetDpmScreenTimeoutFlag(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    :goto_0
    const-wide/32 v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    cmp-long v2, v0, v2

    .line 22
    .line 23
    const v3, 0x7fffffff

    .line 24
    .line 25
    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    long-to-int v0, v0

    .line 31
    :goto_1
    const/4 v1, 0x1

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    if-ge v0, v3, :cond_2

    .line 35
    .line 36
    move v2, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    const-string v5, "knox_screen_off_timeout"

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :goto_3
    int-to-long v3, p1

    .line 59
    goto :goto_4

    .line 60
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    goto :goto_3

    .line 71
    :goto_4
    if-eqz v2, :cond_4

    .line 72
    .line 73
    int-to-long v5, v0

    .line 74
    cmp-long p1, v3, v5

    .line 75
    .line 76
    if-lez p1, :cond_4

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 79
    .line 80
    const-string p0, "PersonaManagerService:KnoxAnalytics"

    .line 81
    .line 82
    const-string/jumbo p1, "setting mKALockscreenTimeoutAdminFlag true (at boot)"

    .line 83
    .line 84
    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

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
    const-string v1, "eng"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v1, "system"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo v2, "users"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    const-string v1, "com.samsung.knox.appsupdateagent"

    .line 38
    .line 39
    const-string v2, "com.android.bbc.fileprovider"

    .line 40
    .line 41
    const-string v3, "com.samsung.knox.securefolder"

    .line 42
    .line 43
    const-string v4, "com.samsung.android.knox.containercore"

    .line 44
    .line 45
    const-string v5, "com.sec.knox.bluetooth"

    .line 46
    .line 47
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 62
    .line 63
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 64
    .line 65
    const-string v1, ""

    .line 66
    .line 67
    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v1, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    const-string/jumbo v0, "version"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_0
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_1

    .line 96
    .line 97
    const-string/jumbo v1, "v00"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_1

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 109
    :goto_0
    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 110
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    .line 117
    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    .line 2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v6, Lcom/android/server/pm/PersonaManagerService$Injector;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PersonaManagerService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;-><init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    .line 12
    iput v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    const/4 v3, -0x1

    .line 13
    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    .line 14
    iput-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    .line 16
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 17
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 18
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 19
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 20
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Lcom/android/server/pm/PersonaManagerService$1;

    .line 21
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    .line 22
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 23
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 24
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 25
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 26
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 27
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 28
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$7;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

    .line 29
    const-string v1, "PersonaManagerService:KnoxForesight"

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 30
    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 33
    iget-object v2, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 34
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 35
    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 36
    new-instance v2, Lcom/android/server/knox/KnoxAnalyticsContainer;

    new-instance v3, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    invoke-direct {v3, v1, p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V

    invoke-direct {v2, v1, v3}, Lcom/android/server/knox/KnoxAnalyticsContainer;-><init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 37
    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 38
    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 40
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    sput-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    .line 42
    sput-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 43
    :cond_0
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 44
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 47
    iget-object v2, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    .line 48
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 49
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "userwithpersonalist.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    const-string v2, "PersonaManagerService"

    const-string v3, "No need to create user persona list file from Knox 3.0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 52
    :cond_1
    :goto_0
    const-string v2, "PersonaManagerService"

    const-string v3, "<init> adding PersonaPolicyManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 54
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "PersonaManagerService"

    const/16 v3, 0xa

    invoke-direct {p1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "persona_cache.xml"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    const-string p1, "PersonaManagerService"

    const-string v0, "PMS cache file created "

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 62
    :cond_2
    const-string p1, "PersonaManagerService"

    const-string v0, "Error Creating PMS cache file!!!! "

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 63
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter p1

    .line 65
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->readPersonaCacheLocked()V

    .line 66
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    new-instance p1, Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PersonaManagerService$LocalService;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 68
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    const-class p0, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception p0

    .line 71
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 72
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "PersonaManagerService"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, ".crt"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Failed to rename file: "

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_1

    .line 87
    .line 88
    const-string p0, "Failed to delete the file"

    .line 89
    .line 90
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public static varargs checkNullParameter([Ljava/lang/Object;)Z
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    move v4, v1

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    .line 8
    aget-object v5, p0, v3

    .line 9
    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    const-string p0, "Parameter("

    .line 13
    .line 14
    const-string v0, ") is null."

    .line 15
    .line 16
    const-string v2, "PersonaManagerService"

    .line 17
    .line 18
    invoke-static {v4, p0, v0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v2
.end method

.method public static clearStorageForUser(I)V
    .locals 3

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    const-string v1, "clearStorageForUser "

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 27
    .line 28
    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockSettingsInternal;->clearStorageForUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string v1, "clearStorageForUser err."

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public static deletePackageAsUser(ILjava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "deletePackageAsUser request for userid -"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " and pkg-"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;-><init>(I)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    const-string/jumbo v1, "package"

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v4, -0x1

    .line 46
    const/high16 v7, 0x10000000

    .line 47
    .line 48
    move-object v3, p1

    .line 49
    move-object v5, v0

    .line 50
    move v6, p0

    .line 51
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 52
    .line 53
    .line 54
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    if-nez p0, :cond_0

    .line 58
    .line 59
    :try_start_2
    const-string p0, "PersonaManagerService"

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "Waiting in while loop -"

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :try_start_3
    monitor-exit v0

    .line 90
    goto :goto_2

    .line 91
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 93
    :catch_1
    move-exception p0

    .line 94
    const-string p1, "PersonaManagerService"

    .line 95
    .line 96
    const-string v1, "deletePackage exception -"

    .line 97
    .line 98
    invoke-static {p0, v1, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->result:Z

    .line 102
    .line 103
    return p0
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
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_1
    const/4 v2, 0x1

    .line 59
    if-gtz v0, :cond_3

    .line 60
    .line 61
    move v0, v2

    .line 62
    :cond_3
    if-gtz v1, :cond_4

    .line 63
    .line 64
    move v1, v2

    .line 65
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Landroid/graphics/Canvas;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public static getDeviceOwnerPackage()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "device_policy"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "PersonaManagerService"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    invoke-interface {v0, v3}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v3, "getDeviceOwnerPackage exception -"

    .line 30
    .line 31
    invoke-static {v0, v3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "getDeviceOwnerPackage packageName -"

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v2
.end method

.method public static getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "device_policy"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "PersonaManagerService"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "getProfileOwnerPackage exception -"

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    const-string p0, "getProfileOwnerPackage packageName -"

    .line 34
    .line 35
    invoke-static {p0, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v2
.end method

.method public static isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0x81

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getDeviceOwnerPackage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v3, "PersonaManagerService"

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    const-string p0, "isAppSeparationIndepdentApp ignoring DO packageName - "

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_2
    const-string v1, "com.samsung.android.knox.kpu"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const-string v0, "isAppSeparationIndepdentApp ignoring KSP packageName - "

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :cond_3
    return v0
.end method

.method public static onNewUserCreated(Landroid/content/pm/UserInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onNewUserCreated: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "PersonaManagerService"

    .line 19
    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-class v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    .line 37
    .line 38
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, " provisioning state:"

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 59
    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    const-string/jumbo p0, "null"

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_0
    const-string v0, "KnoxMUMContainerPolicy"

    .line 71
    .line 72
    invoke-static {v2, p0, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static resetSecureFolderAdmin()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "com.samsung.knox.securefolder"

    .line 4
    .line 5
    const-string v2, "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 11
    .line 12
    const-string v2, "enterprise_policy"

    .line 13
    .line 14
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    .line 33
    .line 34
    .line 35
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v3

    .line 38
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const-string v3, "PersonaManagerService:FOTA"

    .line 45
    .line 46
    const-string/jumbo v4, "resetSecureFolderAdmin called"

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :try_start_1
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 63
    .line 64
    invoke-direct {v3}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final CMFALock(I)V
    .locals 2

    .line 1
    const-string v0, "CMFALock"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "PersonaManagerService"

    .line 18
    .line 19
    const-string v1, "CMFALock userId = "

    .line 20
    .line 21
    invoke-static {p1, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string/jumbo v0, "trust"

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 41
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
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    :try_start_2
    monitor-exit p0

    .line 48
    const/4 p0, 0x1

    .line 49
    invoke-interface {v0, p1, p0}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_3
    return-void
.end method

.method public final CMFAUnLock(I)V
    .locals 0

    .line 1
    const-string p1, "CMFAUnLock"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "PersonaManagerService"

    .line 7
    .line 8
    const-string p1, "CMFAUnLock not support yet."

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final addAppPackageNameToAllowList(ILjava/util/List;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x3e8

    .line 10
    .line 11
    invoke-interface {v0, v2, v1}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string p0, "PersonaManagerService"

    .line 18
    .line 19
    const-string p1, "addAppPackageNameToAllowList failed."

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p1, v2, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->addAppPackageNameToAllowList(ILandroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final appliedPasswordPolicy(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string/jumbo v3, "user"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPwdChangeRequested(I)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v2, "enable_one_lock_ongoing"

    .line 64
    .line 65
    invoke-static {p1, v2, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-lez p1, :cond_2

    .line 70
    .line 71
    :cond_1
    const/4 v4, 0x1

    .line 72
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    return v4
.end method

.method public final bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    const/4 v12, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x3e8

    .line 14
    .line 15
    invoke-interface {v2, v4, v3}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v0, "PersonaManagerService"

    .line 22
    .line 23
    const-string v1, "bindCoreServiceAsUser() failed to bind."

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return v12

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v13

    .line 44
    move/from16 v11, p7

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p0, v0, v2, v11}, Lcom/android/server/pm/PersonaManagerService;->createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return v12

    .line 61
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    move/from16 v3, p6

    .line 76
    .line 77
    int-to-long v8, v3

    .line 78
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    move-object/from16 v3, p2

    .line 85
    .line 86
    move-object/from16 v4, p3

    .line 87
    .line 88
    move-object/from16 v5, p4

    .line 89
    .line 90
    move-object/from16 v7, p5

    .line 91
    .line 92
    move/from16 v11, p7

    .line 93
    .line 94
    invoke-interface/range {v2 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    const/4 v12, 0x1

    .line 101
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    return v12

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :catch_1
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    return v12

    .line 129
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    return v12
.end method

.method public final broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .locals 6

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    const-string v1, "broadcastIntentThroughPersona is canceled by mContext = "

    .line 4
    .line 5
    const-string v2, "broadcastIntentThroughPersona Intent ="

    .line 6
    .line 7
    const-string v3, "broadcastIntentThroughPersona"

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Landroid/os/UserHandle;

    .line 44
    .line 45
    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " or intent = "

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    return p0

    .line 98
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public final checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final clearAttributes(II)Z
    .locals 1

    .line 1
    const-string v0, "clearAttributes"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "user not found "

    .line 17
    .line 18
    .line 19
    const-string p2, "PersonaManagerService"

    .line 20
    .line 21
    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 39
    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->clearAttributes(II)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    move v5, p3

    .line 19
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_3

    .line 37
    .line 38
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 39
    .line 40
    iget-boolean p3, p2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    const-string p3, "android.permission.BIND_DEVICE_ADMIN"

    .line 45
    .line 46
    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 56
    .line 57
    const-string p1, "Service must be protected by BIND_DEVICE_ADMIN permission"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 74
    .line 75
    const-string p1, "Only allow to bind service in "

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string p2, "Fail to look up the service: "

    .line 88
    .line 89
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " or user "

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, " is not running"

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, "PersonaManagerService"

    .line 113
    .line 114
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    return-object p0
.end method

.method public final deletePkg(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "PersonaManagerService"

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Ignore deletePkg request for personaId -"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " and pkg-"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string v0, "PersonaManagerService"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "deletePkg request for personaId -"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " and pkg-"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;-><init>(I)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 71
    .line 72
    invoke-static {p0, p2, v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->deletePackageAsUserAndPersona(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;I)V

    .line 73
    .line 74
    .line 75
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :goto_0
    :try_start_1
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    if-nez p0, :cond_1

    .line 79
    .line 80
    :try_start_2
    const-string p0, "PersonaManagerService"

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string p2, "Waiting in while loop"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-boolean p2, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception p0

    .line 111
    :try_start_3
    const-string p1, "PersonaManagerService"

    .line 112
    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v1, "deletePkg: InterruptedException = "

    .line 119
    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    monitor-exit v0

    .line 135
    goto :goto_2

    .line 136
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 138
    :catch_1
    move-exception p0

    .line 139
    const-string p1, "PersonaManagerService"

    .line 140
    .line 141
    const-string p2, "deletePkg exception -"

    .line 142
    .line 143
    invoke-static {p0, p2, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "PersonaManagerService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object p3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 16
    .line 17
    const-string v0, "USER-REMOVED"

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Ljava/lang/String;

    .line 24
    .line 25
    monitor-exit p1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p3

    .line 28
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    throw p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    const-string p3, "NA"

    .line 35
    .line 36
    :goto_0
    const-string p1, "Last removed user:"

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, ""

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 p3, 0x1

    .line 58
    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    check-cast p3, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "approved installers user : #"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    sget-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 105
    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    .line 110
    invoke-direct {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    sput-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 114
    .line 115
    :cond_2
    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 116
    .line 117
    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    const-string/jumbo v3, "mum_container_policy"

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    .line 133
    .line 134
    invoke-direct {v4, v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v3, v4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_1

    .line 150
    .line 151
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Ljava/lang/String;

    .line 156
    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v4, " - "

    .line 163
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :catch_1
    move-exception p1

    .line 182
    goto :goto_3

    .line 183
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :goto_4
    const-string p1, ""

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    const-string p3, "App Separation:"

    .line 205
    .line 206
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string p3, "    STATE : "

    .line 210
    .line 211
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    if-nez p0, :cond_5

    .line 215
    .line 216
    if-nez p1, :cond_4

    .line 217
    .line 218
    const-string p0, "NONE"

    .line 219
    .line 220
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_4
    const-string p0, "ACTIVATED"

    .line 225
    .line 226
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_5
    const-string p0, "ENABLED"

    .line 231
    .line 232
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_5
    if-eqz p1, :cond_8

    .line 236
    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    new-instance p3, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v0, "APP_SEPARATION_OUTSIDE"

    .line 248
    .line 249
    const/4 v1, 0x0

    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    const-string v2, "APP_SEPARATION_APP_LIST"

    .line 255
    .line 256
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const-string v3, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 261
    .line 262
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    if-eqz v2, :cond_6

    .line 267
    .line 268
    move v3, v1

    .line 269
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-ge v3, v4, :cond_6

    .line 274
    .line 275
    const-string v4, "        "

    .line 276
    .line 277
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v5, " -> "

    .line 289
    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    check-cast v5, Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v5, "\n"

    .line 303
    .line 304
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    add-int/lit8 v3, v3, 0x1

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_6
    if-eqz p1, :cond_7

    .line 318
    .line 319
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-ge v1, v2, :cond_7

    .line 324
    .line 325
    const-string v2, "        "

    .line 326
    .line 327
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v3, " -> "

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    check-cast v3, Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v3, "\n"

    .line 353
    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    add-int/lit8 v1, v1, 0x1

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v1, "    Outside Option : "

    .line 370
    .line 371
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string p1, "    AllowList Packages: "

    .line 385
    .line 386
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const-string p0, "    CoexistenceList Packages: "

    .line 397
    .line 398
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_8
    return-void

    .line 409
    :goto_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    .line 411
    .line 412
    throw p0
.end method

.method public final enforceAppSeparationCoexistenceAllowListUpdateInternal()V
    .locals 48

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "enforceAppSeparationCoexistenceAllowListUpdateInternal packageInfoList size -"

    .line 4
    .line 5
    const-string v3, "enforceAppSeparationCoexistenceAllowListUpdateInternal prevCoexistenceAppsSet size - "

    .line 6
    .line 7
    const-string v4, "enforceAppSeparationCoexistenceAllowListUpdateInternal coexistenceAppsSet size - "

    .line 8
    .line 9
    const-string v5, "enforceAppSeparationCoexistenceAllowListUpdateInternal is called for isOutside - "

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    sget-object v7, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 16
    .line 17
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v10, 0x0

    .line 30
    :goto_0
    const-string v11, "enforceAppSeparationCoexistenceAllowListUpdateInternal sending removedinfo intent. count = "

    .line 31
    .line 32
    const-string v12, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 33
    .line 34
    const-string v13, "com.samsung.android.appseparation"

    .line 35
    .line 36
    const-string v14, "app_uninstalled"

    .line 37
    .line 38
    const-string v15, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 39
    .line 40
    const-string v2, "SeparationWhiteListReturn"

    .line 41
    .line 42
    const-string v9, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    .line 43
    .line 44
    move/from16 v17, v10

    .line 45
    .line 46
    const-string v10, "coexistList after package: "

    .line 47
    .line 48
    move-object/from16 v18, v3

    .line 49
    .line 50
    const-string v3, "enforceAppSeparationCoexistenceAllowListUpdateInternal after update packageName - "

    .line 51
    .line 52
    move-object/from16 v19, v4

    .line 53
    .line 54
    const-string v4, "enforceAppSeparationCoexistenceAllowListUpdateInternal used by createSeparationConfig"

    .line 55
    .line 56
    move-object/from16 v20, v5

    .line 57
    .line 58
    const-string v5, "coexistList before package: "

    .line 59
    .line 60
    move/from16 v21, v8

    .line 61
    .line 62
    const-string v8, "enforceAppSeparationCoexistenceAllowListUpdateInternal before update packageName - "

    .line 63
    .line 64
    move-object/from16 v22, v11

    .line 65
    .line 66
    const-string v11, "enforceAppSeparationCoexistenceAllowListUpdateInternal: finally"

    .line 67
    .line 68
    move-object/from16 v23, v12

    .line 69
    .line 70
    const-string v12, "enforceAppSeparationCoexistenceAllowListUpdateInternal isOutside - "

    .line 71
    .line 72
    move-object/from16 v24, v13

    .line 73
    .line 74
    const-string v13, "APP_SEPARATION_APP_LIST"

    .line 75
    .line 76
    move-object/from16 v25, v14

    .line 77
    .line 78
    const-string v14, "APP_SEPARATION_OUTSIDE"

    .line 79
    .line 80
    move-object/from16 v26, v15

    .line 81
    .line 82
    const-string v15, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 83
    .line 84
    const-string v1, "PersonaManagerService"

    .line 85
    .line 86
    if-nez v7, :cond_7

    .line 87
    .line 88
    :try_start_0
    const-string v0, "enforceAppSeparationCoexistenceAllowListUpdateInternal no app separation data found in db"

    .line 89
    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    invoke-virtual {v6, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_1

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v8, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    if-eqz v6, :cond_3

    .line 137
    .line 138
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_3

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v5, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_3
    sput-object v7, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 162
    .line 163
    if-eqz v7, :cond_5

    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    invoke-virtual {v7, v14, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 171
    .line 172
    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 177
    .line 178
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    .line 184
    .line 185
    if-eqz v4, :cond_4

    .line 186
    .line 187
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_4

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v3, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_4
    if-eqz v5, :cond_5

    .line 208
    .line 209
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_5

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v10, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 230
    .line 231
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    const/4 v3, 0x1

    .line 238
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    move-object/from16 v2, p0

    .line 242
    .line 243
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 244
    .line 245
    .line 246
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 247
    .line 248
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    .line 250
    .line 251
    move-object/from16 v3, v26

    .line 252
    .line 253
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    move-object/from16 v4, v25

    .line 257
    .line 258
    const/4 v3, 0x0

    .line 259
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    move-object/from16 v4, v23

    .line 263
    .line 264
    move-object/from16 v5, v24

    .line 265
    .line 266
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    move-object/from16 v5, v22

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 292
    .line 293
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    .line 295
    .line 296
    goto :goto_5

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .line 300
    .line 301
    :goto_5
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 304
    .line 305
    .line 306
    if-nez v21, :cond_6

    .line 307
    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 309
    .line 310
    .line 311
    :cond_6
    return-void

    .line 312
    :catchall_0
    move-exception v0

    .line 313
    move-object/from16 v27, v22

    .line 314
    .line 315
    move-object/from16 v28, v23

    .line 316
    .line 317
    move-object/from16 v29, v24

    .line 318
    .line 319
    move-object/from16 v30, v25

    .line 320
    .line 321
    move-object/from16 v31, v26

    .line 322
    .line 323
    move-object/from16 v22, v2

    .line 324
    .line 325
    move-object/from16 v2, p0

    .line 326
    .line 327
    move-object/from16 v16, v0

    .line 328
    .line 329
    move-object v2, v9

    .line 330
    move-object/from16 v41, v27

    .line 331
    .line 332
    move-object/from16 v42, v28

    .line 333
    .line 334
    move-object/from16 v43, v29

    .line 335
    .line 336
    move-object/from16 v44, v30

    .line 337
    .line 338
    move-object/from16 v45, v31

    .line 339
    .line 340
    const/4 v0, 0x1

    .line 341
    const/16 v46, 0x0

    .line 342
    .line 343
    move-object v9, v8

    .line 344
    move-object/from16 v8, v22

    .line 345
    .line 346
    move-object/from16 v47, v12

    .line 347
    .line 348
    move-object v12, v3

    .line 349
    move-object v3, v4

    .line 350
    move-object v4, v15

    .line 351
    move-object v15, v10

    .line 352
    move-object v10, v7

    .line 353
    move-object/from16 v7, v47

    .line 354
    .line 355
    goto/16 :goto_3b

    .line 356
    .line 357
    :catch_1
    move-exception v0

    .line 358
    move-object/from16 v27, v22

    .line 359
    .line 360
    move-object/from16 v28, v23

    .line 361
    .line 362
    move-object/from16 v29, v24

    .line 363
    .line 364
    move-object/from16 v30, v25

    .line 365
    .line 366
    move-object/from16 v31, v26

    .line 367
    .line 368
    move-object/from16 v22, v2

    .line 369
    .line 370
    move-object/from16 v2, p0

    .line 371
    .line 372
    move-object v2, v9

    .line 373
    move-object/from16 v16, v22

    .line 374
    .line 375
    move-object/from16 v22, v27

    .line 376
    .line 377
    move-object/from16 v39, v29

    .line 378
    .line 379
    const/16 v20, 0x1

    .line 380
    .line 381
    const/16 v40, 0x0

    .line 382
    .line 383
    move-object v9, v8

    .line 384
    move-object/from16 v47, v12

    .line 385
    .line 386
    move-object v12, v3

    .line 387
    move-object v3, v4

    .line 388
    move-object v4, v15

    .line 389
    move-object v15, v10

    .line 390
    move-object v10, v7

    .line 391
    move-object/from16 v7, v47

    .line 392
    .line 393
    goto/16 :goto_33

    .line 394
    .line 395
    :cond_7
    move-object/from16 v27, v22

    .line 396
    .line 397
    move-object/from16 v28, v23

    .line 398
    .line 399
    move-object/from16 v29, v24

    .line 400
    .line 401
    move-object/from16 v30, v25

    .line 402
    .line 403
    move-object/from16 v31, v26

    .line 404
    .line 405
    move-object/from16 v22, v2

    .line 406
    .line 407
    move-object/from16 v23, v9

    .line 408
    .line 409
    move-object/from16 v24, v10

    .line 410
    .line 411
    const/4 v9, 0x0

    .line 412
    move-object/from16 v2, p0

    .line 413
    .line 414
    :try_start_2
    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 415
    .line 416
    .line 417
    move-result v10

    .line 418
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 423
    .line 424
    .line 425
    move-result-object v25

    .line 426
    new-instance v26, Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    .line 429
    .line 430
    .line 431
    if-eqz v6, :cond_8

    .line 432
    .line 433
    :try_start_3
    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 434
    .line 435
    .line 436
    move-result-object v26
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 437
    :cond_8
    move-object/from16 v32, v3

    .line 438
    .line 439
    goto :goto_6

    .line 440
    :catchall_1
    move-exception v0

    .line 441
    move-object/from16 v16, v0

    .line 442
    .line 443
    move-object v10, v7

    .line 444
    move-object v9, v8

    .line 445
    move-object v7, v12

    .line 446
    move-object/from16 v8, v22

    .line 447
    .line 448
    move-object/from16 v2, v23

    .line 449
    .line 450
    move-object/from16 v41, v27

    .line 451
    .line 452
    move-object/from16 v42, v28

    .line 453
    .line 454
    move-object/from16 v43, v29

    .line 455
    .line 456
    move-object/from16 v44, v30

    .line 457
    .line 458
    move-object/from16 v45, v31

    .line 459
    .line 460
    const/4 v0, 0x1

    .line 461
    const/16 v46, 0x0

    .line 462
    .line 463
    move-object v12, v3

    .line 464
    move-object v3, v4

    .line 465
    move-object v4, v15

    .line 466
    move-object/from16 v15, v24

    .line 467
    .line 468
    goto/16 :goto_3b

    .line 469
    .line 470
    :catch_2
    move-exception v0

    .line 471
    move-object v10, v7

    .line 472
    move-object v9, v8

    .line 473
    move-object v7, v12

    .line 474
    move-object/from16 v16, v22

    .line 475
    .line 476
    move-object/from16 v2, v23

    .line 477
    .line 478
    move-object/from16 v22, v27

    .line 479
    .line 480
    move-object/from16 v23, v28

    .line 481
    .line 482
    move-object/from16 v39, v29

    .line 483
    .line 484
    move-object/from16 v25, v30

    .line 485
    .line 486
    move-object/from16 v26, v31

    .line 487
    .line 488
    const/16 v20, 0x1

    .line 489
    .line 490
    const/16 v40, 0x0

    .line 491
    .line 492
    move-object v12, v3

    .line 493
    move-object v3, v4

    .line 494
    move-object v4, v15

    .line 495
    move-object/from16 v15, v24

    .line 496
    .line 497
    goto/16 :goto_33

    .line 498
    .line 499
    :goto_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    iput-object v3, v2, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_12

    .line 504
    .line 505
    if-nez v25, :cond_9

    .line 506
    .line 507
    :try_start_5
    new-instance v25, Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 510
    .line 511
    .line 512
    :cond_9
    move-object/from16 v3, v25

    .line 513
    .line 514
    move-object/from16 v25, v7

    .line 515
    .line 516
    goto :goto_b

    .line 517
    :catchall_2
    move-exception v0

    .line 518
    move-object/from16 v16, v0

    .line 519
    .line 520
    move-object v3, v4

    .line 521
    move-object v10, v7

    .line 522
    move-object v9, v8

    .line 523
    move-object v7, v12

    .line 524
    move-object v4, v15

    .line 525
    move-object/from16 v8, v22

    .line 526
    .line 527
    move-object/from16 v2, v23

    .line 528
    .line 529
    move-object/from16 v15, v24

    .line 530
    .line 531
    :goto_7
    move-object/from16 v41, v27

    .line 532
    .line 533
    move-object/from16 v42, v28

    .line 534
    .line 535
    move-object/from16 v43, v29

    .line 536
    .line 537
    move-object/from16 v44, v30

    .line 538
    .line 539
    move-object/from16 v45, v31

    .line 540
    .line 541
    move-object/from16 v12, v32

    .line 542
    .line 543
    :goto_8
    const/4 v0, 0x1

    .line 544
    const/16 v46, 0x0

    .line 545
    .line 546
    goto/16 :goto_3b

    .line 547
    .line 548
    :catch_3
    move-exception v0

    .line 549
    move-object v3, v4

    .line 550
    move-object v10, v7

    .line 551
    move-object v9, v8

    .line 552
    move-object v7, v12

    .line 553
    move-object v4, v15

    .line 554
    move-object/from16 v16, v22

    .line 555
    .line 556
    move-object/from16 v2, v23

    .line 557
    .line 558
    move-object/from16 v15, v24

    .line 559
    .line 560
    :goto_9
    move-object/from16 v22, v27

    .line 561
    .line 562
    move-object/from16 v23, v28

    .line 563
    .line 564
    move-object/from16 v39, v29

    .line 565
    .line 566
    move-object/from16 v25, v30

    .line 567
    .line 568
    move-object/from16 v26, v31

    .line 569
    .line 570
    move-object/from16 v12, v32

    .line 571
    .line 572
    :goto_a
    const/16 v20, 0x1

    .line 573
    .line 574
    const/16 v40, 0x0

    .line 575
    .line 576
    goto/16 :goto_33

    .line 577
    .line 578
    :goto_b
    :try_start_6
    new-instance v7, Ljava/util/HashSet;

    .line 579
    .line 580
    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_11

    .line 581
    .line 582
    .line 583
    if-nez v26, :cond_a

    .line 584
    .line 585
    :try_start_7
    new-instance v26, Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .line 589
    .line 590
    :cond_a
    move-object/from16 v3, v26

    .line 591
    .line 592
    goto :goto_c

    .line 593
    :catchall_3
    move-exception v0

    .line 594
    move-object/from16 v16, v0

    .line 595
    .line 596
    move-object v3, v4

    .line 597
    move-object v9, v8

    .line 598
    move-object v7, v12

    .line 599
    move-object v4, v15

    .line 600
    move-object/from16 v8, v22

    .line 601
    .line 602
    move-object/from16 v2, v23

    .line 603
    .line 604
    move-object/from16 v15, v24

    .line 605
    .line 606
    move-object/from16 v10, v25

    .line 607
    .line 608
    goto :goto_7

    .line 609
    :catch_4
    move-exception v0

    .line 610
    move-object v3, v4

    .line 611
    move-object v9, v8

    .line 612
    move-object v7, v12

    .line 613
    move-object v4, v15

    .line 614
    move-object/from16 v16, v22

    .line 615
    .line 616
    move-object/from16 v2, v23

    .line 617
    .line 618
    move-object/from16 v15, v24

    .line 619
    .line 620
    move-object/from16 v10, v25

    .line 621
    .line 622
    goto :goto_9

    .line 623
    :goto_c
    if-nez v9, :cond_b

    .line 624
    .line 625
    new-instance v9, Ljava/util/ArrayList;

    .line 626
    .line 627
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 628
    .line 629
    .line 630
    :cond_b
    move-object/from16 v26, v4

    .line 631
    .line 632
    :try_start_8
    new-instance v4, Ljava/util/HashSet;

    .line 633
    .line 634
    invoke-direct {v4, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 635
    .line 636
    .line 637
    new-instance v9, Ljava/util/HashSet;

    .line 638
    .line 639
    invoke-direct {v9, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 640
    .line 641
    .line 642
    new-instance v3, Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    .line 643
    .line 644
    move-object/from16 v33, v5

    .line 645
    .line 646
    move-object/from16 v5, v20

    .line 647
    .line 648
    :try_start_9
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .line 660
    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    move-object/from16 v5, v19

    .line 664
    .line 665
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    move-object/from16 v5, v18

    .line 685
    .line 686
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    const/4 v5, 0x1

    .line 708
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-virtual {v2, v6, v7, v9}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    .line 713
    .line 714
    .line 715
    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    .line 716
    move-object/from16 v18, v8

    .line 717
    .line 718
    :try_start_a
    new-instance v8, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .line 736
    .line 737
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    .line 741
    const/4 v8, 0x1

    .line 742
    const/16 v34, 0x0

    .line 743
    .line 744
    :goto_d
    :try_start_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 745
    .line 746
    .line 747
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    .line 748
    if-eqz v0, :cond_23

    .line 749
    .line 750
    :try_start_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    move-object/from16 v19, v5

    .line 755
    .line 756
    move-object v5, v0

    .line 757
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 758
    .line 759
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-nez v0, :cond_22

    .line 764
    .line 765
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 766
    .line 767
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    .line 768
    .line 769
    .line 770
    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 771
    if-eqz v0, :cond_c

    .line 772
    .line 773
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 776
    .line 777
    .line 778
    move/from16 v20, v8

    .line 779
    .line 780
    :try_start_e
    const-string v8, "enforceAppSeparationCoexistenceAllowListUpdateInternal isKeyBoardApp - "

    .line 781
    .line 782
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 786
    .line 787
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 795
    .line 796
    .line 797
    move-object/from16 v5, v19

    .line 798
    .line 799
    move/from16 v8, v20

    .line 800
    .line 801
    goto :goto_d

    .line 802
    :catchall_4
    move-exception v0

    .line 803
    :goto_e
    move-object/from16 v16, v0

    .line 804
    .line 805
    move-object v7, v12

    .line 806
    move-object v4, v15

    .line 807
    move-object/from16 v9, v18

    .line 808
    .line 809
    move/from16 v0, v20

    .line 810
    .line 811
    move-object/from16 v8, v22

    .line 812
    .line 813
    move-object/from16 v2, v23

    .line 814
    .line 815
    move-object/from16 v15, v24

    .line 816
    .line 817
    move-object/from16 v10, v25

    .line 818
    .line 819
    move-object/from16 v3, v26

    .line 820
    .line 821
    move-object/from16 v41, v27

    .line 822
    .line 823
    move-object/from16 v42, v28

    .line 824
    .line 825
    move-object/from16 v43, v29

    .line 826
    .line 827
    move-object/from16 v44, v30

    .line 828
    .line 829
    move-object/from16 v45, v31

    .line 830
    .line 831
    move-object/from16 v12, v32

    .line 832
    .line 833
    move-object/from16 v5, v33

    .line 834
    .line 835
    :goto_f
    move/from16 v46, v34

    .line 836
    .line 837
    goto/16 :goto_3b

    .line 838
    .line 839
    :catch_5
    move-exception v0

    .line 840
    :goto_10
    move-object v7, v12

    .line 841
    move-object v4, v15

    .line 842
    move-object/from16 v9, v18

    .line 843
    .line 844
    move-object/from16 v16, v22

    .line 845
    .line 846
    move-object/from16 v2, v23

    .line 847
    .line 848
    move-object/from16 v15, v24

    .line 849
    .line 850
    move-object/from16 v10, v25

    .line 851
    .line 852
    move-object/from16 v3, v26

    .line 853
    .line 854
    move-object/from16 v22, v27

    .line 855
    .line 856
    move-object/from16 v23, v28

    .line 857
    .line 858
    move-object/from16 v39, v29

    .line 859
    .line 860
    move-object/from16 v25, v30

    .line 861
    .line 862
    move-object/from16 v26, v31

    .line 863
    .line 864
    move-object/from16 v12, v32

    .line 865
    .line 866
    move-object/from16 v5, v33

    .line 867
    .line 868
    :goto_11
    move/from16 v40, v34

    .line 869
    .line 870
    goto/16 :goto_33

    .line 871
    .line 872
    :catchall_5
    move-exception v0

    .line 873
    move/from16 v20, v8

    .line 874
    .line 875
    goto :goto_e

    .line 876
    :catch_6
    move-exception v0

    .line 877
    move/from16 v20, v8

    .line 878
    .line 879
    goto :goto_10

    .line 880
    :cond_c
    move/from16 v20, v8

    .line 881
    .line 882
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .line 886
    .line 887
    const-string v8, "enforceAppSeparationCoexistenceAllowListUpdateInternal Non system app - "

    .line 888
    .line 889
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 893
    .line 894
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    .line 905
    .line 906
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .line 908
    .line 909
    const-string v8, "enforceAppSeparationCoexistenceAllowListUpdateInternal coexistenceAppsSet.contains - "

    .line 910
    .line 911
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 915
    .line 916
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result v8

    .line 920
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .line 934
    .line 935
    const-string v8, "enforceAppSeparationCoexistenceAllowListUpdateInternal prevCoexistenceAppsSet.contains - "

    .line 936
    .line 937
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 941
    .line 942
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v8

    .line 946
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 954
    .line 955
    .line 956
    if-eqz v6, :cond_d

    .line 957
    .line 958
    :try_start_10
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 959
    .line 960
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 961
    .line 962
    .line 963
    :cond_d
    :try_start_11
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 964
    .line 965
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 969
    const-string v8, " in user -"

    .line 970
    .line 971
    if-nez v0, :cond_1a

    .line 972
    .line 973
    :try_start_12
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 974
    .line 975
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 979
    move-object/from16 v35, v9

    .line 980
    .line 981
    const-string v9, "enforceAppSeparationCoexistenceAllowListUpdateInternal Uninstalling package "

    .line 982
    .line 983
    if-eqz v0, :cond_15

    .line 984
    .line 985
    if-eqz v10, :cond_14

    .line 986
    .line 987
    if-nez v21, :cond_e

    .line 988
    .line 989
    if-nez v21, :cond_12

    .line 990
    .line 991
    if-eqz v17, :cond_12

    .line 992
    .line 993
    :cond_e
    :try_start_13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 998
    .line 999
    .line 1000
    move-result v36

    .line 1001
    if-eqz v36, :cond_12

    .line 1002
    .line 1003
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v36

    .line 1007
    move-object/from16 v37, v0

    .line 1008
    .line 1009
    move-object/from16 v0, v36

    .line 1010
    .line 1011
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v36
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1017
    if-eqz v36, :cond_10

    .line 1018
    .line 1019
    move-object/from16 v36, v12

    .line 1020
    .line 1021
    :try_start_14
    iget v12, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1022
    .line 1023
    move-object/from16 v38, v15

    .line 1024
    .line 1025
    :try_start_15
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1026
    .line 1027
    invoke-virtual {v2, v12, v15}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v12

    .line 1031
    if-eqz v12, :cond_11

    .line 1032
    .line 1033
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1042
    .line 1043
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1050
    .line 1051
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v12

    .line 1058
    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    iget v12, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1062
    .line 1063
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1064
    .line 1065
    invoke-static {v12, v15}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v12

    .line 1069
    if-nez v12, :cond_f

    .line 1070
    .line 1071
    const/16 v20, 0x0

    .line 1072
    .line 1073
    goto/16 :goto_18

    .line 1074
    .line 1075
    :cond_f
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    if-eqz v0, :cond_11

    .line 1080
    .line 1081
    const/4 v12, 0x1

    .line 1082
    add-int/lit8 v34, v34, 0x1

    .line 1083
    .line 1084
    goto/16 :goto_18

    .line 1085
    .line 1086
    :catchall_6
    move-exception v0

    .line 1087
    :goto_13
    move-object/from16 v16, v0

    .line 1088
    .line 1089
    :goto_14
    move-object/from16 v9, v18

    .line 1090
    .line 1091
    move/from16 v0, v20

    .line 1092
    .line 1093
    move-object/from16 v8, v22

    .line 1094
    .line 1095
    move-object/from16 v2, v23

    .line 1096
    .line 1097
    move-object/from16 v15, v24

    .line 1098
    .line 1099
    move-object/from16 v10, v25

    .line 1100
    .line 1101
    move-object/from16 v3, v26

    .line 1102
    .line 1103
    move-object/from16 v41, v27

    .line 1104
    .line 1105
    move-object/from16 v42, v28

    .line 1106
    .line 1107
    move-object/from16 v43, v29

    .line 1108
    .line 1109
    move-object/from16 v44, v30

    .line 1110
    .line 1111
    move-object/from16 v45, v31

    .line 1112
    .line 1113
    move-object/from16 v12, v32

    .line 1114
    .line 1115
    move-object/from16 v5, v33

    .line 1116
    .line 1117
    move/from16 v46, v34

    .line 1118
    .line 1119
    move-object/from16 v7, v36

    .line 1120
    .line 1121
    move-object/from16 v4, v38

    .line 1122
    .line 1123
    goto/16 :goto_3b

    .line 1124
    .line 1125
    :catch_7
    move-exception v0

    .line 1126
    :goto_15
    move-object/from16 v9, v18

    .line 1127
    .line 1128
    move-object/from16 v16, v22

    .line 1129
    .line 1130
    move-object/from16 v2, v23

    .line 1131
    .line 1132
    move-object/from16 v15, v24

    .line 1133
    .line 1134
    move-object/from16 v10, v25

    .line 1135
    .line 1136
    move-object/from16 v3, v26

    .line 1137
    .line 1138
    move-object/from16 v22, v27

    .line 1139
    .line 1140
    move-object/from16 v23, v28

    .line 1141
    .line 1142
    move-object/from16 v39, v29

    .line 1143
    .line 1144
    move-object/from16 v25, v30

    .line 1145
    .line 1146
    move-object/from16 v26, v31

    .line 1147
    .line 1148
    move-object/from16 v12, v32

    .line 1149
    .line 1150
    move-object/from16 v5, v33

    .line 1151
    .line 1152
    move/from16 v40, v34

    .line 1153
    .line 1154
    move-object/from16 v7, v36

    .line 1155
    .line 1156
    move-object/from16 v4, v38

    .line 1157
    .line 1158
    goto/16 :goto_33

    .line 1159
    .line 1160
    :catchall_7
    move-exception v0

    .line 1161
    :goto_16
    move-object/from16 v38, v15

    .line 1162
    .line 1163
    goto :goto_13

    .line 1164
    :catch_8
    move-exception v0

    .line 1165
    :goto_17
    move-object/from16 v38, v15

    .line 1166
    .line 1167
    goto :goto_15

    .line 1168
    :cond_10
    move-object/from16 v36, v12

    .line 1169
    .line 1170
    move-object/from16 v38, v15

    .line 1171
    .line 1172
    :cond_11
    :goto_18
    move-object/from16 v12, v36

    .line 1173
    .line 1174
    move-object/from16 v0, v37

    .line 1175
    .line 1176
    move-object/from16 v15, v38

    .line 1177
    .line 1178
    goto/16 :goto_12

    .line 1179
    .line 1180
    :catchall_8
    move-exception v0

    .line 1181
    move-object/from16 v36, v12

    .line 1182
    .line 1183
    goto :goto_16

    .line 1184
    :catch_9
    move-exception v0

    .line 1185
    move-object/from16 v36, v12

    .line 1186
    .line 1187
    goto :goto_17

    .line 1188
    :cond_12
    :goto_19
    move-object/from16 v36, v12

    .line 1189
    .line 1190
    move-object/from16 v38, v15

    .line 1191
    .line 1192
    :cond_13
    :goto_1a
    move/from16 v8, v21

    .line 1193
    .line 1194
    goto/16 :goto_26

    .line 1195
    .line 1196
    :cond_14
    move-object/from16 v36, v12

    .line 1197
    .line 1198
    move-object/from16 v38, v15

    .line 1199
    .line 1200
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1201
    .line 1202
    const/4 v5, 0x1

    .line 1203
    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    .line 1204
    .line 1205
    .line 1206
    goto :goto_1a

    .line 1207
    :cond_15
    move-object/from16 v36, v12

    .line 1208
    .line 1209
    move-object/from16 v38, v15

    .line 1210
    .line 1211
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1216
    .line 1217
    .line 1218
    move-result v12

    .line 1219
    if-eqz v12, :cond_13

    .line 1220
    .line 1221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v12

    .line 1225
    check-cast v12, Landroid/content/pm/UserInfo;

    .line 1226
    .line 1227
    iget v15, v12, Landroid/content/pm/UserInfo;->id:I

    .line 1228
    .line 1229
    if-eqz v15, :cond_18

    .line 1230
    .line 1231
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 1232
    .line 1233
    .line 1234
    move-result v15

    .line 1235
    if-eqz v15, :cond_16

    .line 1236
    .line 1237
    goto :goto_1c

    .line 1238
    :cond_16
    move-object/from16 v37, v0

    .line 1239
    .line 1240
    :cond_17
    const/4 v12, 0x1

    .line 1241
    goto :goto_1d

    .line 1242
    :cond_18
    :goto_1c
    iget v15, v12, Landroid/content/pm/UserInfo;->id:I

    .line 1243
    .line 1244
    move-object/from16 v37, v0

    .line 1245
    .line 1246
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1247
    .line 1248
    invoke-virtual {v2, v15, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    if-eqz v0, :cond_17

    .line 1253
    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1263
    .line 1264
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    iget v15, v12, Landroid/content/pm/UserInfo;->id:I

    .line 1271
    .line 1272
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    .line 1281
    .line 1282
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    .line 1283
    .line 1284
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1285
    .line 1286
    invoke-static {v0, v15}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    if-nez v0, :cond_19

    .line 1291
    .line 1292
    const/4 v12, 0x1

    .line 1293
    const/16 v20, 0x0

    .line 1294
    .line 1295
    goto :goto_1d

    .line 1296
    :cond_19
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 1300
    if-eqz v0, :cond_17

    .line 1301
    .line 1302
    const/4 v12, 0x1

    .line 1303
    add-int/lit8 v34, v34, 0x1

    .line 1304
    .line 1305
    :goto_1d
    move-object/from16 v0, v37

    .line 1306
    .line 1307
    goto :goto_1b

    .line 1308
    :cond_1a
    move-object/from16 v35, v9

    .line 1309
    .line 1310
    move-object/from16 v36, v12

    .line 1311
    .line 1312
    move-object/from16 v38, v15

    .line 1313
    .line 1314
    const/4 v12, 0x1

    .line 1315
    :try_start_16
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1316
    .line 1317
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v0

    .line 1321
    if-eqz v0, :cond_13

    .line 1322
    .line 1323
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1324
    .line 1325
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v0

    .line 1329
    if-eqz v0, :cond_1b

    .line 1330
    .line 1331
    if-eqz v10, :cond_1c

    .line 1332
    .line 1333
    :cond_1b
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1334
    .line 1335
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 1339
    if-nez v0, :cond_1f

    .line 1340
    .line 1341
    if-eqz v10, :cond_1f

    .line 1342
    .line 1343
    :cond_1c
    if-nez v21, :cond_1d

    .line 1344
    .line 1345
    if-nez v21, :cond_13

    .line 1346
    .line 1347
    if-eqz v17, :cond_13

    .line 1348
    .line 1349
    :cond_1d
    :try_start_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v9

    .line 1353
    :goto_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1354
    .line 1355
    .line 1356
    move-result v0

    .line 1357
    if-eqz v0, :cond_13

    .line 1358
    .line 1359
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1364
    .line 1365
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1366
    .line 1367
    const/4 v12, 0x0

    .line 1368
    invoke-virtual {v2, v12, v15}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 1369
    .line 1370
    .line 1371
    move-result v15

    .line 1372
    if-eqz v15, :cond_1e

    .line 1373
    .line 1374
    iget v12, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1375
    .line 1376
    if-nez v12, :cond_1e

    .line 1377
    .line 1378
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .line 1382
    .line 1383
    const-string/jumbo v15, "unsuspend package "

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1390
    .line 1391
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1398
    .line 1399
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v0

    .line 1406
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 1407
    .line 1408
    .line 1409
    :try_start_18
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1410
    .line 1411
    const/4 v12, 0x0

    .line 1412
    invoke-virtual {v2, v0, v12}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 1413
    .line 1414
    .line 1415
    goto :goto_1f

    .line 1416
    :catch_a
    move-exception v0

    .line 1417
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1418
    .line 1419
    .line 1420
    :cond_1e
    :goto_1f
    const/4 v12, 0x1

    .line 1421
    goto :goto_1e

    .line 1422
    :cond_1f
    if-nez v21, :cond_20

    .line 1423
    .line 1424
    if-nez v21, :cond_13

    .line 1425
    .line 1426
    if-eqz v17, :cond_13

    .line 1427
    .line 1428
    :cond_20
    :try_start_1a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1433
    .line 1434
    .line 1435
    move-result v8

    .line 1436
    if-eqz v8, :cond_13

    .line 1437
    .line 1438
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v8

    .line 1442
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 1443
    .line 1444
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1445
    .line 1446
    const/4 v12, 0x0

    .line 1447
    invoke-virtual {v2, v12, v9}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v9

    .line 1451
    if-eqz v9, :cond_21

    .line 1452
    .line 1453
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 1454
    .line 1455
    if-nez v8, :cond_21

    .line 1456
    .line 1457
    move/from16 v8, v21

    .line 1458
    .line 1459
    :try_start_1b
    invoke-virtual {v2, v8, v5}, Lcom/android/server/pm/PersonaManagerService;->installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 1460
    .line 1461
    .line 1462
    goto :goto_23

    .line 1463
    :catchall_9
    move-exception v0

    .line 1464
    move-object/from16 v16, v0

    .line 1465
    .line 1466
    move/from16 v21, v8

    .line 1467
    .line 1468
    goto/16 :goto_14

    .line 1469
    .line 1470
    :catch_b
    move-exception v0

    .line 1471
    move/from16 v21, v8

    .line 1472
    .line 1473
    goto/16 :goto_15

    .line 1474
    .line 1475
    :cond_21
    move/from16 v8, v21

    .line 1476
    .line 1477
    goto :goto_23

    .line 1478
    :catchall_a
    move-exception v0

    .line 1479
    :goto_21
    move/from16 v8, v21

    .line 1480
    .line 1481
    goto/16 :goto_13

    .line 1482
    .line 1483
    :catch_c
    move-exception v0

    .line 1484
    :goto_22
    move/from16 v8, v21

    .line 1485
    .line 1486
    goto/16 :goto_15

    .line 1487
    .line 1488
    :goto_23
    move/from16 v21, v8

    .line 1489
    .line 1490
    goto :goto_20

    .line 1491
    :catchall_b
    move-exception v0

    .line 1492
    :goto_24
    move-object/from16 v36, v12

    .line 1493
    .line 1494
    move-object/from16 v38, v15

    .line 1495
    .line 1496
    goto :goto_21

    .line 1497
    :catch_d
    move-exception v0

    .line 1498
    :goto_25
    move-object/from16 v36, v12

    .line 1499
    .line 1500
    move-object/from16 v38, v15

    .line 1501
    .line 1502
    goto :goto_22

    .line 1503
    :catchall_c
    move-exception v0

    .line 1504
    move/from16 v20, v8

    .line 1505
    .line 1506
    goto :goto_24

    .line 1507
    :catch_e
    move-exception v0

    .line 1508
    move/from16 v20, v8

    .line 1509
    .line 1510
    goto :goto_25

    .line 1511
    :cond_22
    move/from16 v20, v8

    .line 1512
    .line 1513
    move-object/from16 v35, v9

    .line 1514
    .line 1515
    goto/16 :goto_19

    .line 1516
    .line 1517
    :goto_26
    move/from16 v21, v8

    .line 1518
    .line 1519
    move-object/from16 v5, v19

    .line 1520
    .line 1521
    move/from16 v8, v20

    .line 1522
    .line 1523
    move-object/from16 v9, v35

    .line 1524
    .line 1525
    move-object/from16 v12, v36

    .line 1526
    .line 1527
    move-object/from16 v15, v38

    .line 1528
    .line 1529
    goto/16 :goto_d

    .line 1530
    .line 1531
    :cond_23
    move/from16 v20, v8

    .line 1532
    .line 1533
    move-object/from16 v36, v12

    .line 1534
    .line 1535
    move-object/from16 v38, v15

    .line 1536
    .line 1537
    move/from16 v8, v21

    .line 1538
    .line 1539
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    .line 1541
    .line 1542
    if-eqz v6, :cond_25

    .line 1543
    .line 1544
    const/4 v3, 0x0

    .line 1545
    invoke-virtual {v6, v14, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v3

    .line 1553
    move-object/from16 v4, v38

    .line 1554
    .line 1555
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v5

    .line 1559
    move-object/from16 v7, v36

    .line 1560
    .line 1561
    invoke-static {v7, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1562
    .line 1563
    .line 1564
    if-eqz v3, :cond_24

    .line 1565
    .line 1566
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v0

    .line 1570
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1571
    .line 1572
    .line 1573
    move-result v3

    .line 1574
    if-eqz v3, :cond_24

    .line 1575
    .line 1576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v3

    .line 1580
    check-cast v3, Ljava/lang/String;

    .line 1581
    .line 1582
    move-object/from16 v9, v18

    .line 1583
    .line 1584
    invoke-static {v9, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    goto :goto_27

    .line 1588
    :cond_24
    if-eqz v5, :cond_26

    .line 1589
    .line 1590
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v0

    .line 1594
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1595
    .line 1596
    .line 1597
    move-result v3

    .line 1598
    if-eqz v3, :cond_26

    .line 1599
    .line 1600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v3

    .line 1604
    check-cast v3, Ljava/lang/String;

    .line 1605
    .line 1606
    move-object/from16 v5, v33

    .line 1607
    .line 1608
    invoke-static {v5, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    .line 1610
    .line 1611
    goto :goto_28

    .line 1612
    :cond_25
    move-object/from16 v3, v26

    .line 1613
    .line 1614
    move-object/from16 v7, v36

    .line 1615
    .line 1616
    move-object/from16 v4, v38

    .line 1617
    .line 1618
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    .line 1620
    .line 1621
    :cond_26
    sput-object v25, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1622
    .line 1623
    move-object/from16 v10, v25

    .line 1624
    .line 1625
    const/4 v3, 0x0

    .line 1626
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1631
    .line 1632
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v3

    .line 1636
    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 1637
    .line 1638
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v4

    .line 1642
    invoke-static {v7, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1643
    .line 1644
    .line 1645
    if-eqz v3, :cond_27

    .line 1646
    .line 1647
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0

    .line 1651
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1652
    .line 1653
    .line 1654
    move-result v3

    .line 1655
    if-eqz v3, :cond_27

    .line 1656
    .line 1657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v3

    .line 1661
    check-cast v3, Ljava/lang/String;

    .line 1662
    .line 1663
    move-object/from16 v12, v32

    .line 1664
    .line 1665
    invoke-static {v12, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    goto :goto_29

    .line 1669
    :cond_27
    if-eqz v4, :cond_28

    .line 1670
    .line 1671
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1676
    .line 1677
    .line 1678
    move-result v3

    .line 1679
    if-eqz v3, :cond_28

    .line 1680
    .line 1681
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v3

    .line 1685
    check-cast v3, Ljava/lang/String;

    .line 1686
    .line 1687
    move-object/from16 v15, v24

    .line 1688
    .line 1689
    invoke-static {v15, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    .line 1691
    .line 1692
    goto :goto_2a

    .line 1693
    :cond_28
    new-instance v0, Landroid/content/Intent;

    .line 1694
    .line 1695
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1696
    .line 1697
    .line 1698
    move-object/from16 v3, v23

    .line 1699
    .line 1700
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1701
    .line 1702
    .line 1703
    move/from16 v4, v20

    .line 1704
    .line 1705
    move-object/from16 v3, v22

    .line 1706
    .line 1707
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1708
    .line 1709
    .line 1710
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 1711
    .line 1712
    .line 1713
    :try_start_1c
    new-instance v0, Landroid/content/Intent;

    .line 1714
    .line 1715
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1716
    .line 1717
    .line 1718
    move-object/from16 v3, v31

    .line 1719
    .line 1720
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1721
    .line 1722
    .line 1723
    move-object/from16 v3, v30

    .line 1724
    .line 1725
    move/from16 v4, v34

    .line 1726
    .line 1727
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1728
    .line 1729
    .line 1730
    move-object/from16 v3, v28

    .line 1731
    .line 1732
    move-object/from16 v5, v29

    .line 1733
    .line 1734
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    .line 1736
    .line 1737
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1738
    .line 1739
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1740
    .line 1741
    .line 1742
    move-object/from16 v5, v27

    .line 1743
    .line 1744
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    .line 1746
    .line 1747
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v3

    .line 1754
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    .line 1756
    .line 1757
    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1758
    .line 1759
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1760
    .line 1761
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    .line 1762
    .line 1763
    .line 1764
    goto :goto_2b

    .line 1765
    :catch_f
    move-exception v0

    .line 1766
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1767
    .line 1768
    .line 1769
    :goto_2b
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1770
    .line 1771
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 1772
    .line 1773
    .line 1774
    if-nez v8, :cond_2e

    .line 1775
    .line 1776
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 1777
    .line 1778
    .line 1779
    goto/16 :goto_39

    .line 1780
    .line 1781
    :catchall_d
    move-exception v0

    .line 1782
    move/from16 v20, v8

    .line 1783
    .line 1784
    move-object v7, v12

    .line 1785
    move-object v4, v15

    .line 1786
    move-object/from16 v9, v18

    .line 1787
    .line 1788
    move-object/from16 v8, v22

    .line 1789
    .line 1790
    move-object/from16 v2, v23

    .line 1791
    .line 1792
    move-object/from16 v15, v24

    .line 1793
    .line 1794
    move-object/from16 v10, v25

    .line 1795
    .line 1796
    move-object/from16 v3, v26

    .line 1797
    .line 1798
    move-object/from16 v22, v27

    .line 1799
    .line 1800
    move-object/from16 v23, v28

    .line 1801
    .line 1802
    move-object/from16 v39, v29

    .line 1803
    .line 1804
    move-object/from16 v25, v30

    .line 1805
    .line 1806
    move-object/from16 v26, v31

    .line 1807
    .line 1808
    move-object/from16 v12, v32

    .line 1809
    .line 1810
    move-object/from16 v5, v33

    .line 1811
    .line 1812
    move-object/from16 v16, v0

    .line 1813
    .line 1814
    move/from16 v0, v20

    .line 1815
    .line 1816
    move-object/from16 v41, v22

    .line 1817
    .line 1818
    move-object/from16 v42, v23

    .line 1819
    .line 1820
    move-object/from16 v44, v25

    .line 1821
    .line 1822
    move-object/from16 v45, v26

    .line 1823
    .line 1824
    move/from16 v46, v34

    .line 1825
    .line 1826
    move-object/from16 v43, v39

    .line 1827
    .line 1828
    goto/16 :goto_3b

    .line 1829
    .line 1830
    :catch_10
    move-exception v0

    .line 1831
    move/from16 v20, v8

    .line 1832
    .line 1833
    move-object v7, v12

    .line 1834
    move-object v4, v15

    .line 1835
    move-object/from16 v9, v18

    .line 1836
    .line 1837
    move-object/from16 v8, v22

    .line 1838
    .line 1839
    move-object/from16 v2, v23

    .line 1840
    .line 1841
    move-object/from16 v15, v24

    .line 1842
    .line 1843
    move-object/from16 v10, v25

    .line 1844
    .line 1845
    move-object/from16 v3, v26

    .line 1846
    .line 1847
    move-object/from16 v22, v27

    .line 1848
    .line 1849
    move-object/from16 v23, v28

    .line 1850
    .line 1851
    move-object/from16 v39, v29

    .line 1852
    .line 1853
    move-object/from16 v25, v30

    .line 1854
    .line 1855
    move-object/from16 v26, v31

    .line 1856
    .line 1857
    move-object/from16 v12, v32

    .line 1858
    .line 1859
    move-object/from16 v5, v33

    .line 1860
    .line 1861
    move-object/from16 v16, v8

    .line 1862
    .line 1863
    goto/16 :goto_11

    .line 1864
    .line 1865
    :catchall_e
    move-exception v0

    .line 1866
    move-object v7, v12

    .line 1867
    move-object v4, v15

    .line 1868
    move-object/from16 v9, v18

    .line 1869
    .line 1870
    :goto_2d
    move-object/from16 v8, v22

    .line 1871
    .line 1872
    move-object/from16 v2, v23

    .line 1873
    .line 1874
    move-object/from16 v15, v24

    .line 1875
    .line 1876
    move-object/from16 v10, v25

    .line 1877
    .line 1878
    move-object/from16 v3, v26

    .line 1879
    .line 1880
    move-object/from16 v22, v27

    .line 1881
    .line 1882
    move-object/from16 v23, v28

    .line 1883
    .line 1884
    move-object/from16 v39, v29

    .line 1885
    .line 1886
    move-object/from16 v25, v30

    .line 1887
    .line 1888
    move-object/from16 v26, v31

    .line 1889
    .line 1890
    move-object/from16 v12, v32

    .line 1891
    .line 1892
    move-object/from16 v5, v33

    .line 1893
    .line 1894
    :goto_2e
    move-object/from16 v16, v0

    .line 1895
    .line 1896
    move-object/from16 v41, v22

    .line 1897
    .line 1898
    move-object/from16 v42, v23

    .line 1899
    .line 1900
    move-object/from16 v44, v25

    .line 1901
    .line 1902
    move-object/from16 v45, v26

    .line 1903
    .line 1904
    move-object/from16 v43, v39

    .line 1905
    .line 1906
    goto/16 :goto_8

    .line 1907
    .line 1908
    :catch_11
    move-exception v0

    .line 1909
    move-object v7, v12

    .line 1910
    move-object v4, v15

    .line 1911
    move-object/from16 v9, v18

    .line 1912
    .line 1913
    :goto_2f
    move-object/from16 v8, v22

    .line 1914
    .line 1915
    move-object/from16 v2, v23

    .line 1916
    .line 1917
    move-object/from16 v15, v24

    .line 1918
    .line 1919
    move-object/from16 v10, v25

    .line 1920
    .line 1921
    move-object/from16 v3, v26

    .line 1922
    .line 1923
    move-object/from16 v22, v27

    .line 1924
    .line 1925
    move-object/from16 v23, v28

    .line 1926
    .line 1927
    move-object/from16 v39, v29

    .line 1928
    .line 1929
    move-object/from16 v25, v30

    .line 1930
    .line 1931
    move-object/from16 v26, v31

    .line 1932
    .line 1933
    move-object/from16 v12, v32

    .line 1934
    .line 1935
    move-object/from16 v5, v33

    .line 1936
    .line 1937
    :goto_30
    move-object/from16 v16, v8

    .line 1938
    .line 1939
    goto/16 :goto_a

    .line 1940
    .line 1941
    :catchall_f
    move-exception v0

    .line 1942
    move-object v9, v8

    .line 1943
    move-object v7, v12

    .line 1944
    move-object v4, v15

    .line 1945
    goto :goto_2d

    .line 1946
    :catch_12
    move-exception v0

    .line 1947
    move-object v9, v8

    .line 1948
    move-object v7, v12

    .line 1949
    move-object v4, v15

    .line 1950
    goto :goto_2f

    .line 1951
    :catchall_10
    move-exception v0

    .line 1952
    move-object v9, v8

    .line 1953
    move-object v7, v12

    .line 1954
    move-object v4, v15

    .line 1955
    move-object/from16 v8, v22

    .line 1956
    .line 1957
    move-object/from16 v2, v23

    .line 1958
    .line 1959
    move-object/from16 v15, v24

    .line 1960
    .line 1961
    move-object/from16 v10, v25

    .line 1962
    .line 1963
    move-object/from16 v3, v26

    .line 1964
    .line 1965
    :goto_31
    move-object/from16 v22, v27

    .line 1966
    .line 1967
    move-object/from16 v23, v28

    .line 1968
    .line 1969
    move-object/from16 v39, v29

    .line 1970
    .line 1971
    move-object/from16 v25, v30

    .line 1972
    .line 1973
    move-object/from16 v26, v31

    .line 1974
    .line 1975
    move-object/from16 v12, v32

    .line 1976
    .line 1977
    goto :goto_2e

    .line 1978
    :catch_13
    move-exception v0

    .line 1979
    move-object v9, v8

    .line 1980
    move-object v7, v12

    .line 1981
    move-object v4, v15

    .line 1982
    move-object/from16 v8, v22

    .line 1983
    .line 1984
    move-object/from16 v2, v23

    .line 1985
    .line 1986
    move-object/from16 v15, v24

    .line 1987
    .line 1988
    move-object/from16 v10, v25

    .line 1989
    .line 1990
    move-object/from16 v3, v26

    .line 1991
    .line 1992
    :goto_32
    move-object/from16 v22, v27

    .line 1993
    .line 1994
    move-object/from16 v23, v28

    .line 1995
    .line 1996
    move-object/from16 v39, v29

    .line 1997
    .line 1998
    move-object/from16 v25, v30

    .line 1999
    .line 2000
    move-object/from16 v26, v31

    .line 2001
    .line 2002
    move-object/from16 v12, v32

    .line 2003
    .line 2004
    goto :goto_30

    .line 2005
    :catchall_11
    move-exception v0

    .line 2006
    move-object v3, v4

    .line 2007
    move-object v9, v8

    .line 2008
    move-object v7, v12

    .line 2009
    move-object v4, v15

    .line 2010
    move-object/from16 v8, v22

    .line 2011
    .line 2012
    move-object/from16 v2, v23

    .line 2013
    .line 2014
    move-object/from16 v15, v24

    .line 2015
    .line 2016
    move-object/from16 v10, v25

    .line 2017
    .line 2018
    goto :goto_31

    .line 2019
    :catch_14
    move-exception v0

    .line 2020
    move-object v3, v4

    .line 2021
    move-object v9, v8

    .line 2022
    move-object v7, v12

    .line 2023
    move-object v4, v15

    .line 2024
    move-object/from16 v8, v22

    .line 2025
    .line 2026
    move-object/from16 v2, v23

    .line 2027
    .line 2028
    move-object/from16 v15, v24

    .line 2029
    .line 2030
    move-object/from16 v10, v25

    .line 2031
    .line 2032
    goto :goto_32

    .line 2033
    :catchall_12
    move-exception v0

    .line 2034
    move-object v3, v4

    .line 2035
    move-object v10, v7

    .line 2036
    move-object v9, v8

    .line 2037
    move-object v7, v12

    .line 2038
    move-object v4, v15

    .line 2039
    move-object/from16 v8, v22

    .line 2040
    .line 2041
    move-object/from16 v2, v23

    .line 2042
    .line 2043
    move-object/from16 v15, v24

    .line 2044
    .line 2045
    goto :goto_31

    .line 2046
    :catch_15
    move-exception v0

    .line 2047
    move-object v3, v4

    .line 2048
    move-object v10, v7

    .line 2049
    move-object v9, v8

    .line 2050
    move-object v7, v12

    .line 2051
    move-object v4, v15

    .line 2052
    move-object/from16 v8, v22

    .line 2053
    .line 2054
    move-object/from16 v2, v23

    .line 2055
    .line 2056
    move-object/from16 v15, v24

    .line 2057
    .line 2058
    goto :goto_32

    .line 2059
    :catchall_13
    move-exception v0

    .line 2060
    move-object v10, v7

    .line 2061
    move-object v9, v8

    .line 2062
    move-object v7, v12

    .line 2063
    move-object/from16 v8, v22

    .line 2064
    .line 2065
    move-object/from16 v2, v23

    .line 2066
    .line 2067
    move-object/from16 v22, v27

    .line 2068
    .line 2069
    move-object/from16 v23, v28

    .line 2070
    .line 2071
    move-object/from16 v39, v29

    .line 2072
    .line 2073
    move-object/from16 v25, v30

    .line 2074
    .line 2075
    move-object/from16 v26, v31

    .line 2076
    .line 2077
    move-object v12, v3

    .line 2078
    move-object v3, v4

    .line 2079
    move-object v4, v15

    .line 2080
    move-object/from16 v15, v24

    .line 2081
    .line 2082
    goto/16 :goto_2e

    .line 2083
    .line 2084
    :catch_16
    move-exception v0

    .line 2085
    move-object v10, v7

    .line 2086
    move-object v9, v8

    .line 2087
    move-object v7, v12

    .line 2088
    move-object/from16 v8, v22

    .line 2089
    .line 2090
    move-object/from16 v2, v23

    .line 2091
    .line 2092
    move-object/from16 v22, v27

    .line 2093
    .line 2094
    move-object/from16 v23, v28

    .line 2095
    .line 2096
    move-object/from16 v39, v29

    .line 2097
    .line 2098
    move-object/from16 v25, v30

    .line 2099
    .line 2100
    move-object/from16 v26, v31

    .line 2101
    .line 2102
    move-object v12, v3

    .line 2103
    move-object v3, v4

    .line 2104
    move-object v4, v15

    .line 2105
    move-object/from16 v15, v24

    .line 2106
    .line 2107
    goto/16 :goto_30

    .line 2108
    .line 2109
    :goto_33
    :try_start_1d
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2110
    .line 2111
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_15

    .line 2112
    .line 2113
    .line 2114
    move-object/from16 v17, v2

    .line 2115
    .line 2116
    :try_start_1e
    const-string v2, "Exception in enforceAppSeparationCoexistenceAllowListUpdateInternal "

    .line 2117
    .line 2118
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    .line 2120
    .line 2121
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2122
    .line 2123
    .line 2124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v2

    .line 2128
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    .line 2130
    .line 2131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    .line 2132
    .line 2133
    .line 2134
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    .line 2136
    .line 2137
    if-eqz v6, :cond_2a

    .line 2138
    .line 2139
    const/4 v2, 0x0

    .line 2140
    invoke-virtual {v6, v14, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2141
    .line 2142
    .line 2143
    move-result v0

    .line 2144
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v2

    .line 2148
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v3

    .line 2152
    invoke-static {v7, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2153
    .line 2154
    .line 2155
    if-eqz v2, :cond_29

    .line 2156
    .line 2157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v0

    .line 2161
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2162
    .line 2163
    .line 2164
    move-result v2

    .line 2165
    if-eqz v2, :cond_29

    .line 2166
    .line 2167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v2

    .line 2171
    check-cast v2, Ljava/lang/String;

    .line 2172
    .line 2173
    invoke-static {v9, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    .line 2175
    .line 2176
    goto :goto_34

    .line 2177
    :cond_29
    if-eqz v3, :cond_2b

    .line 2178
    .line 2179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v0

    .line 2183
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2184
    .line 2185
    .line 2186
    move-result v2

    .line 2187
    if-eqz v2, :cond_2b

    .line 2188
    .line 2189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v2

    .line 2193
    check-cast v2, Ljava/lang/String;

    .line 2194
    .line 2195
    invoke-static {v5, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    .line 2197
    .line 2198
    goto :goto_35

    .line 2199
    :cond_2a
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    .line 2201
    .line 2202
    :cond_2b
    sput-object v10, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 2203
    .line 2204
    if-eqz v10, :cond_2d

    .line 2205
    .line 2206
    const/4 v2, 0x0

    .line 2207
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2208
    .line 2209
    .line 2210
    move-result v0

    .line 2211
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 2212
    .line 2213
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2214
    .line 2215
    .line 2216
    move-result-object v2

    .line 2217
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 2218
    .line 2219
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v3

    .line 2223
    invoke-static {v7, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2224
    .line 2225
    .line 2226
    if-eqz v2, :cond_2c

    .line 2227
    .line 2228
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v0

    .line 2232
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2233
    .line 2234
    .line 2235
    move-result v2

    .line 2236
    if-eqz v2, :cond_2c

    .line 2237
    .line 2238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v2

    .line 2242
    check-cast v2, Ljava/lang/String;

    .line 2243
    .line 2244
    invoke-static {v12, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    .line 2246
    .line 2247
    goto :goto_36

    .line 2248
    :cond_2c
    if-eqz v3, :cond_2d

    .line 2249
    .line 2250
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v0

    .line 2254
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2255
    .line 2256
    .line 2257
    move-result v2

    .line 2258
    if-eqz v2, :cond_2d

    .line 2259
    .line 2260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v2

    .line 2264
    check-cast v2, Ljava/lang/String;

    .line 2265
    .line 2266
    invoke-static {v15, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    .line 2268
    .line 2269
    goto :goto_37

    .line 2270
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    .line 2271
    .line 2272
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2273
    .line 2274
    .line 2275
    move-object/from16 v2, v17

    .line 2276
    .line 2277
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2278
    .line 2279
    .line 2280
    move-object/from16 v8, v16

    .line 2281
    .line 2282
    const/4 v2, 0x0

    .line 2283
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2284
    .line 2285
    .line 2286
    move-object/from16 v2, p0

    .line 2287
    .line 2288
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 2289
    .line 2290
    .line 2291
    :try_start_1f
    new-instance v0, Landroid/content/Intent;

    .line 2292
    .line 2293
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2294
    .line 2295
    .line 2296
    move-object/from16 v3, v26

    .line 2297
    .line 2298
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    .line 2300
    .line 2301
    move-object/from16 v3, v25

    .line 2302
    .line 2303
    move/from16 v4, v40

    .line 2304
    .line 2305
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2306
    .line 2307
    .line 2308
    move-object/from16 v3, v23

    .line 2309
    .line 2310
    move-object/from16 v5, v39

    .line 2311
    .line 2312
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    .line 2314
    .line 2315
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2316
    .line 2317
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2318
    .line 2319
    .line 2320
    move-object/from16 v5, v22

    .line 2321
    .line 2322
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    .line 2324
    .line 2325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2326
    .line 2327
    .line 2328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v3

    .line 2332
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    .line 2334
    .line 2335
    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2336
    .line 2337
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2338
    .line 2339
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_17

    .line 2340
    .line 2341
    .line 2342
    goto :goto_38

    .line 2343
    :catch_17
    move-exception v0

    .line 2344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2345
    .line 2346
    .line 2347
    :goto_38
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 2348
    .line 2349
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 2350
    .line 2351
    .line 2352
    if-nez v21, :cond_2e

    .line 2353
    .line 2354
    goto/16 :goto_2c

    .line 2355
    .line 2356
    :cond_2e
    :goto_39
    return-void

    .line 2357
    :catchall_14
    move-exception v0

    .line 2358
    move-object/from16 v8, v16

    .line 2359
    .line 2360
    move-object/from16 v2, v17

    .line 2361
    .line 2362
    :goto_3a
    move-object/from16 v41, v22

    .line 2363
    .line 2364
    move-object/from16 v42, v23

    .line 2365
    .line 2366
    move-object/from16 v44, v25

    .line 2367
    .line 2368
    move-object/from16 v45, v26

    .line 2369
    .line 2370
    move-object/from16 v43, v39

    .line 2371
    .line 2372
    move/from16 v34, v40

    .line 2373
    .line 2374
    move-object/from16 v16, v0

    .line 2375
    .line 2376
    move/from16 v0, v20

    .line 2377
    .line 2378
    goto/16 :goto_f

    .line 2379
    .line 2380
    :catchall_15
    move-exception v0

    .line 2381
    move-object/from16 v8, v16

    .line 2382
    .line 2383
    goto :goto_3a

    .line 2384
    :goto_3b
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    .line 2386
    .line 2387
    if-eqz v6, :cond_30

    .line 2388
    .line 2389
    const/4 v11, 0x0

    .line 2390
    invoke-virtual {v6, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2391
    .line 2392
    .line 2393
    move-result v3

    .line 2394
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v11

    .line 2398
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v6

    .line 2402
    invoke-static {v7, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2403
    .line 2404
    .line 2405
    if-eqz v11, :cond_2f

    .line 2406
    .line 2407
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v3

    .line 2411
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2412
    .line 2413
    .line 2414
    move-result v11

    .line 2415
    if-eqz v11, :cond_2f

    .line 2416
    .line 2417
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v11

    .line 2421
    check-cast v11, Ljava/lang/String;

    .line 2422
    .line 2423
    invoke-static {v9, v11, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    .line 2425
    .line 2426
    goto :goto_3c

    .line 2427
    :cond_2f
    if-eqz v6, :cond_31

    .line 2428
    .line 2429
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v3

    .line 2433
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2434
    .line 2435
    .line 2436
    move-result v6

    .line 2437
    if-eqz v6, :cond_31

    .line 2438
    .line 2439
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2440
    .line 2441
    .line 2442
    move-result-object v6

    .line 2443
    check-cast v6, Ljava/lang/String;

    .line 2444
    .line 2445
    invoke-static {v5, v6, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    .line 2447
    .line 2448
    goto :goto_3d

    .line 2449
    :cond_30
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    .line 2451
    .line 2452
    :cond_31
    sput-object v10, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 2453
    .line 2454
    if-eqz v10, :cond_33

    .line 2455
    .line 2456
    const/4 v3, 0x0

    .line 2457
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2458
    .line 2459
    .line 2460
    move-result v3

    .line 2461
    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 2462
    .line 2463
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v5

    .line 2467
    sget-object v6, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 2468
    .line 2469
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v4

    .line 2473
    invoke-static {v7, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2474
    .line 2475
    .line 2476
    if-eqz v5, :cond_32

    .line 2477
    .line 2478
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v3

    .line 2482
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2483
    .line 2484
    .line 2485
    move-result v5

    .line 2486
    if-eqz v5, :cond_32

    .line 2487
    .line 2488
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v5

    .line 2492
    check-cast v5, Ljava/lang/String;

    .line 2493
    .line 2494
    invoke-static {v12, v5, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    .line 2496
    .line 2497
    goto :goto_3e

    .line 2498
    :cond_32
    if-eqz v4, :cond_33

    .line 2499
    .line 2500
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2501
    .line 2502
    .line 2503
    move-result-object v3

    .line 2504
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2505
    .line 2506
    .line 2507
    move-result v4

    .line 2508
    if-eqz v4, :cond_33

    .line 2509
    .line 2510
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2511
    .line 2512
    .line 2513
    move-result-object v4

    .line 2514
    check-cast v4, Ljava/lang/String;

    .line 2515
    .line 2516
    invoke-static {v15, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    .line 2518
    .line 2519
    goto :goto_3f

    .line 2520
    :cond_33
    new-instance v3, Landroid/content/Intent;

    .line 2521
    .line 2522
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2523
    .line 2524
    .line 2525
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2526
    .line 2527
    .line 2528
    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2529
    .line 2530
    .line 2531
    move-object/from16 v2, p0

    .line 2532
    .line 2533
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 2534
    .line 2535
    .line 2536
    :try_start_20
    new-instance v0, Landroid/content/Intent;

    .line 2537
    .line 2538
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2539
    .line 2540
    .line 2541
    move-object/from16 v3, v45

    .line 2542
    .line 2543
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2544
    .line 2545
    .line 2546
    move-object/from16 v3, v44

    .line 2547
    .line 2548
    move/from16 v4, v46

    .line 2549
    .line 2550
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2551
    .line 2552
    .line 2553
    move-object/from16 v3, v42

    .line 2554
    .line 2555
    move-object/from16 v5, v43

    .line 2556
    .line 2557
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2558
    .line 2559
    .line 2560
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2561
    .line 2562
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2563
    .line 2564
    .line 2565
    move-object/from16 v5, v41

    .line 2566
    .line 2567
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    .line 2569
    .line 2570
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2571
    .line 2572
    .line 2573
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v3

    .line 2577
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    .line 2579
    .line 2580
    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2581
    .line 2582
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2583
    .line 2584
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_18

    .line 2585
    .line 2586
    .line 2587
    goto :goto_40

    .line 2588
    :catch_18
    move-exception v0

    .line 2589
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2590
    .line 2591
    .line 2592
    :goto_40
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 2593
    .line 2594
    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    .line 2595
    .line 2596
    .line 2597
    if-nez v21, :cond_34

    .line 2598
    .line 2599
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 2600
    .line 2601
    .line 2602
    :cond_34
    throw v16
.end method

.method public final enforceSeparatedAppsRemoveInternal()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PersonaManagerService"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "enforceSeparatedAppsRemoveInternal return immediately if App Separation has not been set"

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    const-string v3, "APP_SEPARATION_OUTSIDE"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v5, "APP_SEPARATION_APP_LIST"

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    new-instance v6, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_0
    const-string v5, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 51
    .line 52
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    new-instance v7, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-instance v7, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 79
    .line 80
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/16 v5, 0x40

    .line 90
    .line 91
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 110
    .line 111
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-nez v8, :cond_3

    .line 116
    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v9, "enforceSeparatedAppsRemoveInternal remove packageName "

    .line 120
    .line 121
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v8, v9, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-nez v8, :cond_4

    .line 136
    .line 137
    if-nez v3, :cond_5

    .line 138
    .line 139
    :cond_4
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_3

    .line 146
    .line 147
    if-nez v3, :cond_3

    .line 148
    .line 149
    :cond_5
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/4 v3, 0x1

    .line 160
    move v4, v3

    .line 161
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_9

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-nez v6, :cond_7

    .line 178
    .line 179
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_8

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_8
    invoke-virtual {p0, v2, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_7

    .line 191
    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v8, "enforceSeparatedAppsRemoveInternal remove use 0 packageName ? - "

    .line 195
    .line 196
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    invoke-static {v2, v5}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-nez v6, :cond_7

    .line 214
    .line 215
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    move v4, v2

    .line 219
    goto :goto_3

    .line 220
    :cond_9
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 221
    .line 222
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v1, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    const-string/jumbo v1, "removed"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    .line 235
    .line 236
    const-string v1, "com.samsung.android.appseparation"

    .line 237
    .line 238
    const-string v2, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 239
    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    .line 242
    .line 243
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 246
    .line 247
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    .line 254
    .line 255
    :goto_4
    return v4
.end method

.method public final getAdminComponentName(I)Landroid/content/ComponentName;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sget-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v4

    .line 38
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_0
    move v4, v2

    .line 42
    :goto_0
    if-nez v2, :cond_2

    .line 43
    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0

    .line 59
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;

    .line 67
    .line 68
    .line 69
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public final getAppSeparationId()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string/jumbo v3, "user"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/UserManager;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 56
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw v2
.end method

.method public final getAttributes(I)I
    .locals 1

    .line 1
    const-string v0, "getAttributes"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getAttributes(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final getContainerName(I)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "Work profile"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const/16 v3, -0x3e8

    .line 21
    .line 22
    if-eq p1, v3, :cond_b

    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string/jumbo v4, "user"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/os/UserManager;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const-string v5, "Separated Apps"

    .line 58
    .line 59
    if-eqz v4, :cond_5

    .line 60
    .line 61
    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    move-object v4, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    move-object v4, v0

    .line 75
    :goto_0
    if-eqz v4, :cond_7

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_9

    .line 82
    .line 83
    iget-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    move-object v0, v5

    .line 92
    goto :goto_1

    .line 93
    :cond_6
    iget-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    new-instance v5, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    invoke-direct {v5, v0}, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    const-string v0, "Core.RESOLVER_WORK_TAB"

    .line 124
    .line 125
    invoke-virtual {v4, v0, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :cond_9
    :goto_1
    if-nez v0, :cond_a

    .line 130
    .line 131
    iget-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 132
    .line 133
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v4, "getContainerName return value for container id:"

    .line 136
    .line 137
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " : "

    .line 144
    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v3, "PersonaManagerService"

    .line 156
    .line 157
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    .line 172
    .line 173
    return-object v0
.end method

.method public final getContainerOrder(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string/jumbo v3, "user"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-string v2, "KNOX"

    .line 30
    .line 31
    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return p1
.end method

.method public final getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDualDARProfile()Landroid/os/Bundle;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 4
    .line 5
    const-string v0, "getDualDARProfile()"

    .line 6
    .line 7
    const-string v1, "DualDARStorageHelper"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x3e8

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    const-string v0, "called by system : return true"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v2, 0x1482

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    const-string v0, "called by KnoxCore : return true"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_2
    const-string v4, "isCallerValidPlatformApp "

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    :try_start_0
    const-string v5, "android"

    .line 67
    .line 68
    invoke-interface {v4, v5, v2, v0}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    :goto_0
    const-string v0, "configValue"

    .line 75
    .line 76
    const-string v2, "clientAppPackageName"

    .line 77
    .line 78
    const-string v4, "clientAppSignature"

    .line 79
    .line 80
    const-string v5, "clientAppLocation"

    .line 81
    .line 82
    filled-new-array {v0, v2, v4, v5}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    .line 88
    invoke-direct {v7, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    const-string p0, "DUAL_DAR_CONFIG"

    .line 92
    .line 93
    invoke-virtual {v7, p0, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Landroid/content/ContentValues;

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/4 v6, 0x1

    .line 124
    if-ne v0, v6, :cond_4

    .line 125
    .line 126
    move v3, v6

    .line 127
    :cond_4
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v5, "getDualDARProfile() - isEnableDualDAR "

    .line 142
    .line 143
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string/jumbo v5, "package Name "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v5, " signature "

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v5, " packageLocation "

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    new-instance v1, Landroid/os/Bundle;

    .line 182
    .line 183
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v4, "dualdar-config"

    .line 187
    .line 188
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    const-string v3, "dualdar-config-client-package"

    .line 192
    .line 193
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v0, "dualdar-config-client-signature"

    .line 197
    .line 198
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v0, "dualdar-config-client-location"

    .line 202
    .line 203
    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object v3, v1

    .line 207
    goto :goto_2

    .line 208
    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .line 211
    .line 212
    :cond_5
    :goto_1
    const-string p0, "Error ! caller not a valid platform app"

    .line 213
    .line 214
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    :goto_2
    return-object v3
.end method

.method public final getECName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getECName(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final getFocusedLauncherId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getFocusedUser()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v2

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v3

    .line 38
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    return v2

    .line 45
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_2
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return p0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    throw p0
.end method

.method public final getFotaVersion()I
    .locals 2

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    const-string v1, "getFotaVersion is called..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v1, "fotaversion"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 p0, -0x1

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const-string v0, "PersonaManagerService"

    .line 39
    .line 40
    const-string/jumbo v1, "version - "

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return p0

    .line 47
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method

.method public final getIMEPackages()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public final getIMEPackagesAsUser(ILjava/util/Set;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "android.view.InputMethod"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x808280

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v1, v2, :cond_3

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 33
    .line 34
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 35
    .line 36
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 37
    .line 38
    const-string v4, "android.permission.BIND_INPUT_METHOD"

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 47
    .line 48
    const-string v4, "PersonaManagerService"

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v5, "getIMEPackages IME PackageName = "

    .line 55
    .line 56
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v3, v5, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    const-wide/16 v6, 0x40

    .line 71
    .line 72
    invoke-interface {v3, v5, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v3

    .line 78
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    :goto_1
    if-eqz v3, :cond_2

    .line 83
    .line 84
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v5, "getIMEPackages third party IME PackageName = "

    .line 97
    .line 98
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v3, v5, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 107
    .line 108
    move-object v3, p2

    .line 109
    check-cast v3, Ljava/util/HashSet;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    return-void
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/knox/KnoxForesightService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/KnoxForesightService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    :try_start_0
    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile"

    .line 15
    .line 16
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile4"

    .line 23
    .line 24
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    move p2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p2, v2

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    const/4 p2, -0x1

    .line 37
    :goto_0
    if-ne p2, v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSwitcherIcon(I)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    :try_start_1
    const-string p3, "com.samsung.knox.securefolder"

    .line 53
    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    if-ne p2, v3, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    return-object p0

    .line 73
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderIcon()[B

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public final getKnoxSwitcherIcon(I)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "custom-container-icon"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/16 v2, -0x2710

    .line 12
    .line 13
    if-eq p1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 34
    .line 35
    const-string v2, "knox_icon_upgraded"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    move-object v0, p0

    .line 61
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 62
    .line 63
    iget p0, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 64
    .line 65
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 66
    .line 67
    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    move-object p1, v0

    .line 74
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 85
    .line 86
    :cond_3
    return-object p1
.end method

.method public final getMoveToKnoxMenuList(I)Ljava/util/List;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    new-instance v4, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v5, "getMoveToKnoxMenuList:"

    .line 13
    .line 14
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v5, "PersonaManagerService"

    .line 25
    .line 26
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/16 v0, 0xe6

    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string/jumbo v0, "not suppored knox version"

    .line 38
    .line 39
    .line 40
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto/16 :goto_11

    .line 44
    .line 45
    :cond_0
    const/4 v6, 0x0

    .line 46
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const-string v0, "getMoveToKnoxMenuList() return empty for DO enabled"

    .line 53
    .line 54
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto/16 :goto_11

    .line 58
    .line 59
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string v8, "activity"

    .line 66
    .line 67
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Landroid/app/ActivityManager;

    .line 72
    .line 73
    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v8, ""

    .line 78
    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-nez v9, :cond_3

    .line 86
    .line 87
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_3

    .line 96
    .line 97
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 102
    .line 103
    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 104
    .line 105
    if-ne v10, v0, :cond_2

    .line 106
    .line 107
    iget-object v0, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    move-object v0, v8

    .line 111
    :goto_0
    if-eqz v0, :cond_4

    .line 112
    .line 113
    const-string v7, "getMoveToKnoxMenuList : calling pkg name : "

    .line 114
    .line 115
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_4
    sget-object v7, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 123
    .line 124
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    const-string v9, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    .line 129
    .line 130
    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-eqz v7, :cond_5

    .line 135
    .line 136
    const-string v9, "getMoveToKnoxMenuList : contact pkg name : "

    .line 137
    .line 138
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_5
    if-eqz v7, :cond_6

    .line 146
    .line 147
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_7

    .line 152
    .line 153
    :cond_6
    const-string v7, "com.samsung.android.dialer"

    .line 154
    .line 155
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    :cond_7
    const-string v0, "deprecated feature :: move to contact"

    .line 162
    .line 163
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto/16 :goto_11

    .line 167
    .line 168
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v7, "getMoveToKnoxMenuList : is WP-C : "

    .line 171
    .line 172
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 176
    .line 177
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    const/16 v7, 0x3ea

    .line 196
    .line 197
    const-string v9, "com.sec.knox.moveto.containerId"

    .line 198
    .line 199
    const-string/jumbo v10, "true"

    .line 200
    .line 201
    .line 202
    const-string v11, "com.sec.knox.moveto.containerType"

    .line 203
    .line 204
    const-string v12, "com.sec.knox.moveto.name"

    .line 205
    .line 206
    if-nez v0, :cond_d

    .line 207
    .line 208
    if-nez v2, :cond_d

    .line 209
    .line 210
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-gtz v0, :cond_d

    .line 217
    .line 218
    const-string v0, "isSecureFolderSupported | secure folder is disabled or disabled_user : "

    .line 219
    .line 220
    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    if-nez v14, :cond_9

    .line 227
    .line 228
    const-string v0, "isSecureFolderSupported | package manager is null"

    .line 229
    .line 230
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :goto_1
    move v15, v6

    .line 234
    goto :goto_3

    .line 235
    :cond_9
    const-string v15, "2"

    .line 236
    .line 237
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    const/4 v3, 0x2

    .line 242
    if-ne v15, v3, :cond_a

    .line 243
    .line 244
    const/4 v15, 0x1

    .line 245
    goto :goto_2

    .line 246
    :cond_a
    move v15, v6

    .line 247
    :goto_2
    const-string v13, "isSecureFolderSupported | secure folder config supported  : "

    .line 248
    .line 249
    invoke-static {v13, v5, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    if-eqz v15, :cond_c

    .line 253
    .line 254
    :try_start_0
    const-string v13, "com.samsung.knox.securefolder"

    .line 255
    .line 256
    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    if-eq v13, v3, :cond_b

    .line 261
    .line 262
    const/4 v3, 0x3

    .line 263
    if-ne v13, v3, :cond_c

    .line 264
    .line 265
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    .line 280
    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string v3, "isSecureFolderSupported | not found package"

    .line 283
    .line 284
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_c
    :goto_3
    if-eqz v15, :cond_d

    .line 292
    .line 293
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 294
    .line 295
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_d

    .line 300
    .line 301
    new-instance v0, Landroid/os/Bundle;

    .line 302
    .line 303
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    .line 315
    .line 316
    const/16 v3, -0x3e8

    .line 317
    .line 318
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    const-string v0, "Added permanent item :: Move to Secure Folder"

    .line 325
    .line 326
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-object v0, v10

    .line 330
    goto :goto_4

    .line 331
    :cond_d
    const/4 v0, 0x0

    .line 332
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    if-eqz v3, :cond_1c

    .line 341
    .line 342
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 343
    .line 344
    .line 345
    move-result v13

    .line 346
    if-nez v13, :cond_e

    .line 347
    .line 348
    goto/16 :goto_10

    .line 349
    .line 350
    :cond_e
    const-string v13, "com.sec.knox.moveto.isSupportMoveTo"

    .line 351
    .line 352
    const-string v14, "false"

    .line 353
    .line 354
    if-nez v2, :cond_17

    .line 355
    .line 356
    move v8, v6

    .line 357
    move/from16 v16, v8

    .line 358
    .line 359
    move/from16 v17, v16

    .line 360
    .line 361
    const/4 v15, -0x1

    .line 362
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-ge v8, v7, :cond_1d

    .line 367
    .line 368
    new-instance v7, Landroid/os/Bundle;

    .line 369
    .line 370
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v19

    .line 377
    check-cast v19, Ljava/lang/Integer;

    .line 378
    .line 379
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    .line 380
    .line 381
    .line 382
    move-result v19

    .line 383
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 384
    .line 385
    .line 386
    move-result v19

    .line 387
    if-eqz v19, :cond_12

    .line 388
    .line 389
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 390
    .line 391
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    move-object/from16 v19, v0

    .line 396
    .line 397
    const-string v0, "hide_secure_folder_flag"

    .line 398
    .line 399
    invoke-static {v2, v0, v6, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-nez v0, :cond_f

    .line 404
    .line 405
    const/4 v0, 0x1

    .line 406
    goto :goto_6

    .line 407
    :cond_f
    move v0, v6

    .line 408
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v20

    .line 416
    check-cast v20, Ljava/lang/Integer;

    .line 417
    .line 418
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    invoke-virtual {v2, v6}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-eqz v0, :cond_11

    .line 427
    .line 428
    if-eqz v2, :cond_11

    .line 429
    .line 430
    const/4 v6, -0x1

    .line 431
    if-eq v15, v6, :cond_10

    .line 432
    .line 433
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Ljava/lang/Integer;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-ge v15, v0, :cond_10

    .line 444
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v2, "Second secure folder detected with id : "

    .line 448
    .line 449
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    move-object/from16 v20, v10

    .line 467
    .line 468
    move-object/from16 v0, v19

    .line 469
    .line 470
    const/4 v2, 0x1

    .line 471
    const/16 v18, 0x3ea

    .line 472
    .line 473
    goto/16 :goto_c

    .line 474
    .line 475
    :cond_10
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    check-cast v0, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v15

    .line 485
    const-string v0, "is secure folder"

    .line 486
    .line 487
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v7, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    const/16 v2, 0x3ea

    .line 498
    .line 499
    invoke-virtual {v7, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    .line 501
    .line 502
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    check-cast v0, Ljava/lang/Integer;

    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    invoke-virtual {v7, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    .line 514
    .line 515
    move/from16 v18, v2

    .line 516
    .line 517
    move-object v0, v10

    .line 518
    goto :goto_7

    .line 519
    :cond_11
    const/4 v6, -0x1

    .line 520
    const/16 v18, 0x3ea

    .line 521
    .line 522
    new-instance v7, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v6, "Id : "

    .line 525
    .line 526
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v6, ", Enabled Secure Folder : "

    .line 537
    .line 538
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v0, ", User Running : "

    .line 545
    .line 546
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    move-object/from16 v0, v19

    .line 560
    .line 561
    const/4 v7, 0x0

    .line 562
    :goto_7
    move-object/from16 v20, v10

    .line 563
    .line 564
    goto/16 :goto_b

    .line 565
    .line 566
    :cond_12
    move-object/from16 v19, v0

    .line 567
    .line 568
    const/16 v18, 0x3ea

    .line 569
    .line 570
    const-string v0, "is knox"

    .line 571
    .line 572
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 576
    .line 577
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 581
    .line 582
    .line 583
    move-result-wide v21

    .line 584
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    check-cast v2, Ljava/lang/Integer;

    .line 593
    .line 594
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 599
    .line 600
    .line 601
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    goto :goto_8

    .line 603
    :catch_1
    const/4 v0, 0x0

    .line 604
    :goto_8
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 605
    .line 606
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    .line 611
    .line 612
    if-nez v16, :cond_15

    .line 613
    .line 614
    if-eqz v0, :cond_15

    .line 615
    .line 616
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-nez v2, :cond_15

    .line 621
    .line 622
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-nez v0, :cond_15

    .line 627
    .line 628
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 629
    .line 630
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    check-cast v2, Ljava/lang/Integer;

    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    const-string/jumbo v6, "move-file-to-container"

    .line 641
    .line 642
    .line 643
    move-object/from16 v20, v10

    .line 644
    .line 645
    const/4 v10, 0x0

    .line 646
    invoke-static {v0, v6, v10, v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_13

    .line 651
    .line 652
    move-object/from16 v0, v20

    .line 653
    .line 654
    goto :goto_9

    .line 655
    :cond_13
    move-object v0, v14

    .line 656
    :goto_9
    if-nez v17, :cond_14

    .line 657
    .line 658
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    check-cast v2, Ljava/lang/Integer;

    .line 663
    .line 664
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-virtual {v7, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    goto :goto_a

    .line 676
    :cond_14
    const-string v2, "Workspace"

    .line 677
    .line 678
    invoke-virtual {v7, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    :goto_a
    const/16 v2, 0x3e9

    .line 682
    .line 683
    invoke-virtual {v7, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 684
    .line 685
    .line 686
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    check-cast v2, Ljava/lang/Integer;

    .line 691
    .line 692
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    .line 698
    .line 699
    const/4 v2, 0x1

    .line 700
    add-int/lit8 v17, v17, 0x1

    .line 701
    .line 702
    const/16 v16, 0x1

    .line 703
    .line 704
    goto :goto_b

    .line 705
    :cond_15
    move-object/from16 v20, v10

    .line 706
    .line 707
    move-object/from16 v0, v19

    .line 708
    .line 709
    const/4 v7, 0x0

    .line 710
    :goto_b
    if-eqz v7, :cond_16

    .line 711
    .line 712
    invoke-virtual {v7, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    :cond_16
    const/4 v2, 0x1

    .line 719
    :goto_c
    add-int/2addr v8, v2

    .line 720
    move-object/from16 v10, v20

    .line 721
    .line 722
    const/4 v6, 0x0

    .line 723
    goto/16 :goto_5

    .line 724
    .line 725
    :cond_17
    move-object/from16 v20, v10

    .line 726
    .line 727
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_1d

    .line 732
    .line 733
    new-instance v0, Landroid/os/Bundle;

    .line 734
    .line 735
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 736
    .line 737
    .line 738
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-eqz v3, :cond_18

    .line 743
    .line 744
    const-string v2, "is secure folder (inside secure folder)"

    .line 745
    .line 746
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {v0, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const/16 v1, 0x3eb

    .line 757
    .line 758
    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    .line 760
    .line 761
    :goto_d
    move-object/from16 v10, v20

    .line 762
    .line 763
    :goto_e
    const/4 v1, 0x0

    .line 764
    goto :goto_f

    .line 765
    :cond_18
    const-string v3, "is knox(inside container)"

    .line 766
    .line 767
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .line 769
    .line 770
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 771
    .line 772
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 776
    .line 777
    .line 778
    move-result-wide v5

    .line 779
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 784
    .line 785
    .line 786
    :catch_2
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 787
    .line 788
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    .line 793
    .line 794
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonalModeName(I)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    if-eqz v3, :cond_19

    .line 799
    .line 800
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v5

    .line 804
    if-eqz v5, :cond_1a

    .line 805
    .line 806
    :cond_19
    const-string v3, "Personal"

    .line 807
    .line 808
    :cond_1a
    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    const/16 v3, 0x3ec

    .line 812
    .line 813
    invoke-virtual {v0, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 814
    .line 815
    .line 816
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 817
    .line 818
    const-string/jumbo v3, "move-file-to-owner"

    .line 819
    .line 820
    .line 821
    const/4 v5, 0x0

    .line 822
    invoke-static {v1, v3, v5, v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 823
    .line 824
    .line 825
    move-result v1

    .line 826
    if-eqz v1, :cond_1b

    .line 827
    .line 828
    goto :goto_d

    .line 829
    :cond_1b
    move-object v10, v14

    .line 830
    goto :goto_e

    .line 831
    :goto_f
    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    goto :goto_11

    .line 841
    :cond_1c
    :goto_10
    const-string v0, "PersonaIds list null or empty"

    .line 842
    .line 843
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .line 845
    .line 846
    :cond_1d
    :goto_11
    return-object v4
.end method

.method public final getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "getPersonaCacheValue"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "PersonaManagerService"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "getPersonaCacheValue is called for key "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/String;

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    return-object p0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getPersonaUserHasBeenShutdownBefore(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getPersonalModeName(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 11
    .line 12
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    .line 19
    .line 20
    monitor-exit p1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v2

    .line 23
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :catch_0
    const-string p1, "PersonaManagerService:FOTA"

    .line 26
    .line 27
    const-string v2, "getPersonalModeName unable to getCustomName"

    .line 28
    .line 29
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    sget-boolean p1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const-string p1, "PersonaManagerService:FOTA"

    .line 38
    .line 39
    const-string v3, "getPersonalModeName name - "

    .line 40
    .line 41
    invoke-static {v3, v2, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return-object v2
.end method

.method public final getProfileName(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v3, v3, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    .line 22
    .line 23
    monitor-exit v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v3

    .line 26
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    :catch_0
    const-string v2, "PersonaManagerService:FOTA"

    .line 29
    .line 30
    const-string v3, "getProfileName unable to getCustomName"

    .line 31
    .line 32
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    const-string p0, "PersonaManagerService"

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "getProfileName return value for container id:"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " : "

    .line 57
    .line 58
    invoke-static {v0, p1, v3, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v3
.end method

.method public final getProfiles(IZ)Ljava/util/List;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x3e8

    .line 11
    .line 12
    invoke-interface {v1, v3, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string/jumbo v5, "user"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/os/UserManager;

    .line 48
    .line 49
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_5

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 68
    .line 69
    new-instance v6, Landroid/content/pm/UserInfo;

    .line 70
    .line 71
    invoke-direct {v6, v5}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    if-nez p2, :cond_3

    .line 82
    .line 83
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 84
    .line 85
    if-eq v5, p1, :cond_1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    iput-object v5, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v5, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 96
    .line 97
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    return-object v3

    .line 110
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public final getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "PersonaPolicyManagerService"

    .line 7
    .line 8
    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "getRCPDataPolicy"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string v1, "PersonaPolicyManagerService"

    .line 9
    .line 10
    const-string v2, "getRCPDataPolicyForUser"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x3e8

    .line 24
    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v2, "com.android.systemui"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    const-string v2, "Unable to resolve SystemUI\'s UID."

    .line 43
    .line 44
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, -0x1

    .line 48
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, p0, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 56
    .line 57
    const-string p1, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final getScreenOffTimeoutLocked(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const-string v2, "knox_screen_off_timeout"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 38
    .line 39
    invoke-virtual {p0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-wide/16 p0, 0x0

    .line 45
    .line 46
    :goto_1
    const-wide/32 v1, 0x7fffffff

    .line 47
    .line 48
    .line 49
    cmp-long v1, p0, v1

    .line 50
    .line 51
    const v2, 0x7fffffff

    .line 52
    .line 53
    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    move p0, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    long-to-int p0, p0

    .line 59
    :goto_2
    if-lez p0, :cond_4

    .line 60
    .line 61
    if-ge p0, v2, :cond_4

    .line 62
    .line 63
    if-lez v0, :cond_3

    .line 64
    .line 65
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v0, p0

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    if-lez v0, :cond_6

    .line 73
    .line 74
    :goto_3
    if-lez v0, :cond_5

    .line 75
    .line 76
    const/16 p0, 0x1388

    .line 77
    .line 78
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    :cond_5
    const-string p0, "getScreenOffTimeoutLocked final: "

    .line 83
    .line 84
    const-string p1, "PersonaManagerService"

    .line 85
    .line 86
    invoke-static {v0, p0, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    return v0
.end method

.method public final getSecureFolderIcon()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "secure_folder_image_name"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const-string v1, "com.samsung.knox.securefolder"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/16 v0, 0x20

    .line 55
    .line 56
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :goto_1
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 72
    .line 73
    const/16 v2, 0x64

    .line 74
    .line 75
    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    return-object p0

    .line 83
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "Exception in getSecureFolderIcon : "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "PersonaManagerService"

    .line 91
    .line 92
    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    const/4 p0, 0x0

    .line 96
    return-object p0
.end method

.method public final getSecureFolderId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSecureFolderName()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v2, "com.samsung.knox.securefolder"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    invoke-virtual {v2, p0}, Landroid/content/pm/ApplicationInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    const-string p0, "Secure Folder"

    .line 42
    .line 43
    :goto_0
    return-object p0

    .line 44
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public final getSeparatedAppsList()Ljava/util/List;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string/jumbo v1, "separatedapps"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sub-long/2addr v2, v0

    .line 27
    const-wide/16 v0, 0x2710

    .line 28
    .line 29
    cmp-long v0, v2, v0

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 64
    .line 65
    return-object p0
.end method

.method public final getSeparationConfigfromCache()Landroid/os/Bundle;
    .locals 1

    .line 1
    const-string p0, "PersonaManagerService"

    .line 2
    .line 3
    const-string v0, "getSeparationConfigfromCache is called"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getSeparationPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    .line 1
    const-wide/16 v0, 0x40

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-interface {v3, p2, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v3

    .line 15
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    move-object v3, v2

    .line 19
    :goto_0
    if-eqz v3, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception p0

    .line 32
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_1
    if-nez v3, :cond_1

    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_1
    return-object v3
.end method

.method public final getSystemApps()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/high16 v0, 0x100000

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public final getUCMProfile()Landroid/os/Bundle;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 4
    .line 5
    const-string v0, "getUCMProfile()"

    .line 6
    .line 7
    const-string v1, "UCMStorageHelper"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UCMStorageHelper;->isCallerValidPlatformApp(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "Error ! caller not a valid platform app"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    const-string v0, "configValue"

    .line 27
    .line 28
    const-string v3, "clientAppPackageName"

    .line 29
    .line 30
    const-string v4, "clientAppSignature"

    .line 31
    .line 32
    const-string v5, "clientAppLocation"

    .line 33
    .line 34
    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    invoke-direct {v7, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const-string p0, "UCM_CONFIG"

    .line 44
    .line 45
    invoke-virtual {v7, p0, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/content/ContentValues;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v6, 0x1

    .line 76
    if-ne v0, v6, :cond_2

    .line 77
    .line 78
    move v2, v6

    .line 79
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v5, "getUCMProfile() - isEnableUCM "

    .line 94
    .line 95
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v5, ", package Name "

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v5, ", signature "

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v5, ", packageLocation "

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    new-instance v1, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v4, "ucm-config"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo v2, "ucm-config-client-package"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string/jumbo v0, "ucm-config-client-signature"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string/jumbo v0, "ucm-config-client-location"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v2, v1

    .line 162
    :goto_0
    return-object v2
.end method

.method public final getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparatedAppsList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 30
    .line 31
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 32
    .line 33
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object p0
.end method

.method public final getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 p1, 0x40

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-wide/16 v3, 0x40

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v6, "PersonaManagerService"

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v7, "getUpdatedPackageInfo Installing prev package1 - "

    .line 52
    .line 53
    invoke-static {v7, v2, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6, v2, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :goto_1
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const-string v2, "getUpdatedPackageInfo Installing prev package2 - "

    .line 99
    .line 100
    invoke-static {v2, v1, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2, v1, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    .line 113
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    move-object v1, v5

    .line 117
    :goto_3
    if-eqz v1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    move-object p0, p1

    .line 124
    :goto_4
    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p2, "getWorkspaceName return value for container id:"

    .line 6
    .line 7
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 11
    .line 12
    const-string p2, " : Work Profile"

    .line 13
    .line 14
    const-string v0, "PersonaManagerService"

    .line 15
    .line 16
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string p0, "Work Profile"

    .line 20
    .line 21
    return-object p0
.end method

.method public final hasLicensePermission(ILjava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    array-length v1, p1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    const/4 v4, 0x1

    .line 19
    if-ge v3, v1, :cond_1

    .line 20
    .line 21
    aget-object v5, p1, v3

    .line 22
    .line 23
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v7, "hasLicensePermission : packageName = "

    .line 26
    .line 27
    invoke-static {v7, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v5, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    move p1, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move p1, v2

    .line 42
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "hasLicensePermission : DO"

    .line 55
    .line 56
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getDeviceOwnerPackage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    move p1, v4

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_6

    .line 73
    :catch_0
    move-exception p2

    .line 74
    goto :goto_4

    .line 75
    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 88
    .line 89
    const-string v2, "hasLicensePermission : PO"

    .line 90
    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->getProfileOwnerPackage(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 99
    .line 100
    .line 101
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move v4, p1

    .line 106
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :goto_4
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    move v4, p1

    .line 117
    :goto_5
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 118
    .line 119
    const-string p1, "hasLicensePermission : "

    .line 120
    .line 121
    invoke-static {p1, p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    return v4

    .line 125
    :goto_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "hasPermission packageName "

    .line 4
    .line 5
    const-string v2, " permission "

    .line 6
    .line 7
    const-string v3, " userId "

    .line 8
    .line 9
    invoke-static {v1, p1, v2, p2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, p3, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final hideMultiWindows(I)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 2
    .line 3
    const-string p0, "activity_task"

    .line 4
    .line 5
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I
    .locals 11

    .line 1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "PersonaManagerService"

    .line 15
    .line 16
    const-string/jumbo v3, "processAppSeparationInstallationInternal Installing package "

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, " exist in both mode."

    .line 32
    .line 33
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    return v4

    .line 42
    :cond_0
    const-string v1, " in user 0 out return -"

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    :try_start_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/high16 v8, 0x400000

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    move v7, p1

    .line 62
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p0

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/high16 v8, 0x400000

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v10, 0x0

    .line 103
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    .line 104
    .line 105
    .line 106
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    .line 134
    .line 135
    move v4, p1

    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception p0

    .line 138
    move v4, p1

    .line 139
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :goto_1
    return v4
.end method

.method public final isAppSeparationApp(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "PersonaManagerService"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string p0, "isAppSeparationApp null"

    .line 19
    .line 20
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string p0, "isAppSeparationApp IME package name after isInputMethodApp = "

    .line 32
    .line 33
    invoke-static {p0, p1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v4

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string p0, "APP_SEPARATION_OUTSIDE"

    .line 63
    .line 64
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const-string v1, "APP_SEPARATION_APP_LIST"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    xor-int/lit8 v4, p0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    move v4, p0

    .line 101
    :goto_0
    return v4

    .line 102
    :cond_5
    :goto_1
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 103
    .line 104
    if-eqz p0, :cond_6

    .line 105
    .line 106
    const-string p0, "isAppSeparationApp Return false due to null or IndependentApp"

    .line 107
    .line 108
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_6
    return v2
.end method

.method public final isAppSeparationPresent()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :try_start_1
    const-string v2, "PersonaManagerService"

    .line 26
    .line 27
    const-string v3, "Exception in isAppSeparationPresent()"

    .line 28
    .line 29
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-nez v2, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 p0, 0x1

    .line 46
    :goto_1
    return p0

    .line 47
    :catchall_0
    move-exception v2

    .line 48
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw v2
.end method

.method public final isContainerCorePackageUID(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isContainerService(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v3, "activity"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/app/ActivityManager;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return v3

    .line 50
    :cond_0
    :try_start_1
    const-string v2, "com.samsung.knox.securefolder"

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return v3

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception p1

    .line 79
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_1
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public final isExternalStorageEnabled(I)Z
    .locals 3

    .line 1
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 2
    .line 3
    const-string/jumbo p0, "mum_container_policy"

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "ContainerDependencyWrapper"

    .line 18
    .line 19
    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 30
    .line 31
    invoke-direct {v2, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return v0
.end method

.method public final isFOTAUpgrade()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isFotaUpgradeVersionChanged()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isInSeparatedAppsOnly(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final isInputMethodApp(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(ILjava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    const-string v3, "PersonaManagerService"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "isInputMethodApp IME package name in DO = "

    .line 12
    .line 13
    invoke-static {p0, p1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(ILjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string p0, "isInputMethodApp IME package name in App Separation = "

    .line 30
    .line 31
    invoke-static {p0, p1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    return v0
.end method

.method public final isInputMethodAppAsUser(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-interface {p0, p2, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    array-length p1, p0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    if-ge v1, p1, :cond_3

    .line 22
    .line 23
    aget-object v2, p0, v1

    .line 24
    .line 25
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string v3, "android.permission.BIND_INPUT_METHOD"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const-string p0, "PersonaManagerService"

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "isAppSeparationApp IME package name = "

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_3

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    :goto_1
    return v0

    .line 67
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_3
    return v0
.end method

.method public final isKeyboardApp(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isKnoxProfileActivePasswordSufficientForParent(I)Z
    .locals 5

    .line 1
    const-string v0, "isKnoxProfileActivePasswordSufficientForParent"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "isKnoxProfileActivePasswordSufficientForParent getForbiddenStrings = "

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_5

    .line 38
    .line 39
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    const-string/jumbo p0, "password_policy"

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_2
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 63
    .line 64
    .line 65
    sget-boolean v1, Lcom/android/server/knox/ContainerDependencyWrapper;->DEBUG:Z

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    const-string v4, "ContainerDependencyWrapper"

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " getMaximumCharacterOccurences = "

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, " getMaximumCharacterSequenceLength = "

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, " getMaximumNumericSequenceLength = "

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, " getMinimumCharacterChangeLength = "

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, " getRequiredPwdPatternRestrictions = "

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-interface {p0, p1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v0, " isMultifactorAuthenticationEnabled = "

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, " getPasswordHistoryLength = "

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-interface {p0, p1, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {p0, p1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-nez v0, :cond_4

    .line 185
    .line 186
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_4

    .line 191
    .line 192
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_4

    .line 197
    .line 198
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_4

    .line 203
    .line 204
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_4

    .line 209
    .line 210
    invoke-interface {p0, p1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-nez v0, :cond_4

    .line 215
    .line 216
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_4

    .line 221
    .line 222
    invoke-interface {p0, p1, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-eqz p0, :cond_5

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :catch_1
    move-exception p0

    .line 230
    goto :goto_2

    .line 231
    :cond_4
    :goto_1
    const-string p0, "Not sufficient for knox profile active password for parent"

    .line 232
    .line 233
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    goto :goto_3

    .line 238
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    :cond_5
    :goto_3
    return v2
.end method

.method public final isKnoxWindowExist(III)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 2
    .line 3
    const-string p0, "activity_task"

    .line 4
    .line 5
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/PersonaActivityHelper;->isKnoxWindowVisibleLocked(II)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final isMoveFilesToContainerAllowed(I)Z
    .locals 2

    .line 1
    const-string p1, "PersonaManagerService"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string/jumbo v1, "restriction_property_move_files_to_profile"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string p0, "isMoveFilesToContainerAllowed : NullPointerException occurred"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    const-string p0, "isMoveFilesToContainerAllowed : SecurityException occurred"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return v0
.end method

.method public final isMoveFilesToOwnerAllowed(I)Z
    .locals 2

    .line 1
    const-string p1, "PersonaManagerService"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string/jumbo v1, "restriction_property_move_files_to_owner"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string p0, "isMoveFilesToOwnerAllowed : NullPointerException occurred"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    const-string p0, "isMoveFilesToOwnerAllowed : SecurityException occurred"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return v0
.end method

.method public final isPackageInstalledAsUser(ILjava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x40

    .line 6
    .line 7
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "isPackageInstalledAsUser exception -"

    .line 17
    .line 18
    const-string p2, "PersonaManagerService"

    .line 19
    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .locals 5

    .line 1
    const-string v0, "isPasswordSufficientAfterKnoxProfileUnification"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "isPasswordSufficientAfterKnoxProfileUnification getForbiddenStrings = "

    .line 7
    .line 8
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    .line 9
    .line 10
    const-string/jumbo v1, "user"

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/os/UserManager;

    .line 22
    .line 23
    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    .line 24
    .line 25
    :cond_0
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_7

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_1
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/os/UserManager;

    .line 59
    .line 60
    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    .line 61
    .line 62
    :cond_2
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :cond_3
    :try_start_0
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    .line 77
    .line 78
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    sput-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 88
    .line 89
    :cond_4
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    sget-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    .line 100
    .line 101
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    .line 102
    .line 103
    invoke-direct {v4, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    sget-boolean v0, Lcom/android/server/knox/ContainerDependencyWrapper;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    const-string v1, "ContainerDependencyWrapper"

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p0, " getMaximumCharacterOccurences = "

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p0, " getMaximumCharacterSequenceLength = "

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p0, " getMaximumNumericSequenceLength = "

    .line 157
    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p0, " getMinimumCharacterChangeLength = "

    .line 169
    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p0, " getRequiredPwdPatternRestrictions = "

    .line 181
    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string p0, " isMultifactorAuthenticationEnabled = "

    .line 193
    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :catch_0
    move-exception p0

    .line 213
    goto :goto_1

    .line 214
    :cond_5
    :goto_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    if-nez p0, :cond_6

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-nez p0, :cond_6

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-nez p0, :cond_6

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    if-nez p0, :cond_6

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-nez p0, :cond_6

    .line 243
    .line 244
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    if-nez p0, :cond_6

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_7

    .line 255
    .line 256
    :cond_6
    const-string p0, "Not sufficient for current parent password"

    .line 257
    .line 258
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    goto :goto_2

    .line 263
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    .line 265
    .line 266
    :cond_7
    :goto_2
    return v2
.end method

.method public final isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 p0, 0x1

    .line 6
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v2, "android.intent.action.MAIN"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "android.intent.category.LAUNCHER"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    move v5, p2

    .line 25
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    return p0

    .line 47
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    return p0
.end method

.method public final isShareClipboardDataToContainerAllowed(I)Z
    .locals 5

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    const-string v1, "inside isshareclipbd data to cnt allowed"

    .line 4
    .line 5
    const-string v2, "container mgr object is "

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    :try_start_0
    const-string v3, "inside isShareClipboardDataToContainerAllowed method"

    .line 24
    .line 25
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToContainerAllowed()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    move p0, v4

    .line 69
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    move v4, p0

    .line 85
    goto :goto_3

    .line 86
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "isShareClipboardDataToContainer : NullPointerException occurred "

    .line 89
    .line 90
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "isShareClipboardDataToContainer : SecurityException occurred "

    .line 107
    .line 108
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :goto_3
    return v4
.end method

.method public final isShareClipboardDataToOwnerAllowed(I)Z
    .locals 3

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToOwnerAllowed()Z

    .line 36
    .line 37
    .line 38
    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string p0, "allowShareClipboardDataToOwner : NullPointerException occurred"

    .line 41
    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    const-string p0, "allowShareClipboardDataToOwner : SecurityException occurred"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return v2
.end method

.method public final logDpmsKA(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "kB"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 4
    .line 5
    const/16 v2, 0x6e

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const-string/jumbo v3, "userId"

    .line 16
    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_2
    const-string p1, "logDpmsKA exception -"

    .line 65
    .line 66
    const-string v0, "PersonaManagerService"

    .line 67
    .line 68
    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    return-void
.end method

.method public final notifyApplicationChanged(Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    invoke-interface {v3, p1, v0, v1, p2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v5, 0x1

    .line 51
    move-object v4, p1

    .line 52
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-void

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 61
    .line 62
    const-string p1, "caller not system"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final notifyStatusToKspAgent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyStatusToKspAgent() "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "PersonaManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 24
    .line 25
    const-string v1, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 11

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string/jumbo v1, "onUserRemoved \n"

    .line 4
    .line 5
    .line 6
    const-string v2, "====================\n UID : "

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string/jumbo v9, "yyyy.MM.dd.HH.mm.ss"

    .line 33
    .line 34
    .line 35
    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v9, Ljava/util/Date;

    .line 39
    .line 40
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v9, -0x1

    .line 48
    if-ne p1, v9, :cond_0

    .line 49
    .line 50
    :try_start_1
    const-string v7, "fallbackToSingleUserLP"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :catch_0
    move-exception v9

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v9, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    if-eqz v9, :cond_1

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    iput-object v10, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v10, v9, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_1

    .line 78
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_1
    const/16 v9, 0x14

    .line 82
    .line 83
    :try_start_3
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception v9

    .line 89
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "\n\n"

    .line 119
    .line 120
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v2, "PersonaManagerService"

    .line 128
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    .line 143
    .line 144
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 145
    .line 146
    const/16 v2, 0x1e

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catch_2
    move-exception p0

    .line 167
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :catch_3
    move-exception p0

    .line 175
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :goto_4
    return-void

    .line 180
    :goto_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    .line 182
    .line 183
    throw p0
.end method

.method public final postPwdChangeNotificationForDeviceOwner(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final processAppSeparationCreation()V
    .locals 7

    .line 1
    const-string/jumbo v0, "processAppSeparationCreation"

    .line 2
    .line 3
    .line 4
    const-string v1, "PersonaManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    const-string/jumbo v0, "processAppSeparationCreation no app separation data found in db"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 55
    .line 56
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v5, 0x1

    .line 82
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual {p0, v6, v5}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v5, :cond_1

    .line 100
    .line 101
    if-nez v6, :cond_1

    .line 102
    .line 103
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallationInternal(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "Exception in processAppSeparationCreation "

    .line 112
    .line 113
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :cond_3
    if-nez v3, :cond_5

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lez v0, :cond_5

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_4

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Ljava/lang/String;

    .line 161
    .line 162
    const-string/jumbo v4, "processAppSeparationCreation: packageName = "

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 170
    .line 171
    const-string v1, "com.samsung.android.knox.action.PROVISION_KNOX_PROFILE"

    .line 172
    .line 173
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/high16 v1, 0x10000000

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    const-string v1, "com.samsung.android.appseparation"

    .line 182
    .line 183
    const-string v3, "com.samsung.android.appseparation.receiver.ProvisionReceiver"

    .line 184
    .line 185
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    const-string/jumbo v1, "packageNames"

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 197
    .line 198
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 199
    .line 200
    .line 201
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 202
    .line 203
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 204
    .line 205
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "APP_SEPARATION_APP_LIST"

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p0, v2, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :catch_1
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    :cond_5
    :goto_3
    return-void
.end method

.method public final processAppSeparationInstallation(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 25
    .line 26
    const/16 v1, 0x4a

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 45
    .line 46
    const/16 v1, 0x49

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v0, "processAppSeparationInstallation packageName - "

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "PersonaManagerService"

    .line 75
    .line 76
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public processAppSeparationInstallationInternal(Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string/jumbo v0, "processAppSeparationInstallationInternal Disable package in Owner space and Install package in PO - "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "processAppSeparationInstallationInternal Non system app - "

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    const-string v5, "PersonaManagerService"

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string/jumbo p0, "processAppSeparationInstallationInternal null"

    .line 25
    .line 26
    .line 27
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v4

    .line 31
    :cond_0
    const-string v3, "APP_SEPARATION_OUTSIDE"

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const-string v6, "APP_SEPARATION_APP_LIST"

    .line 39
    .line 40
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    new-instance v6, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    const-string v7, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 52
    .line 53
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_2
    new-instance v7, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v9, "processAppSeparationInstallationInternal is called for isOutside - "

    .line 76
    .line 77
    .line 78
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v9, ", packageName - "

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v6, p1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-nez v8, :cond_a

    .line 112
    .line 113
    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_3

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_3
    const/16 v8, -0x6e

    .line 122
    .line 123
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", Is in allowlist ? - "

    .line 134
    .line 135
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ",  wlAppsSet size - "

    .line 148
    .line 149
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 167
    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_4

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    if-eqz v3, :cond_5

    .line 176
    .line 177
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    :cond_5
    if-nez v3, :cond_6

    .line 186
    .line 187
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_7

    .line 194
    .line 195
    :cond_6
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_8

    .line 202
    .line 203
    :cond_7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v6, p1}, Lcom/android/server/pm/PersonaManagerService;->installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    return p0

    .line 225
    :catch_0
    move-exception p0

    .line 226
    goto :goto_1

    .line 227
    :cond_8
    if-eqz v6, :cond_9

    .line 228
    .line 229
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p0, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    if-eqz p0, :cond_9

    .line 236
    .line 237
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v6, p0}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string/jumbo v0, "processAppSeparationInstallationInternal deletePackageAsUser result - "

    .line 246
    .line 247
    .line 248
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .line 260
    .line 261
    if-nez p0, :cond_9

    .line 262
    .line 263
    return v8

    .line 264
    :cond_9
    return v4

    .line 265
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v0, "Exception in processAppSeparationAllowListInternal "

    .line 268
    .line 269
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .line 284
    .line 285
    return v8

    .line 286
    :cond_a
    :goto_2
    const-string/jumbo p0, "processAppSeparationInstallationInternal Return false due to null or IndependentApp"

    .line 287
    .line 288
    .line 289
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    return v4
.end method

.method public final readPersonaCacheLocked()V
    .locals 10

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "readPersonaCacheLocked is called..."

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/util/AtomicFile;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x2

    .line 34
    if-eq v2, v6, :cond_0

    .line 35
    .line 36
    if-eq v2, v5, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eq v2, v6, :cond_2

    .line 40
    .line 41
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "Unable to read persona cache"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_1
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    move-object v2, v3

    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :catch_1
    move-exception p0

    .line 60
    move-object v2, v3

    .line 61
    goto :goto_2

    .line 62
    :catch_2
    move-exception p0

    .line 63
    move-object v2, v3

    .line 64
    goto :goto_4

    .line 65
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eq v2, v5, :cond_3

    .line 70
    .line 71
    if-ne v2, v6, :cond_2

    .line 72
    .line 73
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v7, "cache"

    .line 84
    .line 85
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {v8, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v9, "PersonaCache entry - "

    .line 111
    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v7, " - "

    .line 119
    .line 120
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    if-eqz v3, :cond_4

    .line 135
    .line 136
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_6

    .line 142
    :catch_3
    move-exception p0

    .line 143
    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    .line 148
    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :catch_4
    move-exception p0

    .line 156
    :goto_4
    :try_start_7
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 160
    .line 161
    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_5
    :cond_4
    :goto_5
    return-void

    .line 166
    :goto_6
    if-eqz v2, :cond_5

    .line 167
    .line 168
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 169
    .line 170
    .line 171
    :catch_6
    :cond_5
    throw p0
.end method

.method public final refreshLockTimer(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "refreshLockTimer"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "RefreshLockTimer for user : "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "PersonaManagerService"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-long v0, v0

    .line 31
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const-class v2, Landroid/os/PowerManagerInternal;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/os/PowerManagerInternal;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 46
    .line 47
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromKnox(IJ)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final registerPackageReceiver()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 11
    .line 12
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 18
    .line 19
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 25
    .line 26
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 32
    .line 33
    const-string/jumbo v1, "package"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 42
    .line 43
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "registerSystemPersonaObserver"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :cond_0
    return v0
.end method

.method public final resetUCMProfile()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 4
    .line 5
    const-string v0, "UCMStorageHelper"

    .line 6
    .line 7
    const-string/jumbo v1, "resetUCMProfile()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UCMStorageHelper;->isCallerValidPlatformApp(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "Error ! caller not a valid platform app"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    const-string v3, "UCM_CONFIG"

    .line 33
    .line 34
    invoke-virtual {v1, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-lez p0, :cond_1

    .line 39
    .line 40
    const-string/jumbo p0, "resetUCMProfile triggered successfully"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo p0, "resetUCMProfile trigger failed"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return v2
.end method

.method public final sendKnoxForesightBroadcast(Landroid/content/Intent;)Z
    .locals 5

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "com.samsung.android.knox.containercore"

    .line 9
    .line 10
    const-string v1, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "com.samsung.android.knox.permission.KNOX_FORESIGHT"

    .line 24
    .line 25
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->hasLicensePermission(ILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v4, Landroid/os/UserHandle;

    .line 38
    .line 39
    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_0
    :goto_2
    return v0
.end method

.method public final sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    const-string/jumbo v0, "sendProxyMessage"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "PersonaManagerService"

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "sendProxyMessage() name:"

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " bundle:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    if-nez p3, :cond_0

    .line 26
    .line 27
    const-string/jumbo v2, "null"

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v0, "PersonaManagerService::Proxy"

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v2, "sendProxyMessage() name:"

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, " bundle:"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    if-nez p3, :cond_1

    .line 69
    .line 70
    const-string/jumbo v2, "null"

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/4 v2, 0x0

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    const-string p0, "PersonaManagerService::Proxy"

    .line 101
    .line 102
    const-string/jumbo p1, "sendProxyMessage() no container service"

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    monitor-exit v0

    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/android/server/ContainerServiceInfo;

    .line 141
    .line 142
    iget-object v4, v3, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_3

    .line 149
    .line 150
    iget v4, v3, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 151
    .line 152
    if-nez v4, :cond_3

    .line 153
    .line 154
    const-string p0, "PersonaManagerService::Proxy"

    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string/jumbo v4, "sending message:"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v4, " to "

    .line 171
    .line 172
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p0, Lcom/android/server/ContainerServiceWrapper;

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    move-object p0, v2

    .line 197
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    if-eqz p0, :cond_8

    .line 199
    .line 200
    if-nez p3, :cond_5

    .line 201
    .line 202
    new-instance p3, Landroid/os/Bundle;

    .line 203
    .line 204
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 205
    .line 206
    .line 207
    :cond_5
    const-string p1, "knox.container.proxy.EXTRA_CALLING_UID"

    .line 208
    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    const-string p1, "PersonaManagerService::Proxy"

    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string/jumbo v1, "sendProxyAgentMessage() Calling UID:"

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    const-string p1, "knox.container.proxy.EXTRA_CALLING_PID"

    .line 241
    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    const-string p1, "PersonaManagerService::Proxy"

    .line 250
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string/jumbo v1, "sendProxyAgentMessage() Calling PID:"

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :try_start_1
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    .line 274
    .line 275
    if-eqz p1, :cond_6

    .line 276
    .line 277
    invoke-interface {p1, p2, p3}, Lcom/samsung/android/knox/IContainerService;->onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 278
    .line 279
    .line 280
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    goto :goto_3

    .line 282
    :catch_0
    move-exception p1

    .line 283
    new-instance p3, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v0, "RemoteException: name:"

    .line 286
    .line 287
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string p0, " action:"

    .line 300
    .line 301
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    const-string p2, "KnoxService::ContainerServiceWrapper"

    .line 312
    .line 313
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    :cond_6
    :goto_3
    const-string p0, "PersonaManagerService::Proxy"

    .line 320
    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string/jumbo p2, "result:"

    .line 324
    .line 325
    .line 326
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    if-nez v2, :cond_7

    .line 330
    .line 331
    const-string/jumbo p2, "null"

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_7
    const-string p2, "android.intent.extra.RETURN_RESULT"

    .line 336
    .line 337
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_8
    const-string p0, "PersonaManagerService::Proxy"

    .line 357
    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string/jumbo p3, "service not found, name - "

    .line 361
    .line 362
    .line 363
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    new-instance p0, Landroid/os/Bundle;

    .line 377
    .line 378
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string p1, "android.intent.extra.RETURN_RESULT"

    .line 382
    .line 383
    const/16 p2, 0x63

    .line 384
    .line 385
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    :goto_5
    return-object v2

    .line 389
    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    throw p0
.end method

.method public final sendRequestKeyStatus(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    const-string v2, "com.sec.knox.containeragent.klms.licensekey.check"

    .line 11
    .line 12
    new-instance v3, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "container_id"

    .line 18
    .line 19
    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p1, "com.samsung.klmsagent"

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final setAppSeparationDefaultPolicy(I)V
    .locals 6

    .line 1
    const-string v0, "ContainerDependencyWrapper"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 6
    .line 7
    const-string v2, "com.samsung.android.appseparation"

    .line 8
    .line 9
    const/16 v3, 0x3e8

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-interface {v4, v3, v5}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    const-string/jumbo v4, "setOwnership"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string/jumbo v4, "setOwnership failed"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_1
    :try_start_1
    new-instance v4, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 45
    .line 46
    invoke-direct {v4}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setContainerId(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminUid(I)V

    .line 64
    .line 65
    .line 66
    const-class v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    const-string v2, "KnoxMUMContainerPolicy"

    .line 80
    .line 81
    const-string/jumbo v5, "setAppSeparationOwnership."

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_1
    move-exception v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "exception setOwnership"

    .line 97
    .line 98
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 114
    .line 115
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-interface {v1, v3, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_1

    .line 128
    .line 129
    const-string v1, "applyDefaultPolicyForAppSeparation"

    .line 130
    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_2
    move-exception v1

    .line 136
    goto :goto_3

    .line 137
    :cond_1
    const-string v1, "applyDefaultPolicyForAppSeparation failed"

    .line 138
    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :goto_4
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 147
    .line 148
    if-nez v1, :cond_2

    .line 149
    .line 150
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    sput-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 156
    .line 157
    :cond_2
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 168
    .line 169
    invoke-direct {v3, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    const/4 p1, 0x1

    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->enableNFC(ZLandroid/os/Bundle;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :catch_3
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v1, "exception applyDefaultPolicyForAppSeparation"

    .line 190
    .line 191
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    :goto_5
    return-void
.end method

.method public final setAttributes(II)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "setAttributes"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo p0, "user not found "

    .line 18
    .line 19
    .line 20
    const-string p2, "PersonaManagerService"

    .line 21
    .line 22
    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 40
    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->setAttributes(II)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final setDualDARProfile(Landroid/os/Bundle;)I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 4
    .line 5
    const-string/jumbo v0, "setDualDARProfile called "

    .line 6
    .line 7
    .line 8
    const-string v1, "DualDARStorageHelper"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const-string v0, "com.samsung.android.knox.permission.KNOX_DUAL_DAR_INTERNAL"

    .line 14
    .line 15
    const-string v2, "dualdar storage denied"

    .line 16
    .line 17
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    const-string v0, "dualdar-config-client-package"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "default"

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    move-object v0, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    const-string v2, "dualdar-config-client-signature"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    move-object v2, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_1
    const-string v4, "dualdar-config-client-location"

    .line 64
    .line 65
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :goto_2
    const-string/jumbo p1, "setDualDARProfile() - package Name "

    .line 81
    .line 82
    .line 83
    const-string v4, " signature "

    .line 84
    .line 85
    const-string v5, " location "

    .line 86
    .line 87
    invoke-static {p1, v0, v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    new-instance p1, Landroid/content/ContentValues;

    .line 102
    .line 103
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .line 105
    .line 106
    const/4 v4, 0x1

    .line 107
    const-string v5, "configValue"

    .line 108
    .line 109
    const-string v6, "clientAppPackageName"

    .line 110
    .line 111
    invoke-static {v4, p1, v5, v6, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v0, "clientAppSignature"

    .line 115
    .line 116
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "clientAppLocation"

    .line 120
    .line 121
    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    const-string p0, "DUAL_DAR_CONFIG"

    .line 130
    .line 131
    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_4

    .line 136
    .line 137
    const-string/jumbo p0, "setEnableDualDAR triggered successfully"

    .line 138
    .line 139
    .line 140
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    const-string/jumbo p0, "setEnableDualDAR trigger failed"

    .line 145
    .line 146
    .line 147
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :goto_3
    const/4 p0, 0x0

    .line 151
    :goto_4
    return p0
.end method

.method public final setFocusedLauncherId(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setFocusedUser: Focus changed - current uesr id is "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setFocusedLauncherId"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    .line 14
    .line 15
    const-string p1, "PersonaManagerService"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "setPackageSettingInstalled"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    monitor-exit v0

    .line 35
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final setPersonalModeName(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const-string p1, "PersonaManagerService:FOTA"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "setAllowCustomBadgeIcon"

    .line 10
    .line 11
    .line 12
    const-string v2, "PersonaPolicyManagerService"

    .line 13
    .line 14
    sget-object v3, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object p2, v1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string/jumbo p0, "setPersonalModeName unable to set PersonalModeName"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    const-string/jumbo p0, "setPersonalModeName name - "

    .line 40
    .line 41
    .line 42
    const-string v1, " false"

    .line 43
    .line 44
    invoke-static {p0, p2, v1, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return v0
.end method

.method public final setProfileName(ILjava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "setAllowCustomBadgeIcon"

    .line 7
    .line 8
    .line 9
    const-string v1, "PersonaPolicyManagerService"

    .line 10
    .line 11
    sget-object v2, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2, v1, v0}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object p2, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-string p0, "PersonaManagerService:FOTA"

    .line 27
    .line 28
    const-string/jumbo p1, "setProfileName unable to setProfileName"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "setRCPDataPolicy"

    .line 7
    .line 8
    .line 9
    const-string p2, "PersonaPolicyManagerService"

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0, p2, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "EDM"

    .line 17
    .line 18
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, ":"

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aget-object p3, p1, p2

    .line 32
    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const/4 v0, 0x2

    .line 38
    aget-object p1, p1, v0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    :goto_0
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    const/4 p2, 0x0

    .line 65
    :goto_1
    return p2

    .line 66
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method public final setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/16 v4, 0x3e8

    .line 12
    .line 13
    invoke-interface {v2, v4, v3}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p0, "PersonaManagerService"

    .line 20
    .line 21
    const-string/jumbo p1, "setSecureFolderPolicy failed."

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 32
    .line 33
    monitor-enter p0

    .line 34
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v2, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 44
    .line 45
    .line 46
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-eqz p2, :cond_c

    .line 48
    .line 49
    const-string p0, "DisallowPackage"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_c

    .line 56
    .line 57
    sget-object p0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 58
    .line 59
    sget-object p1, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 60
    .line 61
    const-string p1, "Exception: "

    .line 62
    .line 63
    const-string v2, "ContainerDependencyWrapper"

    .line 64
    .line 65
    new-instance v3, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v4, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    .line 76
    invoke-direct {v4, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    sput-object v4, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 80
    .line 81
    :cond_1
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 82
    .line 83
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    .line 88
    .line 89
    invoke-direct {v4, p0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    :try_start_2
    const-string p3, "application_policy"

    .line 94
    .line 95
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {p3}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 100
    .line 101
    .line 102
    move-result-object p3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    if-nez p3, :cond_2

    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_2
    :try_start_3
    invoke-interface {p3, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    goto :goto_1

    .line 112
    :catch_1
    move-exception v5

    .line 113
    goto :goto_0

    .line 114
    :catch_2
    move-exception v5

    .line 115
    move-object p3, p0

    .line 116
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v5, v6, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    if-eqz p0, :cond_4

    .line 125
    .line 126
    move v5, v1

    .line 127
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-ge v5, v6, :cond_4

    .line 132
    .line 133
    move v6, v1

    .line 134
    :goto_3
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Lcom/samsung/android/knox/application/AppControlInfo;

    .line 139
    .line 140
    iget-object v7, v7, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-ge v6, v7, :cond_3

    .line 147
    .line 148
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Lcom/samsung/android/knox/application/AppControlInfo;

    .line 153
    .line 154
    iget-object v7, v7, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    check-cast v7, Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    add-int/2addr v6, v0

    .line 170
    goto :goto_3

    .line 171
    :cond_3
    add-int/2addr v5, v0

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    const-string p0, "com.android.vending"

    .line 174
    .line 175
    const-string v5, "com.sec.android.app.samsungapps"

    .line 176
    .line 177
    filled-new-array {p0, v5}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    move v5, v1

    .line 182
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    const/4 v7, -0x1

    .line 187
    if-ge v5, v6, :cond_9

    .line 188
    .line 189
    move v6, v1

    .line 190
    move v8, v6

    .line 191
    :goto_5
    const/4 v9, 0x2

    .line 192
    if-ge v6, v9, :cond_6

    .line 193
    .line 194
    aget-object v9, p0, v6

    .line 195
    .line 196
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_5

    .line 205
    .line 206
    move v8, v0

    .line 207
    :cond_5
    add-int/2addr v6, v0

    .line 208
    goto :goto_5

    .line 209
    :cond_6
    if-nez v8, :cond_8

    .line 210
    .line 211
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_7

    .line 220
    .line 221
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    check-cast v6, Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_7
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    check-cast v6, Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    :cond_8
    :goto_6
    add-int/2addr v5, v0

    .line 249
    goto :goto_4

    .line 250
    :cond_9
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_c

    .line 263
    .line 264
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Ljava/util/Map$Entry;

    .line 269
    .line 270
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Ljava/lang/Integer;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eq v1, v7, :cond_b

    .line 281
    .line 282
    if-eq v1, v0, :cond_a

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_a
    :try_start_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Ljava/lang/String;

    .line 290
    .line 291
    invoke-interface {p3, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 292
    .line 293
    .line 294
    goto :goto_7

    .line 295
    :catch_3
    move-exception p2

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {p2, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_b
    :try_start_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    check-cast p2, Ljava/lang/String;

    .line 310
    .line 311
    invoke-interface {p3, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catch_4
    move-exception p2

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-static {p2, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_c
    :goto_8
    return v0

    .line 326
    :catchall_0
    move-exception p1

    .line 327
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 328
    throw p1

    .line 329
    :goto_9
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 330
    .line 331
    .line 332
    return v1
.end method

.method public final setUCMProfile(Landroid/os/Bundle;)I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 4
    .line 5
    const-string/jumbo v0, "setUCMProfile called"

    .line 6
    .line 7
    .line 8
    const-string v1, "UCMStorageHelper"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const-string v0, "com.samsung.android.knox.permission.KNOX_UCM_INTERNAL"

    .line 14
    .line 15
    const-string/jumbo v2, "ucm storage denied"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    const-string/jumbo v2, "ucm-config-client-package"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string/jumbo v4, "ucm-config-client-location"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v5, "ucm-config-client-signature"

    .line 41
    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string/jumbo v3, "setUCMProfile() - package Name "

    .line 79
    .line 80
    .line 81
    const-string v4, " signature "

    .line 82
    .line 83
    const-string v5, " location "

    .line 84
    .line 85
    invoke-static {v3, v0, v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroid/content/ContentValues;

    .line 100
    .line 101
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    const-string v5, "configValue"

    .line 106
    .line 107
    const-string v6, "clientAppPackageName"

    .line 108
    .line 109
    invoke-static {v4, v3, v5, v6, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "clientAppSignature"

    .line 113
    .line 114
    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "clientAppLocation"

    .line 118
    .line 119
    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 123
    .line 124
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    const-string p0, "UCM_CONFIG"

    .line 128
    .line 129
    invoke-virtual {p1, p0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_2

    .line 134
    .line 135
    const-string/jumbo p0, "setEnableUCM triggered successfully"

    .line 136
    .line 137
    .line 138
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo p0, "setEnableUCM trigger failed"

    .line 143
    .line 144
    .line 145
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :goto_0
    const/4 v0, 0x0

    .line 149
    :goto_1
    return v0
.end method

.method public final startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "startActivityThroughPersona"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "startActivityThroughPersona Intent ="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "PersonaManagerService"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return v0
.end method

.method public final startCountrySelectionActivity(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/high16 v2, 0x10000000

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v3, "com.sec.android.app.secsetupwizard.NET_TSS_SETUP"

    .line 17
    .line 18
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_4

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :catch_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v3, "com.sec.android.app.secsetupwizard.TSS_SETUP"

    .line 37
    .line 38
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v3, "com.sec.android.app.secsetupwizard.COUNTRY_SELECTION"

    .line 53
    .line 54
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 66
    .line 67
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_3
    return-void

    .line 81
    :goto_4
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public final startTermsActivity()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v3, "com.sec.android.app.secsetupwizard.TERMS"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/high16 v3, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v2

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception v2

    .line 39
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    return-void

    .line 46
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw v2
.end method

.method public final suspendAppsInOwner(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "suspendAppInOwner is called"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", suspend - "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "PersonaManagerService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const-string/jumbo p0, "suspendAppInOwner()"

    .line 36
    .line 37
    .line 38
    const-string p2, ", do not suspend keyboard app- "

    .line 39
    .line 40
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 45
    .line 46
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    const-string p0, "No appseparation present"

    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    .line 59
    .line 60
    const-string v3, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    const-string p0, "Package is allowed for both users do not suspend: "

    .line 85
    .line 86
    invoke-static {p0, p1, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAPM:Landroid/app/ApplicationPackageManager;

    .line 95
    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/app/ApplicationPackageManager;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAPM:Landroid/app/ApplicationPackageManager;

    .line 109
    .line 110
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mAPM:Landroid/app/ApplicationPackageManager;

    .line 111
    .line 112
    const-string v7, ""

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    move v4, p2

    .line 117
    invoke-virtual/range {v2 .. v7}, Landroid/app/ApplicationPackageManager;->setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    if-eqz p2, :cond_5

    .line 121
    .line 122
    const-string p2, "Suspend Package:"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception p0

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    const-string p2, "Unsuspend Package:"

    .line 128
    .line 129
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    new-instance v6, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 162
    .line 163
    if-nez p2, :cond_6

    .line 164
    .line 165
    new-instance p2, Lcom/android/server/pm/BroadcastHelper;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 170
    .line 171
    invoke-direct {p2, v0}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    .line 172
    .line 173
    .line 174
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 175
    .line 176
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 177
    .line 178
    const/4 v8, 0x0

    .line 179
    const/4 v5, 0x1

    .line 180
    const/4 v7, 0x0

    .line 181
    move-object v4, p1

    .line 182
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :goto_2
    return-void
.end method

.method public final systemReady()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string/jumbo v0, "systemReady"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v4, "PersonaManagerService"

    .line 12
    .line 13
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v5, "device_policy"

    .line 19
    .line 20
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 25
    .line 26
    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 27
    .line 28
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string/jumbo v5, "power"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/android/server/pm/PersonaServiceProxy;

    .line 43
    .line 44
    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v5, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 55
    .line 56
    new-instance v5, Ljava/lang/Object;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    .line 62
    .line 63
    iput-boolean v2, v0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 64
    .line 65
    new-instance v6, Lcom/android/server/pm/PersonaServiceProxy$2;

    .line 66
    .line 67
    invoke-direct {v6, v0, v2}, Lcom/android/server/pm/PersonaServiceProxy$2;-><init>(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 68
    .line 69
    .line 70
    new-instance v12, Lcom/android/server/pm/PersonaServiceProxy$2;

    .line 71
    .line 72
    invoke-direct {v12, v0, v3}, Lcom/android/server/pm/PersonaServiceProxy$2;-><init>(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 73
    .line 74
    .line 75
    iput-object v11, v0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    const-string/jumbo v5, "user"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v11, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/os/UserManager;

    .line 85
    .line 86
    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 87
    .line 88
    const-string v13, "keyguard"

    .line 89
    .line 90
    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Landroid/app/KeyguardManager;

    .line 95
    .line 96
    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 97
    .line 98
    const-string/jumbo v5, "trust"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Landroid/app/trust/TrustManager;

    .line 106
    .line 107
    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 108
    .line 109
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    .line 110
    .line 111
    invoke-direct {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    .line 116
    const-string/jumbo v5, "persona"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    .line 124
    .line 125
    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 126
    .line 127
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    iput-boolean v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 132
    .line 133
    new-instance v8, Landroid/content/IntentFilter;

    .line 134
    .line 135
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v5, "android.intent.action.USER_STARTED"

    .line 139
    .line 140
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v5, "android.intent.action.USER_REMOVED"

    .line 144
    .line 145
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v5, "android.intent.action.USER_ADDED"

    .line 149
    .line 150
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    const/4 v10, 0x0

    .line 157
    move-object v5, v11

    .line 158
    move-object v7, v14

    .line 159
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    new-instance v8, Landroid/content/IntentFilter;

    .line 163
    .line 164
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    .line 168
    .line 169
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 173
    .line 174
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 178
    .line 179
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string/jumbo v5, "package"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v15, "com.samsung.android.knox.containercore"

    .line 189
    .line 190
    invoke-virtual {v8, v15, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    move-object v5, v11

    .line 194
    move-object v6, v12

    .line 195
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    new-instance v5, Lcom/android/server/pm/PersonaServiceProxy$1;

    .line 199
    .line 200
    invoke-direct {v5, v0}, Lcom/android/server/pm/PersonaServiceProxy$1;-><init>(Lcom/android/server/pm/PersonaServiceProxy;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v11, v5}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 204
    .line 205
    .line 206
    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    .line 207
    .line 208
    const-string v0, "com.samsung.android.aliveprivacy"

    .line 209
    .line 210
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    .line 216
    const-string v0, "Quick Switch is supported"

    .line 217
    .line 218
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    new-instance v0, Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 222
    .line 223
    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 224
    .line 225
    invoke-direct {v0, v5, v1}, Lcom/android/server/knox/SeamLessSwitchHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V

    .line 226
    .line 227
    .line 228
    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 229
    .line 230
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Landroid/app/KeyguardManager;

    .line 237
    .line 238
    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 239
    .line 240
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 241
    .line 242
    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 245
    .line 246
    .line 247
    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 248
    .line 249
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 250
    .line 251
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 256
    .line 257
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    .line 258
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 260
    .line 261
    .line 262
    move-result-wide v5

    .line 263
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    const-string/jumbo v6, "separatedapps"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 274
    .line 275
    const/16 v5, 0xf

    .line 276
    .line 277
    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 282
    .line 283
    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    .line 285
    .line 286
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    new-instance v5, Lcom/android/server/pm/PersonaManagerService$2;

    .line 289
    .line 290
    const/4 v6, 0x5

    .line 291
    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 292
    .line 293
    .line 294
    new-instance v6, Landroid/content/IntentFilter;

    .line 295
    .line 296
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 297
    .line 298
    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    .line 305
    .line 306
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 310
    .line 311
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string v5, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 315
    .line 316
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string v5, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 320
    .line 321
    const-string v6, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 322
    .line 323
    const-string v7, "android.intent.action.USER_STOPPED"

    .line 324
    .line 325
    const-string v8, "android.intent.action.USER_UNLOCKED"

    .line 326
    .line 327
    invoke-static {v0, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v7, "android.intent.action.USER_PRESENT"

    .line 331
    .line 332
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v7, "android.intent.action.SCREEN_OFF"

    .line 336
    .line 337
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string v8, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 341
    .line 342
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 346
    .line 347
    iget-object v9, v1, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 348
    .line 349
    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    .line 351
    .line 352
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Lcom/android/server/pm/PersonaManagerService$1;

    .line 357
    .line 358
    invoke-interface {v0, v8, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .line 360
    .line 361
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 364
    .line 365
    .line 366
    :goto_0
    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 367
    .line 368
    const-string v8, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 369
    .line 370
    invoke-static {v0, v8}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    iget-object v9, v1, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 377
    .line 378
    const/4 v10, 0x2

    .line 379
    invoke-virtual {v8, v9, v0, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 380
    .line 381
    .line 382
    new-instance v0, Landroid/content/IntentFilter;

    .line 383
    .line 384
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    .line 388
    .line 389
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    .line 393
    .line 394
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    .line 398
    .line 399
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    .line 403
    .line 404
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 408
    .line 409
    iget-object v9, v1, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 410
    .line 411
    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 412
    .line 413
    const/16 v22, 0x2

    .line 414
    .line 415
    const/16 v20, 0x0

    .line 416
    .line 417
    const/16 v21, 0x0

    .line 418
    .line 419
    move-object/from16 v16, v8

    .line 420
    .line 421
    move-object/from16 v17, v9

    .line 422
    .line 423
    move-object/from16 v19, v0

    .line 424
    .line 425
    invoke-virtual/range {v16 .. v22}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    move v8, v2

    .line 433
    move v9, v8

    .line 434
    :goto_1
    move-object v10, v0

    .line 435
    check-cast v10, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 438
    .line 439
    .line 440
    move-result v11

    .line 441
    if-ge v8, v11, :cond_2

    .line 442
    .line 443
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 448
    .line 449
    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 450
    .line 451
    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    .line 452
    .line 453
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 457
    .line 458
    .line 459
    move-result v11

    .line 460
    if-eqz v11, :cond_1

    .line 461
    .line 462
    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 463
    .line 464
    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 465
    .line 466
    .line 467
    move-result v10

    .line 468
    if-nez v10, :cond_1

    .line 469
    .line 470
    move v9, v3

    .line 471
    :cond_1
    add-int/2addr v8, v3

    .line 472
    goto :goto_1

    .line 473
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-nez v0, :cond_3

    .line 478
    .line 479
    if-eqz v9, :cond_4

    .line 480
    .line 481
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    .line 482
    .line 483
    .line 484
    :cond_4
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 485
    .line 486
    const-string v3, "android.intent.action.USER_INFO_CHANGED"

    .line 487
    .line 488
    invoke-static {v5, v6, v0, v7, v3}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 489
    .line 490
    .line 491
    move-result-object v11

    .line 492
    const-string/jumbo v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 493
    .line 494
    .line 495
    const-string/jumbo v3, "samsung.knox.intent.action.rcp.MOVEMENT"

    .line 496
    .line 497
    .line 498
    const-string/jumbo v5, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    .line 499
    .line 500
    .line 501
    const-string v6, "com.samsung.android.knox.profilepolicy.intent.action.update"

    .line 502
    .line 503
    invoke-static {v11, v0, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 507
    .line 508
    iget-object v9, v1, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 509
    .line 510
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 511
    .line 512
    const/4 v14, 0x2

    .line 513
    const/4 v12, 0x0

    .line 514
    const/4 v13, 0x0

    .line 515
    invoke-virtual/range {v8 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 516
    .line 517
    .line 518
    const-string/jumbo v0, "registerContentObserver - 0"

    .line 519
    .line 520
    .line 521
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 525
    .line 526
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    const-string v3, "knox_screen_off_timeout"

    .line 531
    .line 532
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

    .line 537
    .line 538
    const/4 v6, -0x1

    .line 539
    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 540
    .line 541
    .line 542
    const-string v3, "clearCrossProfileIntentFilters Exception: "

    .line 543
    .line 544
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 550
    .line 551
    .line 552
    move-result-wide v5

    .line 553
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    :try_start_1
    invoke-interface {v0, v2, v15}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    .line 559
    .line 560
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 561
    .line 562
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    .line 567
    .line 568
    goto :goto_3

    .line 569
    :catchall_0
    move-exception v0

    .line 570
    goto/16 :goto_7

    .line 571
    .line 572
    :catch_1
    move-exception v0

    .line 573
    move-object v7, v0

    .line 574
    :try_start_2
    const-string v0, "PersonaManagerService:FOTA"

    .line 575
    .line 576
    new-instance v8, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    .line 590
    .line 591
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 592
    .line 593
    goto :goto_2

    .line 594
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 595
    .line 596
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    if-eqz v0, :cond_5

    .line 601
    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_5

    .line 615
    .line 616
    const-string v0, "Device is super locked - start lock screen"

    .line 617
    .line 618
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    .line 622
    .line 623
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 624
    .line 625
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    const-string v5, "com.samsung.knox.securefolder"

    .line 630
    .line 631
    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    check-cast v0, Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 642
    .line 643
    .line 644
    goto :goto_4

    .line 645
    :catch_2
    const-string v0, "Cannot get UID for securefolder"

    .line 646
    .line 647
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    :goto_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    .line 651
    .line 652
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 653
    .line 654
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    invoke-virtual {v3, v15, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    check-cast v0, Ljava/util/ArrayList;

    .line 667
    .line 668
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 669
    .line 670
    .line 671
    goto :goto_5

    .line 672
    :catch_3
    const-string v0, "Cannot get UID for KnoxCore package"

    .line 673
    .line 674
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    :goto_5
    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    .line 678
    .line 679
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 680
    .line 681
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    const-string v3, "com.samsung.android.appseparation"

    .line 686
    .line 687
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    check-cast v0, Ljava/util/ArrayList;

    .line 696
    .line 697
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 698
    .line 699
    .line 700
    goto :goto_6

    .line 701
    :catch_4
    const-string v0, "Cannot get UID for App separation"

    .line 702
    .line 703
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    :goto_6
    return-void

    .line 707
    :goto_7
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    .line 714
    .line 715
    throw v0
.end method

.method public final updateAppsListOnlyPresentInSeparatedApps()V
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    :try_start_0
    sget-object v4, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_4

    .line 24
    .line 25
    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v6, "device_policy"

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_0
    :goto_0
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 57
    .line 58
    :cond_1
    const-string v0, "APP_SEPARATION_OUTSIDE"

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    new-instance v6, Ljava/util/HashSet;

    .line 66
    .line 67
    const-string v7, "APP_SEPARATION_APP_LIST"

    .line 68
    .line 69
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Ljava/util/HashSet;

    .line 77
    .line 78
    const-string v8, "APP_SEPARATION_COEXISTANCE_LIST"

    .line 79
    .line 80
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    new-instance v4, Ljava/util/HashSet;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSystemApps()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iput-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 101
    .line 102
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v8, v5, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_4

    .line 121
    .line 122
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 127
    .line 128
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-nez v9, :cond_2

    .line 135
    .line 136
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_2

    .line 141
    .line 142
    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-nez v9, :cond_2

    .line 147
    .line 148
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-eq v0, v9, :cond_2

    .line 153
    .line 154
    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-nez v9, :cond_2

    .line 161
    .line 162
    const-string v9, "com.samsung.android.knox.kpu"

    .line 163
    .line 164
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-eqz v9, :cond_3

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 176
    .line 177
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :goto_3
    :try_start_1
    const-string v4, "PersonaManagerService"

    .line 185
    .line 186
    const-string v5, "Exception in getSeparatedAppsList"

    .line 187
    .line 188
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :goto_4
    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    .line 198
    .line 199
    return-void

    .line 200
    :goto_5
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    .line 207
    .line 208
    throw v0
.end method

.method public final updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "updatePersonaCache"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_6

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    const-string v2, "fwversion"

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_5

    .line 26
    .line 27
    const-string v2, "fotaversion"

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string v0, "PersonaManagerService"

    .line 48
    .line 49
    const-string v2, "Remove cache entry request"

    .line 50
    .line 51
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    const-string v0, "PersonaManagerService"

    .line 74
    .line 75
    const-string v2, "Add cache entry request"

    .line 76
    .line 77
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move v0, v3

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    const-string v0, "PersonaManagerService"

    .line 97
    .line 98
    const-string/jumbo v2, "update cache entry request"

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move v0, v3

    .line 115
    :cond_3
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 118
    .line 119
    .line 120
    :cond_4
    monitor-exit v1

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    :goto_1
    monitor-exit v1

    .line 123
    return v0

    .line 124
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0

    .line 126
    :cond_6
    :goto_3
    const-string p0, "PersonaManagerService"

    .line 127
    .line 128
    const-string/jumbo p1, "updatePersonaCache status - "

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    return v0
.end method

.method public final updateProfileActivityTimeFromKnox(IJ)V
    .locals 1

    .line 1
    const-string/jumbo v0, "updateProfileActivityTimeFromKnox"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManagerInternal;->updateProfileActivityTimeFromKnox(IJ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final writePersonaCacheLocked()V
    .locals 10

    .line 1
    const-string v0, "cache"

    .line 2
    .line 3
    const-string/jumbo v1, "personacache"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "writeUsersWithPersona() is called..."

    .line 7
    .line 8
    .line 9
    const-string v3, "PersonaManagerService"

    .line 10
    .line 11
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/util/AtomicFile;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 27
    .line 28
    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    .line 30
    .line 31
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    .line 32
    .line 33
    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v8, "utf-8"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v7, v4, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    .line 46
    .line 47
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    invoke-virtual {v7, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/String;

    .line 89
    .line 90
    const-string/jumbo v9, "volatile."

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v7, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v4, v8, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-object v4, v5

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v7, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_1
    :goto_1
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 123
    .line 124
    .line 125
    const-string/jumbo p0, "writePersonaCacheLocked() Error writing persona cache list"

    .line 126
    .line 127
    .line 128
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void
.end method
