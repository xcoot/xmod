.class public Lcom/android/server/wm/MultiWindowShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final CMD_ADD_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "add-split-activity"

.field private static final CMD_ALLOW_MULTIWINDOW:Ljava/lang/String; = "allow-multiwindow"

.field private static final CMD_BLOCK_MULTIWINDOW:Ljava/lang/String; = "block-multiwindow"

.field private static final CMD_DUMP_EMBED_ACTIVITY_INFO:Ljava/lang/String; = "dump-embed-activity"

.field private static final CMD_DUMP_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "dump-split-activity"

.field private static final CMD_GET_EMBED_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "get-embed-activity-package-enabled"

.field private static final CMD_GET_SPLIT_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "get-split-activity-package-enabled"

.field private static final CMD_GET_TASKID_FROM_PACKAGE_NAME:Ljava/lang/String; = "getTaskIdFromPackageName"

.field private static final CMD_MINIMIZE_ALL:Ljava/lang/String; = "minimize-all"

.field private static final CMD_MINIMIZE_ALL_INTENT:Ljava/lang/String; = "minimize-all-intent"

.field private static final CMD_MW_DYNAMIC_ENABLED:Ljava/lang/String; = "support"

.field private static final CMD_REMOVE_FOCUSED_TASK:Ljava/lang/String; = "removeFocusedTask"

.field private static final CMD_REMOVE_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "remove-split-activity"

.field private static final CMD_SET_DEX_SIZE_COMPAT_MODE_ASPECT_RATIO_SCALE:Ljava/lang/String; = "setDexSizeCompatModeAspectRatioScale"

.field private static final CMD_SET_DEX_SIZE_COMPAT_MODE_DEFAULT_SCALE:Ljava/lang/String; = "setDexSizeCompatModeDefaultScale"

.field private static final CMD_SET_EMBED_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "set-embed-activity-package-enabled"

.field private static final CMD_SET_MULTISTAR_ENSURE_LAUNCH_SPLIT:Ljava/lang/String; = "setMultiStarEnsureLaunchSplit"

.field private static final CMD_SET_NAVSTAR_IMMERSIVE_MODE:Ljava/lang/String; = "setNavStarImmersiveMode"

.field private static final CMD_SET_SIZE_COMPAT_LAUNCH_POLICY:Ljava/lang/String; = "setSizeCompatLaunchPolicy"

.field private static final CMD_SET_SPLIT_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "set-split-activity-package-enabled"

.field private static final CMD_SHOW_ALL_COMMANDS:Ljava/lang/String; = "showall"

.field private static final CMD_SPLIT_IMMERSIVE:Ljava/lang/String; = "split-immersive"

.field private static final CMD_TOP_TASK_SUPPORTS_MULTIWINDOW:Ljava/lang/String; = "top-task-supports-mw"

.field private static final CMD_VISIBLETASKS:Ljava/lang/String; = "visibletasks"

.field private static final SUPPORTS_ALL_COMMANDS:Z = false


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mCommandMethods:Ljava/util/HashMap;

.field private mInitialized:Z

