.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 6
    iput-wide p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;->f$1:J

    .line 8
    iput p4, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 3
    iget-wide v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;->f$1:J

    .line 5
    iget p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object v3, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 18
    iget-object v4, v3, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v4

    .line 21
    :try_start_0
    iget-object v5, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

    .line 23
    invoke-virtual {v5, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 26
    monitor-exit v4

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_0
    :goto_0
    iget-object v4, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 33
    if-eq v4, v0, :cond_1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-wide/16 v4, 0x0

    .line 38
    cmp-long v0, v1, v4

    .line 40
    if-nez v0, :cond_2

    .line 42
    const-string p0, "MR2ProviderSvcProxy"

    .line 44
    const-string/jumbo v0, "onRequestFailed: Ignoring requestId REQUEST_ID_NONE"

    .line 47
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v0, v3, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 53
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 55
    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    .line 58
    :goto_1
    return-void
.end method
