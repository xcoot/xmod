.class public final Lcom/android/server/sepunion/EngmodeService$1;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "engmode_service"

    .line 14
    .line 15
    const-string v0, "Time thread already running, pass"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/Thread;

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method
