.class public abstract Lcom/android/server/pm/WatchedIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# static fields
.field public static final sResolvePrioritySorter:Lcom/android/server/pm/WatchedIntentResolver$2;


# instance fields
.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;

.field public final mWatcher:Lcom/android/server/pm/WatchedIntentResolver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Lcom/android/server/pm/WatchedIntentResolver$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentResolver$1;-><init>(Lcom/android/server/pm/WatchedIntentResolver;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/pm/WatchedIntentResolver$1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 0

    .line 1
    invoke-super {p0, p2}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/pm/WatchedIntentResolver$1;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p0}, Lcom/android/server/pm/WatchedIntentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter$3()Landroid/content/IntentFilter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v2, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/4 v1, 0x0

    .line 101
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    move-object p0, v1

    .line 133
    :goto_1
    return-object p0
.end method

.method public final isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/pm/WatchedIntentResolver$1;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 3
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p0}, Lcom/android/server/pm/WatchedIntentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final bridge synthetic removeFilter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method public final removeFilterInternal(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/pm/WatchedIntentResolver$1;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p0}, Lcom/android/server/pm/WatchedIntentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public sortResults(Ljava/util/List;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Lcom/android/server/pm/WatchedIntentResolver$2;

    .line 2
    .line 3
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
