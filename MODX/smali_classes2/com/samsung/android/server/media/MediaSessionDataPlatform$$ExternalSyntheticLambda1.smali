.class public final synthetic Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

.field public final synthetic f$1:Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/media/MediaSessionDataPlatform;Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "MediaSessionDataPlatform"

    .line 9
    .line 10
    const-string v2, "Failed: insert "

    .line 11
    .line 12
    const-string v3, "Succeeded: insert "

    .line 13
    .line 14
    :try_start_0
    sget-object v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mCr:Landroid/content/ContentResolver;

    .line 15
    .line 16
    iget-object v5, v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mUri:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->makeContentValues()Landroid/content/ContentValues;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const/4 v5, 0x0

    .line 27
    iget-object v0, v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    :try_start_1
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v2, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v5, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v3, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v5, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method
