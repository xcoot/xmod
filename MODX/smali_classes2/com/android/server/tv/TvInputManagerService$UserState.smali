.class public final Lcom/android/server/tv/TvInputManagerService$UserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final callbackPidUidMap:Ljava/util/Map;

.field public final clientStateMap:Ljava/util/Map;

.field public final contentRatingSystemList:Ljava/util/List;

.field public inputMap:Ljava/util/Map;

.field public final mAppTagMap:Ljava/util/Map;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mNextAppTag:I

.field public mainSessionToken:Landroid/os/IBinder;

.field public final packageSet:Ljava/util/Set;

.field public final persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

.field public final serviceStateMap:Ljava/util/Map;

.field public final sessionStateMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackPidUidMap:Ljava/util/Map;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 62
    .line 63
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mAppTagMap:Ljava/util/Map;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mNextAppTag:I

    .line 72
    .line 73
    new-instance v0, Lcom/android/server/tv/PersistentDataStore;

    .line 74
    .line 75
    invoke-direct {v0, p1, p2}, Lcom/android/server/tv/PersistentDataStore;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 79
    .line 80
    return-void
.end method
