.class public final Lcom/android/server/LocalManagerRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final sManagers:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/LocalManagerRegistry;->sManagers:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public static addManager(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, " is already registered"

    .line 3
    const-string/jumbo v1, "managerClass"

    .line 6
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    const-string/jumbo v1, "manager"

    .line 12
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/android/server/LocalManagerRegistry;->sManagers:Ljava/util/Map;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    move-object v2, v1

    .line 19
    check-cast v2, Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 27
    move-object v0, v1

    .line 28
    check-cast v0, Landroid/util/ArrayMap;

    .line 30
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1

    .line 51
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public static getManager(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/LocalManagerRegistry;->sManagers:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    move-object v1, v0

    .line 5
    check-cast v1, Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public static getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException;-><init>(Ljava/lang/Class;)V

    .line 13
    throw v0
.end method
