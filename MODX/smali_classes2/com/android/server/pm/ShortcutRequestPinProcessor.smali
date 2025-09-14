.class public final Lcom/android/server/pm/ShortcutRequestPinProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getRequestPinConfirmationActivity(II)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->areShortcutsSupportedOnHomeScreen(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p0, "ShortcutService"

    .line 24
    .line 25
    const-string p1, "Default launcher not found."

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne p2, v2, :cond_2

    .line 36
    .line 37
    const-string p2, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string p2, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    .line 41
    .line 42
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 43
    .line 44
    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->queryActivities(ILandroid/content/Intent;Z)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 71
    .line 72
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object p0, v1

    .line 80
    :goto_1
    if-nez p0, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_2
    return-object v1
.end method

.method public final requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v7, 0x2

    .line 6
    const/4 v8, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move/from16 v2, p4

    .line 10
    .line 11
    move v9, v8

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move/from16 v2, p4

    .line 14
    .line 15
    move v9, v7

    .line 16
    :goto_0
    invoke-virtual {v0, v2, v9}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object v10

    .line 20
    const/4 v11, 0x0

    .line 21
    const-string v12, "ShortcutService"

    .line 22
    .line 23
    if-nez v10, :cond_1

    .line 24
    .line 25
    const-string v0, "Launcher doesn\'t support requestPinnedShortcut(). Shortcut not created."

    .line 26
    .line 27
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v11

    .line 31
    :cond_1
    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v13

    .line 39
    iget-object v14, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 40
    .line 41
    invoke-virtual {v14, v13}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroid/content/ComponentName;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    move-object/from16 v4, p5

    .line 63
    .line 64
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;I)Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object/from16 v4, p5

    .line 70
    .line 71
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Landroid/content/ComponentName;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v14, v13, v1}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    new-instance v15, Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 84
    .line 85
    new-instance v6, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;

    .line 86
    .line 87
    move-object v1, v6

    .line 88
    move-object/from16 v2, p0

    .line 89
    .line 90
    move-object/from16 v3, p5

    .line 91
    .line 92
    move v4, v5

    .line 93
    move-object/from16 v5, p2

    .line 94
    .line 95
    move-object v0, v6

    .line 96
    move-object/from16 v6, p3

    .line 97
    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v15, v0, v7}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    .line 102
    .line 103
    .line 104
    move-object v0, v15

    .line 105
    :goto_1
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Landroid/content/ComponentName;

    .line 108
    .line 109
    const-string v2, "Unable to start activity "

    .line 110
    .line 111
    if-ne v9, v8, :cond_3

    .line 112
    .line 113
    const-string v3, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const-string v3, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    .line 117
    .line 118
    :goto_2
    new-instance v4, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    const-string v3, "android.content.pm.extra.PIN_ITEM_REQUEST"

    .line 127
    .line 128
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const v0, 0x10008000

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    :try_start_0
    iget-object v0, v14, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    goto :goto_4

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    .line 172
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    .line 174
    .line 175
    move v8, v11

    .line 176
    :goto_3
    return v8

    .line 177
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    .line 179
    .line 180
    throw v0
.end method

.method public final requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;I)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 10
    .line 11
    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v7, v8

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v7, v3

    .line 30
    :goto_0
    if-eqz v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    :cond_1
    if-eqz v7, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v9, "Shortcut ID="

    .line 45
    .line 46
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v9, " already exists but disabled."

    .line 53
    .line 54
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v3, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v4, v3, p4, p3}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    invoke-virtual {p0, p2, v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move-object v7, p2

    .line 84
    :goto_1
    const/16 v9, 0x1b

    .line 85
    .line 86
    invoke-virtual {v0, v9}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    const/4 v3, 0x2

    .line 93
    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_2
    move-object v3, v0

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-virtual {v4, v7, v0}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(ILjava/lang/String;)Landroid/content/ComponentName;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {v4, p1, v3, v8}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 135
    .line 136
    .line 137
    const/16 v0, 0x1a

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object v7, p2

    .line 144
    goto :goto_2

    .line 145
    :goto_3
    new-instance v9, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;

    .line 146
    .line 147
    invoke-virtual {v4, p4, p3}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    move-object v0, v9

    .line 152
    move-object v1, p0

    .line 153
    move-object v2, p1

    .line 154
    move-object v4, v7

    .line 155
    move-object v5, p3

    .line 156
    move v6, p4

    .line 157
    move v7, v10

    .line 158
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;II)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 162
    .line 163
    invoke-direct {v0, v9, v8}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    .line 164
    .line 165
    .line 166
    return-object v0
.end method

.method public final sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v1, p1

    .line 29
    move-object v4, p2

    .line 30
    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string p1, "ShortcutService"

    .line 36
    .line 37
    const-string/jumbo p2, "sendIntent failed()."

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
