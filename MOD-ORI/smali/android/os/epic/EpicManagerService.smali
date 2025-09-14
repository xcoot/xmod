.class public final Landroid/os/epic/EpicManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final FEATURE_ACTIVITY:J = 0x1L

.field private static final FEATURE_PROPERTY_KEY:Ljava/lang/String; = "vendor.epic.feature"

.field private static final FEATURE_WEB:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "EpicManagerService"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mChromeDetector:Landroid/os/epic/EpicChromeDetector;

.field private final mContext:Landroid/content/Context;

.field private mDisplayHandlerThread:Landroid/os/HandlerThread;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUidObserver:Landroid/os/epic/EpicUidObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mUidObserver:Landroid/os/epic/EpicUidObserver;

    .line 8
    .line 9
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    iput-object p1, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/epic/EpicManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/epic/IEpicManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "epic"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public systemReady()V
    .locals 6

    .line 1
    :try_start_0
    const-string/jumbo v0, "vendor.epic.feature"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    and-long v4, v0, v2

    .line 13
    .line 14
    cmp-long v2, v4, v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, p0, Landroid/os/epic/EpicManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    const-wide/16 v2, 0x2

    .line 33
    .line 34
    and-long/2addr v0, v2

    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Landroid/os/epic/EpicChromeDetector;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/epic/EpicChromeDetector;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 45
    .line 46
    iget-object v0, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo v1, "display"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 56
    .line 57
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 58
    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    .line 60
    .line 61
    const-string v1, "DisplayChange"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    .line 70
    .line 71
    new-instance v0, Landroid/os/epic/EpicDisplayListener;

    .line 72
    .line 73
    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Landroid/os/epic/EpicDisplayListener;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 79
    .line 80
    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 81
    .line 82
    new-instance v2, Landroid/os/Handler;

    .line 83
    .line 84
    iget-object v3, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/epic/EpicUidObserver;

    .line 100
    .line 101
    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v2, p0, Landroid/os/epic/EpicManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    .line 105
    iget-object v3, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 106
    .line 107
    iget-object v4, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/epic/EpicUidObserver;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/IActivityManager;Landroid/os/epic/EpicChromeDetector;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mUidObserver:Landroid/os/epic/EpicUidObserver;

    .line 113
    .line 114
    iget-object p0, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    const/4 v2, 0x3

    .line 118
    invoke-interface {p0, v0, v2, v2, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :goto_1
    const-string v0, "EPICSVC"

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_2
    return-void
.end method
