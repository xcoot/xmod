.class public final synthetic Lcom/android/server/wm/AppCompatConfigurationPersister$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatConfigurationPersister;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatConfigurationPersister;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 2
    .line 3
    const-string v0, "Error reading from AppCompatConfigurationPersister "

    .line 4
    .line 5
    const-string v1, "WindowManager"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->readInputStream(Ljava/io/InputStream;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 35
    .line 36
    iput v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 37
    .line 38
    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 39
    .line 40
    iput v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 41
    .line 42
    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 43
    .line 44
    iput v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 45
    .line 46
    iget v3, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 47
    .line 48
    iput v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v3

    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v3

    .line 65
    :try_start_2
    const-string v4, "Error reading from AppCompatConfigurationPersister. Using default values!"

    .line 66
    .line 67
    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void

    .line 79
    :goto_1
    if-eqz v2, :cond_2

    .line 80
    .line 81
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catch_2
    move-exception v2

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_2
    throw v3
.end method
