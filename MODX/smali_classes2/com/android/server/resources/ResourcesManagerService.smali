.class public final Lcom/android/server/resources/ResourcesManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mService:Lcom/android/server/resources/ResourcesManagerService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/resources/ResourcesManagerService$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/resources/ResourcesManagerService$1;-><init>(Lcom/android/server/resources/ResourcesManagerService;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "resources"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/res/ResourceTimer;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
