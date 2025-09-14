.class public final Lcom/android/server/input/InputManagerService$KeyCountRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 5
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 7
    iget-object v1, v0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 9
    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 15
    iget-object v2, v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 23
    const-wide/16 v3, 0x0

    .line 25
    iput-wide v3, v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {p0, v1}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method
