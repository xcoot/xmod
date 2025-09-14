.class public final Lcom/android/server/tv/PersistentDataStore$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/PersistentDataStore;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/PersistentDataStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_2
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v2, Landroid/content/Intent;

    .line 37
    .line 38
    const-string v3, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    .line 39
    .line 40
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    const-string v1, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 75
    .line 76
    .line 77
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    :goto_0
    const-string v0, "TvInputManagerService"

    .line 79
    .line 80
    const-string v1, "Failed to save tv input manager persistent store data."

    .line 81
    .line 82
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_1
    return-void
.end method
