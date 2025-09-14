.class public final Lcom/android/server/tv/TvInputManagerService$ServiceState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bound:Z

.field public callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

.field public final component:Landroid/content/ComponentName;

.field public final connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

.field public final hardwareDeviceRemovedBuffer:Ljava/util/List;

.field public final hardwareInputMap:Ljava/util/Map;

.field public final hdmiDeviceRemovedBuffer:Ljava/util/List;

.field public final hdmiDeviceUpdatedBuffer:Ljava/util/List;

.field public final isHardware:Z

.field public neverConnected:Z

.field public reconnecting:Z

.field public service:Landroid/media/tv/ITvInputService;

.field public final sessionTokens:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareDeviceRemovedBuffer:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceUpdatedBuffer:Ljava/util/List;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p3, "android.permission.TV_INPUT_HARDWARE"

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const/4 p2, 0x1

    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    move p1, p2

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 71
    .line 72
    iput-boolean p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->neverConnected:Z

    .line 73
    .line 74
    return-void
.end method
