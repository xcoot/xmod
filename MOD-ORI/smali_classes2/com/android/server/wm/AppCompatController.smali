.class public final Lcom/android/server/wm/AppCompatController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

.field public final mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

.field public final mAppCompatSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

.field public final mDesktopAppCompatAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

.field public final mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/server/wm/utils/OptPropFactory;

    .line 13
    .line 14
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/utils/OptPropFactory;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 20
    .line 21
    invoke-direct {v0, p2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/wm/TransparentPolicy;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 29
    .line 30
    invoke-direct {v2, p2, v3}, Lcom/android/server/wm/TransparentPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 34
    .line 35
    new-instance v3, Lcom/android/server/wm/AppCompatOverrides;

    .line 36
    .line 37
    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 38
    .line 39
    invoke-direct {v3, p2, v4, v1, v0}, Lcom/android/server/wm/AppCompatOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/wm/AppCompatOrientationPolicy;

    .line 45
    .line 46
    invoke-direct {v0, p2, v3}, Lcom/android/server/wm/AppCompatOrientationPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 52
    .line 53
    invoke-direct {v0, p2, v2, v3}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 57
    .line 58
    new-instance v0, Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 59
    .line 60
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 61
    .line 62
    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 68
    .line 69
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 70
    .line 71
    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 75
    .line 76
    new-instance v0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 79
    .line 80
    invoke-direct {v0, p2, v3, v2, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mDesktopAppCompatAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    .line 84
    .line 85
    new-instance p1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 86
    .line 87
    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 91
    .line 92
    return-void
.end method
