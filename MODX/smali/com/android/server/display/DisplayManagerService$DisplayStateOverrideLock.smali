.class public final Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDisplayId:I

.field public mLastRequestedState:I

.field public final mLastRequestedTime:J

.field public final mLock:Landroid/os/IBinder;

.field public final mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mTag:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLock:Landroid/os/IBinder;

    .line 15
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    .line 17
    iput-wide p4, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedTime:J

    .line 19
    iput p6, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mDisplayId:I

    .line 21
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    const-string v0, "DisplayStateOverrideLock: binderDied: "

    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string v2, "DisplayManagerService"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 32
    move-result v0

    .line 33
    if-gez v0, :cond_0

    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 41
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    .line 49
    iget v0, v0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mDisplayId:I

    .line 51
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 53
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLock:Landroid/os/IBinder;

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v2, p0, v3, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayStateOverrideWithDisplayIdInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;II)V

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, " "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mDisplayId:I

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    .line 32
    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " (lock:"

    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLock:Landroid/os/IBinder;

    .line 55
    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    const-string v3, ", t:"

    .line 73
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-wide v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedTime:J

    .line 78
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, ")"

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mTag:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
