.class public final synthetic Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/media/MediaSessionDataPlatform;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->getMediaType(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
