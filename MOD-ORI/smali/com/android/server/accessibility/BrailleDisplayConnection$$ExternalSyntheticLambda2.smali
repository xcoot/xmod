.class public final synthetic Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "BrailleDisplayConnection"

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v2

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 49
    .line 50
    .line 51
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-lez v3, :cond_0

    .line 53
    .line 54
    :try_start_2
    iget-object v4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v4, v3}, Landroid/accessibilityservice/IBrailleDisplayController;->onInput([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    :try_start_3
    const-string v3, "Error calling onInput"

    .line 67
    .line 68
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_5

    .line 78
    :catch_1
    move-exception v1

    .line 79
    goto :goto_4

    .line 80
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catchall_1
    move-exception v1

    .line 85
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_3
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 89
    :goto_4
    const-string v2, "Error reading from connected Braille display"

    .line 90
    .line 91
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 95
    .line 96
    .line 97
    :goto_5
    return-void
.end method
