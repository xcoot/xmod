.class public final Lcom/android/server/wm/FoldStarManagerService;
.super Lcom/samsung/android/core/IFoldStarManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sService:Lcom/android/server/wm/FoldStarManagerService;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/core/IFoldStarManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    return-void
.end method

.method public static getLauncherPackages(ILjava/util/List;)V
    .locals 2

    .line 1
    const-class v0, Landroid/content/pm/LauncherApps;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    move-object v1, p1

    .line 44
    check-cast v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public final getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    const-string v0, "getFixedAspectRatioPackages()"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-ne p2, v2, :cond_1

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance p3, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;ILjava/util/Map;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 55
    .line 56
    .line 57
    return-object p2

    .line 58
    :cond_1
    const/4 v2, 0x1

    .line 59
    if-eqz p2, :cond_6

    .line 60
    .line 61
    if-eq p2, v2, :cond_5

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    if-eq p2, v3, :cond_4

    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    if-ne p2, v2, :cond_3

    .line 68
    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-direct {p2, p0, p1, v2}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string/jumbo p1, "requestedPackages is null"

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string p1, " is an unknown option."

    .line 98
    .line 99
    invoke-static {p2, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;

    .line 108
    .line 109
    invoke-direct {p2, p0}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;

    .line 117
    .line 118
    const/4 p3, 0x1

    .line 119
    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;

    .line 127
    .line 128
    const/4 p3, 0x0

    .line 129
    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    .line 137
    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_a

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    sget-object v4, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 160
    .line 161
    new-instance v5, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    const/4 v6, 0x2

    .line 164
    invoke-direct {v5, v3, v6}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_7

    .line 172
    .line 173
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Ljava/lang/Float;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    move-object v4, v1

    .line 181
    :goto_3
    const/high16 v5, -0x40800000    # -1.0f

    .line 182
    .line 183
    if-nez v4, :cond_8

    .line 184
    .line 185
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    :cond_8
    if-eqz v2, :cond_9

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    cmpl-float v5, v6, v5

    .line 196
    .line 197
    if-nez v5, :cond_9

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_9
    invoke-virtual {p3, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_a
    return-object p3

    .line 205
    :cond_b
    return-object v1
.end method

.method public final initAppContinuityValueWhenReset(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setAllAppContinuityMode(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setAppContinuityMode(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setDisplayCompatPackages(ILjava/util/Map;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string/jumbo v0, "setFixedAspectRatioPackages()"

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda5;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    const-string p3, "MultiTaskingAppCompat"

    .line 47
    .line 48
    const-string v3, "ReplaceAll is not supported."

    .line 49
    .line 50
    invoke-static {p3, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance p3, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-direct {p3, v2, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const-string/jumbo p3, "setFixedAspectRatioPackages"

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {p0, p1, p3, v2, p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->removeTaskWithoutRemoveFromRecents(ILjava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public final setFrontScreenOnWhenAppContinuityMode(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .locals 0

    .line 1
    return-void
.end method
