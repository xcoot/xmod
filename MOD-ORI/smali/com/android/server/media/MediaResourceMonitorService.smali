.class public final Lcom/android/server/media/MediaResourceMonitorService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final mServiceEnabled:Z


# instance fields
.field public final mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaResourceMonitor"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;-><init>(Lcom/android/server/media/MediaResourceMonitorService;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "media_resource_monitor"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
