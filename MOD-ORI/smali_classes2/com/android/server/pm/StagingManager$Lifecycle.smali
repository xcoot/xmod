.class public final Lcom/android/server/pm/StagingManager$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 p0, 0x3e8

    .line 2
    .line 3
    if-ne p1, p0, :cond_2

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 26
    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 48
    .line 49
    check-cast p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    const-string/jumbo p0, "sys.staged_apex.state"

    .line 58
    .line 59
    .line 60
    const-string/jumbo v0, "success"

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-object p0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 70
    .line 71
    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0}, Landroid/apex/IApexService;->markBootCompleted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string p1, "ApexManager"

    .line 86
    .line 87
    const-string v0, "Unable to contact apexservice"

    .line 88
    .line 89
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0

    .line 95
    :cond_2
    :goto_2
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method
