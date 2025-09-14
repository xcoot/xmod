.class public final Lcom/samsung/android/server/audio/CoverHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/CoverHelper;


# instance fields
.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mIsCoverSafetyVolume:Z


# direct methods
.method public static declared-synchronized getInstance()Lcom/samsung/android/server/audio/CoverHelper;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/audio/CoverHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/audio/CoverHelper;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method
