.class public final Lcom/android/server/PinnerService$PinnerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v1, 0xfa1

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    .line 13
    iget-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 19
    const v0, 0x10700c8

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    array-length v0, p1

    .line 27
    const/4 v1, 0x0

    .line 28
    move v2, v1

    .line 29
    :goto_0
    if-ge v2, v0, :cond_2

    .line 31
    aget-object v3, p1, v2

    .line 33
    iget-object v4, p0, Lcom/android/server/PinnerService;->mInjector:Lcom/android/server/PinnerService$Injector;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const v4, 0x7fffffff

    .line 41
    invoke-static {v4, v3, v1}, Lcom/android/server/PinnerService;->pinFileInternal(ILjava/lang/String;Z)Lcom/android/server/PinnerService$PinnedFile;

    .line 44
    move-result-object v5

    .line 45
    if-nez v5, :cond_1

    .line 47
    const-string v4, "PinnerService"

    .line 49
    const-string v5, "Failed to pin file = "

    .line 51
    invoke-static {v5, v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 58
    iget-object v6, v5, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const-string/jumbo v3, "system"

    .line 67
    iput-object v3, v5, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0, v5, v4, v3}, Lcom/android/server/PinnerService;->pinOptimizedDexDependencies(Lcom/android/server/PinnerService$PinnedFile;ILandroid/content/pm/ApplicationInfo;)V

    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->refreshPinAnonConfig()V

    .line 82
    :goto_2
    return-void
.end method
