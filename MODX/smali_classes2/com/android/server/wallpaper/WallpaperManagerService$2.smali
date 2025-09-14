.class public final Lcom/android/server/wallpaper/WallpaperManagerService$2;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidStateChanged(IIJI)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    const/4 p3, 0x0

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, p3

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    array-length p5, p4

    .line 18
    :goto_1
    if-ge p3, p5, :cond_4

    .line 19
    .line 20
    aget-object v0, p4, p3

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_1
    if-nez p1, :cond_2

    .line 30
    .line 31
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 38
    .line 39
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    .line 49
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 50
    .line 51
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 79
    .line 80
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;

    .line 81
    .line 82
    invoke-direct {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;-><init>(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    monitor-exit p2

    .line 92
    return-void

    .line 93
    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method
