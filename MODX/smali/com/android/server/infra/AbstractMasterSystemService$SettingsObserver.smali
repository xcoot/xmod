.class public final Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 29
    :cond_0
    const-string/jumbo v0, "user_setup_complete"

    .line 32
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    invoke-virtual {p1, p2, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "onChange(): uri="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", userId="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_1

    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 44
    invoke-virtual {p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_3

    .line 54
    const-string/jumbo p2, "user_setup_complete"

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 66
    invoke-virtual {p0, p3, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onSettingsChanged(ILjava/lang/String;)V

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 72
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 74
    monitor-enter p1

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 80
    monitor-exit p1

    .line 81
    :goto_1
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method
