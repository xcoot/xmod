.class public final Lcom/android/server/location/LocationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string/jumbo p1, "com.samsung.android.location.mock.delete"

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 16
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 24
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 26
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 34
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit p1

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_1
    :goto_2
    return-void
.end method
