.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;->f$1:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;->f$2:Z

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/ActivityManagerPerformance;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/content/IntentFilter;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v4, "package"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v4, v2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    .line 64
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    iget-object v7, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 68
    .line 69
    iget-object v8, v2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mPackageReceiver:Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;

    .line 70
    .line 71
    invoke-virtual {v5, v8, v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    iget-object v3, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-nez v3, :cond_0

    .line 81
    .line 82
    const-string v2, "ActivityEmbeddedPackageRepository"

    .line 83
    .line 84
    const-string v3, "PackageManager is not ready yet."

    .line 85
    .line 86
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    iget-object v3, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_2

    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 116
    .line 117
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 118
    .line 119
    :try_start_0
    iget-object v8, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    const-string v9, "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

    .line 126
    .line 127
    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    .line 128
    .line 129
    .line 130
    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    if-eqz v7, :cond_1

    .line 132
    .line 133
    iget-object v7, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 134
    .line 135
    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v9, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 138
    .line 139
    invoke-virtual {v9}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    const/4 v10, 0x1

    .line 144
    invoke-virtual {v7, v10, v9, v8, v5}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->add(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    :goto_1
    const-string v2, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    .line 154
    .line 155
    const-string v3, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    .line 156
    .line 157
    invoke-static {v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    iget-object v2, v1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 162
    .line 163
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    iget-object v8, v1, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 166
    .line 167
    const/4 v9, 0x2

    .line 168
    const-string v7, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 169
    .line 170
    iget-object v5, v1, Lcom/android/server/wm/MultiTaskingController;->mMinimizeAllReceiver:Lcom/android/server/wm/MultiTaskingController$1;

    .line 171
    .line 172
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    iget-object v3, v1, Lcom/android/server/wm/MultiTaskingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const v4, 0x1050574

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iput v3, v1, Lcom/android/server/wm/MultiTaskingController;->mSwipeGestureThreshold:I

    .line 195
    .line 196
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 197
    .line 198
    const-string v3, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 199
    .line 200
    const-string v4, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 201
    .line 202
    invoke-static {v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    iget-object v9, v1, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 209
    .line 210
    const/4 v10, 0x2

    .line 211
    const-string v8, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 212
    .line 213
    iget-object v6, v1, Lcom/android/server/wm/MultiTaskingController;->mDemoResetStartedReceiver:Lcom/android/server/wm/MultiTaskingController$1;

    .line 214
    .line 215
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    :cond_3
    if-eqz p0, :cond_4

    .line 219
    .line 220
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 223
    .line 224
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    :goto_2
    return-void
.end method
