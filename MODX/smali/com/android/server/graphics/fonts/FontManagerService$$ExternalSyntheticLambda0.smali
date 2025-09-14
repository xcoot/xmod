.class public final synthetic Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/graphics/fonts/FontManagerService;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 8
    iget-object v1, v0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, v0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-eqz v2, :cond_0

    .line 15
    :try_start_1
    iget-object v2, v0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    .line 17
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget-object v0, v0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 20
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 28
    :catch_0
    :try_start_6
    const-string v0, "FontManagerService"

    .line 30
    const-string v2, "Failed to set system font map of system_server"

    .line 32
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 43
    throw p0
.end method
