.class public final Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/AudioGameManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/AudioGameManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 2
    .line 3
    const-string p1, "AudioGameThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->getGameList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/16 v2, 0x100

    .line 51
    .line 52
    if-lt v1, v2, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_3
    return-void
.end method
