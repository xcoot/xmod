.class public final Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p1, "search_global_search_activity"

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/search/Searchables;

    .line 26
    .line 27
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    const/4 v2, 0x1

    .line 29
    :try_start_1
    iput-boolean v2, v1, Lcom/android/server/search/Searchables;->mRebuildSearchables:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    :try_start_2
    monitor-exit v1

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1

    .line 37
    throw p0

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    const-string p1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    .line 42
    .line 43
    const/high16 v0, 0x20000000

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    throw p0
.end method
