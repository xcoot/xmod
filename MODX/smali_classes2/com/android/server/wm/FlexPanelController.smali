.class public final Lcom/android/server/wm/FlexPanelController;
.super Lcom/android/server/wm/PackagesChange;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDumpInterface:Lcom/android/server/wm/FlexPanelController$$ExternalSyntheticLambda1;

.field public final mFlexModeAppList:Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

.field public final mFlexPanelEnabledList:Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/FlexPanelController;->mFlexModeAppList:Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    .line 12
    .line 13
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/FlexPanelController;->mFlexPanelEnabledList:Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    .line 21
    .line 22
    new-instance p1, Lcom/android/server/wm/FlexPanelController$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/android/server/wm/FlexPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/FlexPanelController;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 28
    .line 29
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->MULTI_DISPLAY_DIRECTORY:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "SupportsFlexPanelPackageMap"

    .line 32
    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    invoke-direct {v0, v3, v1, v2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/wm/FlexPanelController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 39
    .line 40
    filled-new-array {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x0

    .line 45
    aget-object p1, p1, v0

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/wm/PackagesChange$2;

    .line 48
    .line 49
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/PackagesChange$2;-><init>(Lcom/android/server/wm/PackagesChange;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    .line 53
    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static isFlexPanelTopEnabled(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lcom/android/server/wm/FlexPanelController$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final getSupportsFlexPanel(ILjava/lang/String;)I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mCachedHomeActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_f

    .line 31
    .line 32
    :cond_0
    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/PackagesChange;->getLauncherActivities(ILjava/lang/String;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    goto/16 :goto_e

    .line 78
    .line 79
    :catch_0
    move-exception v1

    .line 80
    goto :goto_3

    .line 81
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 91
    .line 92
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-interface {v4, p1, v1}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(ILjava/util/List;)Landroid/content/ComponentName;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 124
    .line 125
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    :goto_2
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_3
    :try_start_4
    const-string v4, "PackageSettingsManager"

    .line 136
    .line 137
    const-string v5, "Fail to cache home activities"

    .line 138
    .line 139
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :goto_4
    :try_start_5
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    monitor-exit p0

    .line 154
    :goto_5
    if-eqz v0, :cond_3

    .line 155
    .line 156
    const/16 p0, 0x26

    .line 157
    .line 158
    return p0

    .line 159
    :cond_3
    const/4 v0, 0x0

    .line 160
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-wide/16 v2, 0x80

    .line 165
    .line 166
    invoke-interface {v1, p2, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 173
    .line 174
    if-eqz v1, :cond_4

    .line 175
    .line 176
    const-string v2, "com.samsung.android.unsupports_flexpanel"

    .line 177
    .line 178
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 179
    .line 180
    .line 181
    move-result v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 182
    if-eqz v1, :cond_4

    .line 183
    .line 184
    goto/16 :goto_a

    .line 185
    .line 186
    :catch_1
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackagesChange;->getLauncherActivities(ILjava/lang/String;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 194
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_5

    .line 202
    .line 203
    goto/16 :goto_a

    .line 204
    .line 205
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 206
    .line 207
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 208
    .line 209
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 210
    .line 211
    .line 212
    monitor-enter v4

    .line 213
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 214
    .line 215
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 216
    .line 217
    const/4 v2, 0x1

    .line 218
    if-eqz v1, :cond_7

    .line 219
    .line 220
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 221
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 222
    .line 223
    .line 224
    :cond_6
    :goto_6
    move v0, v2

    .line 225
    goto/16 :goto_a

    .line 226
    .line 227
    :catchall_2
    move-exception p0

    .line 228
    goto/16 :goto_d

    .line 229
    .line 230
    :cond_7
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 231
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 237
    .line 238
    iget-object v1, v1, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 239
    .line 240
    if-eqz v1, :cond_8

    .line 241
    .line 242
    invoke-virtual {v1, p2, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    move v1, v2

    .line 249
    goto :goto_7

    .line 250
    :cond_8
    move v1, v0

    .line 251
    :goto_7
    if-eqz v1, :cond_9

    .line 252
    .line 253
    :goto_8
    goto :goto_6

    .line 254
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 255
    .line 256
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 257
    .line 258
    iget-object v1, v1, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 259
    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_a

    .line 267
    .line 268
    move v1, v2

    .line 269
    goto :goto_9

    .line 270
    :cond_a
    move v1, v0

    .line 271
    :goto_9
    if-eqz v1, :cond_b

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_e

    .line 283
    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 289
    .line 290
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    instance-of v4, v3, Landroid/content/pm/ActivityInfo;

    .line 295
    .line 296
    if-eqz v4, :cond_c

    .line 297
    .line 298
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_c

    .line 305
    .line 306
    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 307
    .line 308
    iget v1, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 309
    .line 310
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_d

    .line 315
    .line 316
    iget v1, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 317
    .line 318
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_6

    .line 323
    .line 324
    :cond_d
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_e

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_e
    :goto_a
    if-nez v0, :cond_f

    .line 332
    .line 333
    const/16 p0, 0x46

    .line 334
    .line 335
    return p0

    .line 336
    :cond_f
    const/4 v0, 0x5

    .line 337
    invoke-static {p1, v0, p2}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(IILjava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 342
    .line 343
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 344
    .line 345
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 346
    .line 347
    .line 348
    monitor-enter v0

    .line 349
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/FlexPanelController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 350
    .line 351
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Ljava/lang/Boolean;

    .line 356
    .line 357
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 358
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/server/wm/FlexPanelController;->mFlexModeAppList:Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    .line 362
    .line 363
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_10

    .line 368
    .line 369
    const/16 v0, 0x18

    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_10
    const/16 v0, 0x8

    .line 373
    .line 374
    :goto_b
    if-eqz p1, :cond_11

    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 377
    .line 378
    .line 379
    move-result p0

    .line 380
    or-int/2addr v0, p0

    .line 381
    goto :goto_c

    .line 382
    :cond_11
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FLEX_PANEL_DEFAULT_LIST:Z

    .line 383
    .line 384
    if-eqz p1, :cond_12

    .line 385
    .line 386
    iget-object p0, p0, Lcom/android/server/wm/FlexPanelController;->mFlexPanelEnabledList:Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    .line 387
    .line 388
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result p0

    .line 392
    if-eqz p0, :cond_12

    .line 393
    .line 394
    or-int/lit8 v0, v0, 0x1

    .line 395
    .line 396
    :cond_12
    :goto_c
    return v0

    .line 397
    :catchall_3
    move-exception p0

    .line 398
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 399
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 400
    .line 401
    .line 402
    throw p0

    .line 403
    :goto_d
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 404
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 405
    .line 406
    .line 407
    throw p0

    .line 408
    :catchall_4
    move-exception p0

    .line 409
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    .line 411
    .line 412
    throw p0

    .line 413
    :goto_e
    :try_start_d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    .line 415
    .line 416
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 417
    :goto_f
    monitor-exit p0

    .line 418
    throw p1
.end method
