.class public final Lcom/android/server/am/PhantomProcessRecord$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/PhantomProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-string v0, "Process "

    .line 3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    .line 5
    iget-object v1, v1, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string v2, "ActivityManager"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v0, " is still alive after "

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    .line 29
    iget-object v0, v0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 31
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 33
    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 35
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v0, "ms"

    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method
