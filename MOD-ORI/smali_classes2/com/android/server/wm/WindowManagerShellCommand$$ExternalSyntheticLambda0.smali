.class public final synthetic Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerShellCommand;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerShellCommand;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerShellCommand;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerShellCommand;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 13
    .line 14
    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    .line 15
    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :try_start_0
    new-instance v2, Lcom/android/internal/os/ByteTransferPipe;

    .line 31
    .line 32
    invoke-direct {v2}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 40
    .line 41
    instance-of v5, v4, Landroid/view/IWindow$Stub;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;

    .line 50
    .line 51
    invoke-direct {v5, v0, v4, v3}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/WindowManagerShellCommand;Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V

    .line 52
    .line 53
    .line 54
    check-cast v1, Landroid/os/HandlerExecutor;

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-object v1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const-string v0, "DUMP_ENCODED"

    .line 63
    .line 64
    invoke-interface {v4, v0, v1, v3}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :catch_1
    :goto_2
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_3
    return-void
.end method
