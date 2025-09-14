.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;
.super Landroid/appwidget/AppWidgetManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    invoke-direct {p0}, Landroid/appwidget/AppWidgetManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final applyResourceOverlaysToWidgets(Ljava/util/Set;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 10
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-static {p0, v1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mapplyResourceOverlaysToWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/Set;IZ)V

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final getHostedWidgetPackages(I)Landroid/util/ArraySet;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 8
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_2

    .line 18
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 20
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 28
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 30
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 32
    iget v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 34
    if-ne v5, p1, :cond_1

    .line 36
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 38
    if-eqz v5, :cond_1

    .line 40
    if-nez v2, :cond_0

    .line 42
    new-instance v2, Landroid/util/ArraySet;

    .line 44
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :goto_1
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 52
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 54
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 56
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    monitor-exit v0

    .line 67
    return-object v2

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final unlockUser(I)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_3

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 13
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 19
    const-string p0, "AppWidgetServiceImpl"

    .line 21
    const-string v0, "User "

    .line 23
    const-string v1, " is no longer unlocked - exiting"

    .line 25
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    goto/16 :goto_3

    .line 30
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    move-result-wide v0

    .line 34
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    const-string v3, "appwidget ensure"

    .line 39
    const-wide/16 v4, 0x40

    .line 41
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-virtual {p0, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 48
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    const-string v3, "appwidget reload"

    .line 53
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 58
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 60
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 62
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    .line 65
    move-result v3

    .line 66
    const/16 v6, -0xa

    .line 68
    if-eq v3, v6, :cond_2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v3, p1

    .line 72
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 75
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 78
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 80
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 83
    move-result v3

    .line 84
    const/4 v6, 0x0

    .line 85
    :goto_1
    if-ge v6, v3, :cond_5

    .line 87
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 89
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 95
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 98
    move-result v8

    .line 99
    if-eq v8, p1, :cond_3

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 107
    move-result v8

    .line 108
    if-lez v8, :cond_4

    .line 110
    iget-boolean v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 112
    if-nez v8, :cond_4

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const-string v9, "appwidget init "

    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 126
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 128
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v8

    .line 139
    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 142
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 144
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda4;

    .line 146
    invoke-direct {v9, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 149
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 152
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 154
    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableAndUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 161
    invoke-virtual {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 164
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 167
    goto :goto_2

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto :goto_4

    .line 170
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 172
    goto :goto_1

    .line 173
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const-string p0, "AppWidgetServiceImpl"

    .line 176
    const-string v2, "Processing of handleUserUnlocked u"

    .line 178
    const-string v3, " took "

    .line 180
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    move-result-object p1

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 187
    move-result-wide v2

    .line 188
    sub-long/2addr v2, v0

    .line 189
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    const-string v0, " ms"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_3
    return-void

    .line 205
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    throw p0
.end method
