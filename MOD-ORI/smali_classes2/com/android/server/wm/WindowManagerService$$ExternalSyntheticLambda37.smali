.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/io/FileDescriptor;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;->f$1:Ljava/io/FileDescriptor;

    .line 7
    .line 8
    const-wide/16 p1, 0x3e8

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;->f$2:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;->f$1:Ljava/io/FileDescriptor;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;->f$2:J

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 10
    .line 11
    const-string p0, "---------------------------------"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    new-instance p0, Lcom/android/internal/os/TransferPipe;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .line 30
    .line 31
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {p1, v4}, Landroid/view/IWindow;->dumpWindow(Landroid/os/ParcelFileDescriptor;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 59
    :catch_1
    const-string p0, "Got a RemoteException while dumping the window"

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Failure while dumping the window: "

    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method
