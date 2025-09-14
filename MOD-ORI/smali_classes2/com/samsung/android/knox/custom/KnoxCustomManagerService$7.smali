.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTetheringFailed(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onTetheringFailed + "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-string v2, "KnoxCustomManagerService"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 27
    .line 28
    iput p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetheringResultCode:I

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onTetheringStarted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "KnoxCustomManagerService"

    .line 7
    .line 8
    const-string/jumbo v2, "onTetheringStarted"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetheringResultCode:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
