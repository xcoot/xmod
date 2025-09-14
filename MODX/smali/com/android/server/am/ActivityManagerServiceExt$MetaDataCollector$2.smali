.class public final Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MetaDataCollector"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v3, "onReceive: begin action="

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v1, :cond_0

    .line 34
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 42
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 53
    move-result-object p2

    .line 54
    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    :cond_1
    const-string p2, "MetaDataCollector"

    .line 62
    const-string/jumbo v0, "onReceive: done pkgName="

    .line 65
    invoke-static {v0, v2, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez v2, :cond_2

    .line 70
    return-void

    .line 71
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 78
    move-result p1

    .line 79
    const-wide/16 v0, 0x80

    .line 81
    invoke-interface {p2, v2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 84
    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 87
    monitor-enter p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 93
    monitor-exit p2

    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const-string p1, "MetaDataCollector"

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v0, "getApplicationInfo: failed for "

    .line 106
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, " - "

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p2

    .line 124
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :goto_0
    return-void
.end method
