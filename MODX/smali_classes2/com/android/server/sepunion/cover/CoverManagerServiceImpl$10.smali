.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public final synthetic val$coverSwitchState:Z


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v1, p0, v2, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
