.class public final Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;


# instance fields
.field public carConnectionQueryHandler:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

.field public carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

.field public final isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final logExcludeList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public final userIdPackageListSelfLocked:Landroid/util/ArrayMap;


# direct methods
.method public static -$$Nest$smnotifyCarDisconnected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "FILTER 32"

    .line 12
    .line 13
    const-string v1, "android auto off"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    .line 15
    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    const-string/jumbo v1, "com.google.android.projection.gearhead"

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->logExcludeList:Ljava/util/ArrayList;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return p3

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    .line 12
    .line 13
    monitor-enter p2

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    monitor-exit p2

    .line 29
    return p3

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    monitor-exit p2

    .line 39
    const/16 p0, 0x20

    .line 40
    .line 41
    return p0

    .line 42
    :cond_2
    monitor-exit p2

    .line 43
    return p3

    .line 44
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionQueryHandler:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

    .line 13
    .line 14
    new-instance p1, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;)V

    .line 17
    .line 18
    .line 19
    sput-object p1, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    .line 20
    .line 21
    const-string p1, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->queryForState()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final queryForState()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionQueryHandler:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

    .line 2
    .line 3
    new-instance p0, Landroid/net/Uri$Builder;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "content"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "androidx.car.app.connection"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string p0, "CarConnectionState"

    .line 26
    .line 27
    filled-new-array {p0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/16 v1, 0x2a

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
