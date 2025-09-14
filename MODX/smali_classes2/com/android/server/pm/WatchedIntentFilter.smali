.class public Lcom/android/server/pm/WatchedIntentFilter;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter$3()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addDataScheme(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addDataType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getIntentFilter$3()Landroid/content/IntentFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter$3()Landroid/content/IntentFilter;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->snapshot()Lcom/android/server/pm/WatchedIntentFilter;

    move-result-object p0

    return-object p0
.end method
