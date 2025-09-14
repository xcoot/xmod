.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/UserHandle;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$2:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$4:Landroid/os/UserHandle;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$5:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$2:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$4:Landroid/os/UserHandle;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$5:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    monitor-exit v5

    .line 26
    goto :goto_2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    :goto_0
    if-ltz v0, :cond_3

    .line 44
    .line 45
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    .line 56
    .line 57
    invoke-interface {v5, v3, v2, v4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    .line 71
    .line 72
    invoke-interface {v5, v3, p0, v4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    .line 74
    .line 75
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 80
    :catch_0
    :cond_3
    :goto_2
    return-void
.end method
