.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getFileDescriptorInternal(Ljava/lang/String;)Ljava/io/FileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    goto :goto_0

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    const-string v1, "Failed to getFileDescriptor from SCPM."

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object v2

    .line 35
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0
.end method
