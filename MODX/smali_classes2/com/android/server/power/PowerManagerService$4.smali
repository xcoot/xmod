.class public final Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic val$confirm:Z

.field public final synthetic val$haltMode:I

.field public final synthetic val$reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "silent.sec"

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    .line 56
    .line 57
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    :goto_0
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 63
    .line 64
    const-string v1, "NPE by silent reset. It\'s normal operation caused by device care"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw v0
.end method