.field private final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public static synthetic $r8$lambda$vvsjX_ym00jUigIyeM5fHI8DjRc(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/MultiWindowShellCommand;->lambda$cmdShowAllCommands$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    .line 20
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 26
    .line 27
    return-void
.end method

.method private initCommands()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-class v0, Lcom/android/server/wm/MultiWindowShellCommand;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    const-class v4, Lcom/android/server/wm/MWCommandInfo;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const-class v4, Lcom/android/server/wm/MWCommandInfo;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/android/server/wm/MWCommandInfo;

    .line 33
    .line 34
    invoke-interface {v4}, Lcom/android/server/wm/MWCommandInfo;->supportsReleaseBuild()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-interface {v4}, Lcom/android/server/wm/MWCommandInfo;->cmd()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    .line 54
    .line 55
    return-void
.end method

.method private invokeCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1
    const-string v0, "invoke cmd="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/reflect/Method;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "    method="

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return p0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_0
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method private static synthetic lambda$cmdShowAllCommands$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    const-string v0, "cmd="

    .line 2
    .line 3
    const-string v1, "    method="

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private printHelp(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    const-string p0, "MultiWindow Shell Commands:"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "adb shell dumpsys activity mt : print all about multi-tasking"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public cmdAddSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "add-split-activity"
        supportsReleaseBuild = true
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public cmdAllowMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "allow-multiwindow"
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x2

    .line 6
    if-lt v1, v2, :cond_4

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    aget-object p2, p1, p2

    .line 10
    .line 11
    aget-object p1, p1, v0

    .line 12
    .line 13
    const-string v1, "add"

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 30
    .line 31
    const-string v1, "AllowList"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {p2, v3, v2, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 40
    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->addPackage(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v1, "remove"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_5

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 64
    .line 65
    if-nez p0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->removePackage(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-string p0, "Error: allow-multiwindow  option requires [add/remove] [packageName]"

    .line 73
    .line 74
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_0
    return v0
.end method

.method public cmdBlockMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "block-multiwindow"
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x2

    .line 6
    if-lt v1, v2, :cond_4

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    aget-object p2, p1, p2

    .line 10
    .line 11
    aget-object p1, p1, v0

    .line 12
    .line 13
    const-string v1, "add"

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 30
    .line 31
    const-string v1, "BlockList"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {p2, v3, v2, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 45
    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 47
    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->addPackage(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v1, "remove"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 69
    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->removePackage(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-string p0, "Error: block-multiwindow  option requires [add/remove] [packageName]"

    .line 78
    .line 79
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_0
    return v0
.end method

.method public cmdDumpEmbedActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dump-embed-activity"
    .end annotation

    .line 1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    const-string p1, "    "

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "ActivityEmbeddedPackageRepository : "

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 25
    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string p1, "Empty"

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 44
    .line 45
    check-cast p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 58
    .line 59
    check-cast p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "    "

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "    "

    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    monitor-exit p0

    .line 95
    :goto_1
    const/4 p0, 0x1

    .line 96
    return p0

    .line 97
    :goto_2
    monitor-exit p0

    .line 98
    throw p1
.end method

.method public cmdDumpSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dump-split-activity"
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public cmdGetEmbedActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "get-embed-activity-package-enabled"
    .end annotation

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    const/4 v3, 0x2

    .line 12
    if-lt v2, v3, :cond_2

    .line 13
    .line 14
    aget-object v1, p1, v1

    .line 15
    .line 16
    aget-object p1, p1, v0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const-string p1, " activity embedding "

    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const-string p0, "Enabled"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p0, "Disabled"

    .line 46
    .line 47
    :goto_0
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string p0, "Error: get-embed-activity-package-enabled  option requires [packageName, userId]"

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return v0
.end method

.method public cmdGetSplitActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "get-split-activity-package-enabled"
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public cmdGetTaskIdFromPackageName([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "getTaskIdFromPackageName"
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aget-object p1, p1, v0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTaskInfoFromPackageName(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Result = "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public cmdGetVisibleTasks([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "visibletasks"
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Result = "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public cmdImmersiveSplitMode([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "split-immersive"
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string/jumbo v2, "on"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string/jumbo v1, "off"

    .line 19
    .line 20
    .line 21
    aget-object v3, p1, v0

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :cond_0
    aget-object p1, p1, v0

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setSplitImmersiveModeLocked(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string p0, "Invalid argument: split-immersive  option requires [on/off]"

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public cmdMinimizeAll([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "minimize-all"
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    array-length v0, p1

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    aget-object p1, p1, p2

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 23
    .line 24
    .line 25
    return p1
.end method

.method public cmdMinimizeAllIntent([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "minimize-all-intent"
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string p2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public cmdMultiWindowOnAndOff([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "support"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    array-length v2, p1

    .line 13
    if-lez v2, :cond_2

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    const-string/jumbo v3, "on"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string/jumbo v2, "off"

    .line 27
    .line 28
    .line 29
    aget-object v4, p1, v1

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    :cond_0
    aget-object p2, p1, v1

    .line 38
    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    array-length v1, p1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-le v1, v2, :cond_1

    .line 46
    .line 47
    aget-object v1, p1, v2

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    aget-object p1, p1, v2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string/jumbo p1, "shell_command"

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 66
    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 68
    .line 69
    .line 70
    monitor-enter v3

    .line 71
    :try_start_0
    invoke-virtual {p0, v0, p1, p1, p2}, Lcom/android/server/wm/MultiWindowEnableController;->setEnableForUser(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    return v2

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_2
    const-string p0, "Error: support  option requires [on/off]"

    .line 86
    .line 87
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v1
.end method

.method public cmdRemoveFocusedTask([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "removeFocusedTask"
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Result = "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aget-object p1, p1, v1

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public cmdRemoveSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "remove-split-activity"
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public cmdSetDexSizeCompatModeAspectRatioScale([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "setDexSizeCompatModeAspectRatioScale"
    .end annotation

    .line 1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_MODE:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    array-length p0, p1

    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 11
    .line 12
    aget-object p1, p1, v0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Request: aspectRatioScale="

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "Results:"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/wm/DexSizeCompatController;->mAspectRatioScale:F

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "  aspectRatioScale(old)="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    cmpl-float v0, p1, v0

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/wm/DexSizeCompatController;->mAspectRatioScale:F

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "  aspectRatioScale(new)="

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget p0, p0, Lcom/android/server/wm/DexSizeCompatController;->mAspectRatioScale:F

    .line 77
    .line 78
    invoke-static {p1, p0, p2}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :cond_2
    :goto_0
    return v0
.end method

.method public cmdSetDexSizeCompatModeDefaultScale([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "setDexSizeCompatModeDefaultScale"
    .end annotation

    .line 1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_MODE:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    array-length p0, p1

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 11
    .line 12
    aget-object p1, p1, v0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Request: defaultScale="

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "Results:"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "  defaultScale(old)="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    cmpl-float v0, p1, v0

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "  defaultScale(new)="

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget p0, p0, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 77
    .line 78
    invoke-static {p1, p0, p2}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :cond_2
    :goto_0
    return v0
.end method

.method public cmdSetEmbedActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "set-embed-activity-package-enabled"
    .end annotation

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    const/4 v3, 0x3

    .line 12
    if-lt v2, v3, :cond_1

    .line 13
    .line 14
    aget-object p2, p1, v1

    .line 15
    .line 16
    aget-object v1, p1, v0

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x2

    .line 27
    aget-object p1, p1, v2

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 40
    .line 41
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p0, "Error: set-embed-activity-package-enabled  option requires [packageName, enabled, userId]"

    .line 46
    .line 47
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return v0
.end method

.method public cmdSetMultiStarEnsureLaunchSplit([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "setMultiStarEnsureLaunchSplit"
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    aget-object p1, p1, v1

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, " enabled="

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setEnsureLaunchSplitEnabled(Z)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public cmdSetNavStarImmersiveMode([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "setNavStarImmersiveMode"
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    aget-object p1, p1, v1

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, " enabled="

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setNaviBarImmersiveModeLocked(Z)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public cmdSetSizeCompatLaunchPolicy([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "setSizeCompatLaunchPolicy"
    .end annotation

    .line 1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    array-length p0, p1

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget-object p0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 12
    .line 13
    aget-object p1, p1, v0

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Request: launchPolicy="

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "Results:"

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "  launchPolicy(old)="

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    if-eq p1, v0, :cond_3

    .line 73
    .line 74
    iget v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 75
    .line 76
    if-eq p1, v0, :cond_2

    .line 77
    .line 78
    if-ltz p1, :cond_2

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    if-le p1, v0, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "LaunchPolicy is changed from "

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " to "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "SizeCompatPolicy"

    .line 109
    .line 110
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iput p1, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 114
    .line 115
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v0, "  launchPolicy(new)="

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget p0, p0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 123
    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    const/4 p0, 0x1

    .line 139
    return p0

    .line 140
    :cond_4
    :goto_1
    return v0
.end method

.method public cmdSetSplitActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "set-split-activity-package-enabled"
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public cmdShowAllCommands([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "showall"
        supportsReleaseBuild = true
    .end annotation

    .line 1
    const-string p1, "[Commands    SUPPORTS_ALL_COMMANDS=false]"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public cmdTopTaskSupportsMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "top-task-supports-mw"
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportsMultiWindow(Landroid/os/IBinder;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, " supports multiwindow = "

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string/jumbo p0, "top activity is null"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 2

    .line 1
    const-string v0, "Unknown command: "

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowShellCommand;->initCommands()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowShellCommand;->invokeCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    if-eqz p1, :cond_2

    .line 29
    .line 30
    :try_start_1
    const-string p2, "help"

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    const-string p2, "-h"

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/server/wm/MultiWindowShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    .line 61
    .line 62
    const/4 p0, -0x1

    .line 63
    return p0

    .line 64
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    new-array v2, v2, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/MultiWindowShellCommand;->execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
