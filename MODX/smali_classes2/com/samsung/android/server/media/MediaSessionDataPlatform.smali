.class public final Lcom/samsung/android/server/media/MediaSessionDataPlatform;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mCr:Landroid/content/ContentResolver;

.field public static sInstance:Lcom/samsung/android/server/media/MediaSessionDataPlatform;


# instance fields
.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mHandler:Landroid/os/Handler;

.field public final mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

.field public mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 22
    .line 23
    const/16 v1, 0x32

    .line 24
    .line 25
    const-string v2, "MediaSessionDataPlatform logger"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sput-object p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mCr:Landroid/content/ContentResolver;

    .line 37
    .line 38
    const-string p1, "content://com.samsung.android.moneta.datacollector.reception.external.data/media_history"

    .line 39
    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mUri:Landroid/net/Uri;

    .line 45
    .line 46
    const-string p1, "MediaSessionDataPlatform"

    .line 47
    .line 48
    const-string v0, "createMediaResourceHelper"

    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    const/4 v1, 0x0

    .line 55
    :try_start_0
    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    const-string p0, "IllegalStateException SemMediaResourceHelper"

    .line 63
    .line 64
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public static compareString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    return v0

    .line 16
    :cond_1
    return v1

    .line 17
    :cond_2
    if-eqz p1, :cond_3

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_3
    move v0, v1

    .line 21
    :goto_1
    return v0
.end method

.method public static isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->title:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p1, :cond_8

    .line 11
    .line 12
    const-string v3, "android.media.metadata.TITLE"

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtist:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artist:Ljava/lang/String;

    .line 36
    .line 37
    :cond_3
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    :cond_4
    const-string v2, "android.media.metadata.ARTIST"

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_5
    invoke-static {v1, v2}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    const/4 p0, 0x2

    .line 64
    return p0

    .line 65
    :cond_6
    const-string v1, "android.media.metadata.ALBUM"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->album:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v2, v1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    const/4 p0, 0x3

    .line 80
    return p0

    .line 81
    :cond_7
    const-string v1, "android.media.metadata.DURATION"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    const-wide/16 v4, 0x0

    .line 88
    .line 89
    cmp-long v2, v2, v4

    .line 90
    .line 91
    if-lez v2, :cond_8

    .line 92
    .line 93
    iget-wide v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide p0

    .line 99
    cmp-long p0, v2, p0

    .line 100
    .line 101
    if-eqz p0, :cond_8

    .line 102
    .line 103
    const/4 p0, 0x4

    .line 104
    return p0

    .line 105
    :cond_8
    return v0

    .line 106
    :cond_9
    :goto_0
    if-eqz p1, :cond_a

    .line 107
    .line 108
    move v0, v1

    .line 109
    :cond_a
    return v0
.end method


# virtual methods
.method public final getMediaType(I)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "MediaSessionDataPlatform"

    .line 2
    .line 3
    const-string v1, "Video"

    .line 4
    .line 5
    const-string v2, "getMediaType for uid: "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 12
    .line 13
    invoke-virtual {v6, v4}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    if-eqz v6, :cond_2

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_2

    .line 28
    .line 29
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    .line 34
    .line 35
    invoke-virtual {v7}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isEncoder()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    invoke-virtual {v7}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v7}, Landroid/os/Process;->getUidForPid(I)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v8, :cond_0

    .line 48
    .line 49
    if-ne v7, p1, :cond_0

    .line 50
    .line 51
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 52
    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v8, " "

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-direct {v6, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v5, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 95
    .line 96
    .line 97
    :cond_1
    const-string v1, "createMediaResourceHelper"

    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :try_start_1
    invoke-static {v4, v5}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_1
    const-string p0, "IllegalStateException SemMediaResourceHelper"

    .line 110
    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_0
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 115
    .line 116
    const-string v1, " Audio"

    .line 117
    .line 118
    invoke-static {p1, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v5, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 129
    .line 130
    .line 131
    const-string p0, "Audio"

    .line 132
    .line 133
    return-object p0
.end method

.method public final sendData(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, "MediaSessionDataPlatform"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iput-wide v3, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->endTime:J

    .line 31
    .line 32
    iget-wide v5, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 33
    .line 34
    sub-long/2addr v3, v5

    .line 35
    iput-wide v3, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    .line 36
    .line 37
    const-wide/32 v5, 0xe86c

    .line 38
    .line 39
    .line 40
    cmp-long v3, v3, v5

    .line 41
    .line 42
    if-ltz v3, :cond_0

    .line 43
    .line 44
    new-instance v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/media/MediaSessionDataPlatform;Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "Do not send data because playing time too short "

    .line 58
    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-wide v4, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    .line 63
    .line 64
    const-string/jumbo p1, "ms"

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4, v5, p1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 82
    .line 83
    const-string p1, "Failed: insert data is null"

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method
