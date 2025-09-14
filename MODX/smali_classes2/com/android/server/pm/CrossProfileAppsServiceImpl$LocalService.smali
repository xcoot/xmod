.class public final Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;
.super Landroid/content/pm/CrossProfileAppsInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/CrossProfileAppsInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-object v0, p2

    .line 21
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
