.class public final Lcom/android/server/wm/MultiWindowSupportPolicyController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 11
    .line 12
    const-string v1, "BlockList"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v2, p1, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "com.samsung.android.multiwindow.ignore.nonresizable.setting"

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    move v0, v2

    .line 34
    :cond_2
    return v0
.end method

.method public static supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 8
    .line 9
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, -0x1

    .line 18
    if-ne v1, p1, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 26
    .line 27
    const/16 p1, 0x258

    .line 28
    .line 29
    if-lt p0, p1, :cond_4

    .line 30
    .line 31
    :cond_3
    :goto_0
    move v0, v2

    .line 32
    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public final checkSupportPolicyLocked(ILjava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 4
    .line 5
    const v1, -0x300001

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    and-int p0, p1, v1

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return p1

    .line 20
    :cond_1
    and-int/2addr p1, v1

    .line 21
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/high16 p0, 0x100000

    .line 33
    .line 34
    :goto_0
    or-int/2addr p1, p0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    const/high16 p0, 0x200000

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    return p1
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "[MultiWindowSupportPolicyController]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->dump(Ljava/io/PrintWriter;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->dump(Ljava/io/PrintWriter;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final initialize()V
    .locals 0

    .line 1
    return-void
.end method

.method public final supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZ)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/high16 p0, 0x100000

    .line 16
    .line 17
    and-int/2addr p0, p2

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    return v0

    .line 21
    :cond_2
    const/high16 p0, 0x200000

    .line 22
    .line 23
    and-int/2addr p0, p2

    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_3
    if-eqz p3, :cond_4

    .line 32
    .line 33
    return v0

    .line 34
    :cond_4
    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final updateAllTasksLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/wm/Task;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mIgnoreDevSettingForNonResizable:Z

    .line 8
    .line 9
    :cond_0
    iget-object p2, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p2, 0x0

    .line 19
    :goto_0
    iget v0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 20
    .line 21
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iput p0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 26
    .line 27
    return-void
.end method
