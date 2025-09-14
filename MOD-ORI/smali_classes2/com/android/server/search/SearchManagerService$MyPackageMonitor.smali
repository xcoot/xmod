.class public final Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChangedPackages:Ljava/util/ArrayList;

.field public mSearchablePackageAppeared:Z

.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onBeginPackageChanges()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    .line 8
    .line 9
    return-void
.end method

.method public final onFinishPackageChanges()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 19
    .line 20
    monitor-enter v3

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/server/search/Searchables;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 34
    :try_start_1
    iget-object v1, v4, Lcom/android/server/search/Searchables;->mKnownSearchablePackageNames:Landroid/util/ArraySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    :try_start_2
    monitor-exit v4

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v4

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 42
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    move v4, v2

    .line 49
    :goto_1
    if-ge v4, v3, :cond_4

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    :goto_2
    const-string v1, "SearchManagerService"

    .line 66
    .line 67
    const-string v3, "_updateSearchables"

    .line 68
    .line 69
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 73
    .line 74
    iget-object v5, v1, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 75
    .line 76
    monitor-enter v5

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/server/search/Searchables;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    const/4 v3, 0x1

    .line 91
    :try_start_4
    iput-boolean v3, v1, Lcom/android/server/search/Searchables;->mRebuildSearchables:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    .line 93
    :try_start_5
    monitor-exit v1

    .line 94
    goto :goto_3

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    monitor-exit v1

    .line 97
    throw p0

    .line 98
    :cond_2
    :goto_3
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 99
    const-string v1, "SearchManagerService"

    .line 100
    .line 101
    const-string v3, "_updateSearchables completed."

    .line 102
    .line 103
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    new-instance v1, Landroid/content/Intent;

    .line 107
    .line 108
    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    .line 109
    .line 110
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/high16 v3, 0x24000000

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 119
    .line 120
    iget-object v3, v3, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    new-instance v4, Landroid/os/UserHandle;

    .line 123
    .line 124
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :catchall_2
    move-exception p0

    .line 132
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 133
    throw p0

    .line 134
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    .line 141
    .line 142
    iput-boolean v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    .line 143
    .line 144
    return-void

    .line 145
    :catchall_3
    move-exception p0

    .line 146
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 147
    throw p0
.end method

.method public final onPackageAppeared(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-boolean p2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    .line 2
    .line 3
    if-nez p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v2, "android.intent.action.SEARCH"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v2, 0x10800080

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    new-instance v3, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v4, "android.intent.action.WEB_SEARCH"

    .line 50
    .line 51
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v3, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    new-instance v3, Landroid/content/Intent;

    .line 78
    .line 79
    const-string v4, "android.search.action.GLOBAL_SEARCH"

    .line 80
    .line 81
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, v3, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    xor-int/2addr v1, p2

    .line 101
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    .line 102
    .line 103
    :cond_2
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
