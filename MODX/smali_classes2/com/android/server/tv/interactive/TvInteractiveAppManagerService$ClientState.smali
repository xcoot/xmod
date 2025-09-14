.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mClientToken:Landroid/os/IBinder;

.field public final mSessionTokens:Ljava/util/List;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 14
    .line 15
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 17
    .line 18
    check-cast v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 29
    .line 30
    check-cast v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 39
    .line 40
    check-cast v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/os/IBinder;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 50
    .line 51
    iget v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    .line 52
    .line 53
    const/16 v5, 0x3e8

    .line 54
    .line 55
    invoke-static {v3, v2, v5, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 59
    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    const-string v3, "TvInteractiveAppManagerService"

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string/jumbo v5, "remove sessionToken "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, " for "

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 102
    .line 103
    check-cast v3, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 113
    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 116
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0
.end method
