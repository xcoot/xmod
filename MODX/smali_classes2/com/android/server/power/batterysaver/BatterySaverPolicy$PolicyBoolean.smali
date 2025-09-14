.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDebugName:Ljava/lang/String;

.field public mValue:Z

.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;


# direct methods
.method public static -$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public update(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    const-string v1, "BatterySaverPolicy"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, " changed to "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, ", updating policy."

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->maybeNotifyListenersOfPolicyChange()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method
