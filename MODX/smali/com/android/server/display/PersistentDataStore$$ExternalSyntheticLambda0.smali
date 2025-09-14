.class public final synthetic Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/PersistentDataStore;

.field public final synthetic f$1:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/PersistentDataStore;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/PersistentDataStore;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    .line 5
    iget-object v1, v0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 11
    iget-object v3, v3, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 13
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object p0, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 25
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    :try_start_2
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 36
    const-string v4, "Failed to save display manager persistent store data."

    .line 38
    invoke-static {v3, v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    if-eqz v2, :cond_0

    .line 43
    :try_start_3
    iget-object p0, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :goto_1
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :goto_2
    if-eqz v2, :cond_1

    .line 50
    iget-object v0, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 52
    invoke-virtual {v0, v2}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;)V

    .line 55
    :cond_1
    throw p0

    .line 56
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    throw p0
.end method
