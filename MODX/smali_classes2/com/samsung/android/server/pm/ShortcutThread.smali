.class public final Lcom/samsung/android/server/pm/ShortcutThread;
.super Lcom/android/server/ServiceThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static ensureThreadLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/samsung/android/server/pm/ShortcutThread;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "ShortcutService"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-wide/32 v1, 0x80000

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0x64

    .line 33
    .line 34
    const-wide/16 v3, 0xc8

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/os/Handler;

    .line 40
    .line 41
    sget-object v1, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sHandler:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 53
    .line 54
    sget-object v1, Lcom/samsung/android/server/pm/ShortcutThread;->sHandler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
