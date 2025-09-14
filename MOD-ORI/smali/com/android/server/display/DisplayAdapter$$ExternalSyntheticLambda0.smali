.class public final synthetic Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/display/DisplayDeviceRepository;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 20
    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/display/DisplayDeviceRepository$Listener;

    .line 28
    .line 29
    check-cast v3, Lcom/android/server/display/LogicalDisplayMapper;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 36
    .line 37
    monitor-enter v4

    .line 38
    :try_start_0
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 41
    .line 42
    .line 43
    monitor-exit v4

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_0
    return-void
.end method
