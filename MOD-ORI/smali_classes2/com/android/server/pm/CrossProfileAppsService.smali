.class public final Lcom/android/server/pm/CrossProfileAppsService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsService;->mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "crossprofileapps"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsService;->mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
