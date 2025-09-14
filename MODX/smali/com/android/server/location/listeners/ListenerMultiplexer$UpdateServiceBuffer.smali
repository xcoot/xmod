.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mBufferCount:I

.field public mUpdateServiceRequired:Z

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 9
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized acquire()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 14
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 19
    if-nez v0, :cond_1

    .line 21
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 23
    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 25
    move v2, v0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz v2, :cond_2

    .line 32
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 37
    :cond_2
    return-void

    .line 38
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0
.end method
