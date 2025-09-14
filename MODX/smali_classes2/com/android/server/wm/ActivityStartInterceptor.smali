.class public final Lcom/android/server/wm/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityOptions:Landroid/app/ActivityOptions;

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingPid:I

.field public mCallingUid:I

.field public mInTask:Lcom/android/server/wm/Task;

.field public mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mIntent:Landroid/content/Intent;

.field public mIsInterceptedForAliasActivity:Z

.field public mIsInterceptedForCarLife:Z

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mRInfo:Landroid/content/pm/ResolveInfo;

.field public mRealCallingPid:I

.field public mRealCallingUid:I

.field public mResolvedType:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mServiceContext:Landroid/content/Context;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v3, 0xc

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 17
    .line 18
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    move-object v2, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/wm/TaskFragment;

    .line 60
    .line 61
    :goto_1
    if-eqz v2, :cond_4

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    .line 71
    .line 72
    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 73
    .line 74
    new-array v15, v3, [Landroid/content/Intent;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 78
    .line 79
    aput-object v3, v15, v2

    .line 80
    .line 81
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 82
    .line 83
    filled-new-array {v2}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v16

    .line 87
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    const/4 v14, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 94
    .line 95
    const/4 v5, 0x2

    .line 96
    const/4 v11, 0x0

    .line 97
    move/from16 v6, p1

    .line 98
    .line 99
    move/from16 v9, p2

    .line 100
    .line 101
    invoke-virtual/range {v4 .. v16}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Landroid/content/IntentSender;

    .line 106
    .line 107
    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 108
    .line 109
    .line 110
    return-object v1
.end method

.method public final getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public final getInterceptorInfo(Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 18
    .line 19
    move-object v0, v9

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;-><init>(IIIIILandroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setCheckedOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setClearOptionsAnimationRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->build()Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public final hasAliasActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 6
    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hasCarLifeDisplay()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;IILandroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move/from16 v2, p7

    .line 3
    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    move/from16 v2, p8

    .line 4
    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    move-object/from16 v2, p2

    .line 5
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v2, p3

    .line 6
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p4

    .line 7
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    move-object/from16 v2, p5

    .line 8
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    move-object/from16 v2, p6

    .line 9
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    move-object/from16 v2, p9

    .line 10
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 v2, p10

    .line 11
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 12
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_6a

    .line 13
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 14
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 16
    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 17
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 18
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 20
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8, v6, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v5

    .line 21
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz v5, :cond_3

    const-string v7, "android"

    iget-object v8, v5, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 22
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 23
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 24
    :cond_1
    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v4, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 25
    const-string v4, "android.app.extra.RESTRICTION"

    const-string/jumbo v5, "policy_suspend_packages"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 27
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 28
    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 29
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 30
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v10, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move/from16 p4, v1

    move/from16 p5, v10

    move/from16 p6, v7

    move/from16 p7, v8

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 31
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v10, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v1

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v10

    move/from16 p6, v7

    move/from16 p7, v8

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 32
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v6, v1, v4, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    .line 33
    :cond_3
    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v4, v5, v7}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;Landroid/content/pm/UserPackage;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    .line 34
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v7, :cond_4

    .line 35
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4

    .line 36
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v3

    .line 37
    :goto_1
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v9, 0x4000000

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v8

    .line 38
    iget v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v1

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move/from16 p6, v9

    invoke-static/range {p1 .. p6}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Landroid/content/pm/UserPackage;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 39
    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 40
    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v7, 0x0

    .line 41
    iput-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 42
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 p1, v10

    move-object/from16 p2, v1

    move-object/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v5

    move/from16 p7, v4

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 43
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v6, v4, v1, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    :goto_2
    return v2

    .line 44
    :cond_5
    :goto_3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_9

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_6

    goto :goto_5

    .line 45
    :cond_6
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 47
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {v1, v8}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v1

    .line 49
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 50
    iget v9, v7, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v9, v2, :cond_7

    .line 51
    iget-object v9, v7, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_7

    if-eq v1, v2, :cond_8

    if-eq v1, v5, :cond_7

    .line 52
    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    move v1, v4

    :goto_4
    if-eqz v1, :cond_a

    :cond_9
    :goto_5
    move v1, v4

    goto :goto_6

    .line 53
    :cond_a
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/android/internal/app/BlockedAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 54
    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 55
    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v8, 0x0

    .line 56
    iput-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 57
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v11, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v1

    move-object/from16 p3, v8

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v7

    move/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 58
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v6, v7, v1, v8, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move v1, v2

    :goto_6
    if-eqz v1, :cond_b

    return v2

    :cond_b
    const/high16 v1, 0x54000000

    .line 59
    :try_start_0
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 61
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 62
    invoke-interface {v6, v7, v8}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_c

    :catch_0
    move v6, v4

    goto :goto_7

    .line 63
    :cond_c
    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v7

    .line 64
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v7, v6}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 65
    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 66
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v9, 0x0

    .line 67
    iput-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 68
    iget v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 p1, v12

    move-object/from16 p2, v6

    move-object/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v8

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 69
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v9, v7, v6, v8, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move v6, v2

    :goto_7
    if-eqz v6, :cond_d

    return v2

    .line 70
    :cond_d
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const/4 v7, -0x1

    const-string v8, "ActivityTaskManager"

    const-string v9, "android.intent.extra.PACKAGE_NAME"

    const-string v10, "android.intent.category.HOME"

    if-eqz v6, :cond_22

    .line 71
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-nez v6, :cond_e

    :goto_8
    move v1, v2

    :goto_9
    move/from16 v16, v4

    goto/16 :goto_13

    .line 72
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCarLifeDisplay()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_8

    .line 73
    :cond_f
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    if-eq v6, v7, :cond_10

    .line 74
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    goto :goto_a

    .line 75
    :cond_10
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_11

    .line 76
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v6

    goto :goto_a

    :cond_11
    move v6, v4

    .line 77
    :goto_a
    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v12, "android.intent.action.MAIN"

    if-nez v11, :cond_13

    :cond_12
    move v11, v4

    goto :goto_b

    .line 78
    :cond_13
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 79
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 80
    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    move v11, v2

    .line 81
    :goto_b
    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_15

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_15

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    if-ne v13, v14, :cond_15

    :cond_14
    :goto_c
    move v1, v4

    goto/16 :goto_12

    .line 82
    :cond_15
    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v14, "is_skip_intercept"

    invoke-virtual {v13, v14, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_16

    goto :goto_c

    .line 83
    :cond_16
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStartInterceptor;->getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v14

    iget-object v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v14, :cond_17

    goto :goto_e

    .line 85
    :cond_17
    iget-object v14, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v2

    :goto_d
    if-ltz v14, :cond_1a

    .line 86
    iget-object v5, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 87
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 88
    new-instance v7, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v6, v13, v1}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityStartInterceptor;ILjava/util/ArrayList;I)V

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 89
    :cond_18
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    goto :goto_11

    :cond_19
    add-int/lit8 v14, v14, -0x1

    const/high16 v1, 0x54000000

    const/4 v5, 0x2

    const/4 v7, -0x1

    goto :goto_d

    .line 90
    :cond_1a
    :goto_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStartInterceptor;->getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_10

    .line 92
    :cond_1b
    iget-object v5, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_f
    if-ltz v5, :cond_1e

    .line 93
    iget-object v7, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 94
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v13

    if-nez v13, :cond_1c

    .line 95
    new-instance v13, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;

    const/4 v14, 0x1

    invoke-direct {v13, v0, v6, v1, v14}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityStartInterceptor;ILjava/util/ArrayList;I)V

    invoke-virtual {v7, v13}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 96
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1d

    goto :goto_11

    :cond_1d
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    .line 97
    :cond_1e
    :goto_10
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 98
    const-string v5, "com.baidu.carlife"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.LAUNCHER"

    .line 99
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 100
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_11
    move v1, v2

    :goto_12
    if-nez v11, :cond_1f

    if-nez v1, :cond_1f

    goto/16 :goto_8

    .line 101
    :cond_1f
    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 102
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.carlink.action.HOME"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x10800000

    .line 103
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    const-string v13, "com.samsung.android.carlink"

    const-string v14, "com.samsung.android.carlink.common.StartInterceptorActivity"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v13, "android.intent.extra.USER_ID"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {v12, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string/jumbo v7, "orginal_intent"

    invoke-virtual {v12, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v17, 0x0

    move-object/from16 p4, v2

    move-object/from16 p5, v12

    move-object/from16 p6, v5

    move/from16 p7, v13

    move/from16 p8, v17

    move/from16 p9, v14

    move/from16 p10, v15

    invoke-virtual/range {p4 .. p10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 109
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v5, v12, v2, v13, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v2, :cond_21

    if-eqz v5, :cond_21

    .line 110
    iget v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 111
    iget v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 112
    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 113
    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v12, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const-string v7, "launch_display_id"

    invoke-virtual {v12, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v6, "is_back_to_home"

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v6, "is_restart_app"

    invoke-virtual {v12, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    iput-object v12, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 118
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 119
    iput-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 120
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_20

    .line 121
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 122
    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    .line 124
    const-string v2, "Start CarLifeStartInterceptActivity and handler intent"

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v1

    goto :goto_13

    :cond_21
    const/4 v1, 0x1

    goto/16 :goto_9

    :goto_13
    if-eqz v16, :cond_22

    return v1

    .line 125
    :cond_22
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    if-nez v1, :cond_23

    .line 126
    const-class v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 127
    :cond_23
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 128
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/PersonaManagerInternal;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 129
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    :goto_14
    move v1, v4

    goto/16 :goto_16

    .line 131
    :cond_25
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_27

    .line 132
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 133
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 134
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 135
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 136
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.action.INTERACTION_ICE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 137
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_26
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 138
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 139
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 140
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.incallui.call.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_14

    .line 141
    :cond_27
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->createLockdownIntent(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 142
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 143
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 144
    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 145
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_28

    .line 146
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v12, 0x0

    move-object/from16 p4, v11

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move/from16 p7, v5

    move/from16 p8, v12

    move/from16 p9, v6

    move/from16 p10, v7

    invoke-virtual/range {p4 .. p10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_15

    .line 147
    :cond_28
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v12, 0x0

    move-object/from16 p4, v11

    move-object/from16 p5, v2

    move-object/from16 p6, v5

    move/from16 p7, v1

    move/from16 p8, v12

    move/from16 p9, v6

    move/from16 p10, v7

    invoke-virtual/range {p4 .. p10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 148
    :goto_15
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6, v1, v2, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    :goto_16
    if-eqz v1, :cond_29

    const/4 v1, 0x1

    return v1

    .line 149
    :cond_29
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 150
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v5

    if-nez v5, :cond_2b

    :cond_2a
    :goto_17
    move-object v2, v3

    goto :goto_18

    .line 151
    :cond_2b
    iget v5, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2c

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 152
    invoke-virtual {v5, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-boolean v5, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v5, :cond_2c

    goto :goto_17

    .line 153
    :cond_2c
    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v6, 0x54000000

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v5

    .line 154
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    const-string v7, "keyguard"

    .line 155
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    const/4 v7, 0x1

    .line 156
    invoke-virtual {v6, v3, v3, v2, v7}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_17

    :cond_2d
    const v6, 0x10804000

    .line 157
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_2e

    .line 161
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 163
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 164
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/high16 v1, 0x8000000

    .line 165
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2e
    :goto_18
    const/4 v1, 0x5

    if-nez v2, :cond_2f

    move v2, v4

    goto/16 :goto_1e

    .line 166
    :cond_2f
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 167
    invoke-virtual {v5}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_30

    .line 168
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 169
    invoke-virtual {v6}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v6

    .line 170
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    .line 171
    :cond_30
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 172
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 173
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 174
    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 175
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v2, :cond_31

    goto :goto_1a

    .line 176
    :cond_31
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_32

    :goto_19
    move-object v2, v3

    goto :goto_1a

    .line 177
    :cond_32
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_33

    goto :goto_19

    .line 178
    :cond_33
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 179
    iget-object v5, v5, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 180
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    .line 181
    :goto_1a
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    const-string v6, "android.intent.extra.TASK_ID"

    if-eqz v5, :cond_38

    const/4 v7, 0x1

    .line 182
    invoke-virtual {v5, v7, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 183
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 184
    invoke-virtual {v2, v7, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    if-ne v2, v1, :cond_37

    .line 186
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_34

    .line 187
    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 188
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1b

    :cond_34
    move v2, v4

    .line 189
    :goto_1b
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_35

    .line 190
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_35

    move v2, v5

    .line 191
    :cond_35
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 192
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 193
    const-string v2, "Ignore setLaunchTaskId when dex mode."

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 194
    :cond_36
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_37

    .line 195
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 196
    :cond_37
    :goto_1c
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    goto :goto_1d

    :cond_38
    if-eqz v2, :cond_39

    .line 198
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 199
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    :cond_39
    :goto_1d
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_3a

    .line 201
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 202
    :cond_3a
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 203
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v11, 0x0

    move-object/from16 p3, v9

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v2

    move/from16 p7, v11

    move/from16 p8, v7

    move/from16 p9, v8

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 204
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v7, v5, v2, v6, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    :goto_1e
    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    return v2

    .line 205
    :cond_3b
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v5, :cond_3c

    goto :goto_1f

    .line 206
    :cond_3c
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-static {v5}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_3e

    :cond_3d
    :goto_1f
    move v2, v4

    goto :goto_20

    .line 207
    :cond_3e
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_1f

    .line 208
    :cond_3f
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 209
    iget-object v6, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 210
    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 211
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->shouldPlacePrimaryHomeOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_1f

    .line 212
    :cond_40
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v5

    if-nez v5, :cond_41

    goto :goto_1f

    .line 213
    :cond_41
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 214
    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object v2

    .line 215
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 216
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 218
    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v6, 0x0

    .line 219
    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 220
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 p3, v10

    move-object/from16 p4, v7

    move-object/from16 p5, v6

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v5

    move/from16 p9, v2

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 221
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v7, v5, v2, v6, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    :goto_20
    if-eqz v2, :cond_42

    const/4 v2, 0x1

    return v2

    .line 222
    :cond_42
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 223
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 224
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object v5

    move v6, v4

    .line 225
    :goto_21
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_45

    .line 226
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 227
    invoke-interface {v7, v5}, Lcom/android/server/wm/ActivityInterceptorCallback;->onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    move-result-object v7

    if-nez v7, :cond_43

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 228
    :cond_43
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 229
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 230
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 231
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 232
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->isActivityResolved()Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    return v1

    .line 233
    :cond_44
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v7

    move/from16 p4, v4

    move/from16 p5, v8

    move/from16 p6, v5

    move/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 234
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v2, v4, v1, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x1

    return v0

    .line 235
    :cond_45
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v2, :cond_46

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_46

    .line 236
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_22

    :cond_46
    move v2, v4

    .line 237
    :goto_22
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_47

    .line 238
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v5, 0x1

    goto :goto_23

    :cond_47
    move v5, v4

    .line 239
    :goto_23
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_48

    if-nez v5, :cond_48

    :goto_24
    move/from16 v16, v4

    const/4 v1, 0x1

    goto/16 :goto_33

    :cond_48
    if-eqz v6, :cond_49

    .line 240
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_49

    if-nez v5, :cond_49

    goto :goto_24

    .line 241
    :cond_49
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_4a

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v6, :cond_4a

    goto :goto_24

    .line 242
    :cond_4a
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_67

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_67

    iget v6, v6, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 243
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v6

    if-nez v6, :cond_4b

    goto/16 :goto_30

    .line 244
    :cond_4b
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4c

    goto :goto_24

    .line 246
    :cond_4c
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_4d

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v7

    goto :goto_25

    :cond_4d
    move v7, v4

    .line 247
    :goto_25
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_51

    .line 248
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_4e

    .line 249
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    .line 250
    invoke-static {v9}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 251
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v8

    goto :goto_26

    :cond_4e
    move v8, v4

    .line 252
    :goto_26
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_4f

    const/4 v9, 0x1

    goto :goto_27

    :cond_4f
    move v9, v4

    .line 253
    :goto_27
    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v10

    if-nez v10, :cond_50

    .line 254
    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v10

    .line 255
    :cond_50
    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_52

    move v7, v11

    goto :goto_28

    :cond_51
    move v8, v4

    move v9, v8

    move v10, v9

    .line 256
    :cond_52
    :goto_28
    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-nez v12, :cond_53

    .line 257
    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 258
    :cond_53
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v13

    if-eqz v13, :cond_55

    :cond_54
    :goto_29
    const/4 v1, 0x1

    goto :goto_2a

    .line 259
    :cond_55
    invoke-virtual {v12, v1, v4}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v13

    if-eqz v13, :cond_56

    goto :goto_29

    :cond_56
    if-nez v8, :cond_54

    if-ne v10, v1, :cond_57

    goto :goto_29

    :cond_57
    if-eqz v9, :cond_58

    goto :goto_29

    :cond_58
    move v1, v4

    .line 260
    :goto_2a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v10, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v10, v13, v11, v9}, Lcom/android/server/wm/MultiInstanceController;->findAliasManagedTaskInPackage(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 262
    new-instance v10, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 263
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    if-eqz v2, :cond_5c

    .line 264
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    .line 265
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v12

    if-eqz v12, :cond_5a

    goto :goto_2b

    .line 266
    :cond_5a
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v12

    if-eqz v12, :cond_59

    .line 267
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    if-eqz v8, :cond_5b

    .line 268
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    :cond_5b
    :goto_2c
    const/4 v1, 0x1

    const/16 v16, 0x1

    goto/16 :goto_33

    .line 269
    :cond_5c
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_5d

    if-eqz v5, :cond_64

    :cond_5d
    move v2, v4

    .line 270
    :goto_2d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_62

    .line 271
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 272
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v8

    if-eq v8, v7, :cond_5f

    .line 273
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_5e

    if-ne v7, v10, :cond_61

    .line 274
    :cond_5e
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    goto :goto_2c

    :cond_5f
    const/4 v10, 0x2

    .line 275
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 276
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 277
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    goto :goto_2c

    .line 278
    :cond_60
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_61
    const/4 v5, 0x1

    add-int/2addr v2, v5

    goto :goto_2d

    :cond_62
    const/4 v5, 0x1

    if-nez v1, :cond_66

    .line 279
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_63

    goto :goto_2f

    .line 280
    :cond_63
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_66

    .line 281
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 282
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    const/4 v5, 0x1

    goto :goto_2f

    :cond_64
    if-eqz v8, :cond_66

    .line 283
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 284
    invoke-virtual {v10, v8}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 285
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_2e

    :cond_65
    move-object v2, v3

    .line 286
    :goto_2e
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_66

    .line 287
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 288
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    goto/16 :goto_2c

    :cond_66
    move v5, v4

    :goto_2f
    if-nez v1, :cond_68

    if-eqz v5, :cond_67

    goto :goto_31

    :cond_67
    :goto_30
    const/4 v1, 0x1

    goto :goto_32

    .line 289
    :cond_68
    :goto_31
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 290
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 293
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 294
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    move-object/from16 p1, v7

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v5

    move/from16 p5, v8

    move/from16 p6, v9

    move/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 295
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v5, v1, v2, v6, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v2, :cond_67

    if-eqz v3, :cond_67

    .line 296
    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 297
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 298
    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    .line 299
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    move/from16 v16, v1

    goto :goto_33

    :goto_32
    move/from16 v16, v4

    :goto_33
    if-eqz v16, :cond_69

    return v1

    :cond_69
    return v4

    .line 300
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " intercepted for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const-string v4, " because quiet mode is enabled."

    const-string v5, "ActivityStartInterceptor"

    .line 301
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x50000000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v1

    .line 303
    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v2, v1, v4}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 304
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 305
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 306
    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 307
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 308
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v8, 0x0

    move-object/from16 p1, v7

    move-object/from16 p2, v2

    move-object/from16 p3, v4

    move/from16 p4, v1

    move/from16 p5, v8

    move/from16 p6, v5

    move/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 309
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v2, v1, v4, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x1

    return v0
.end method

.method public final resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V
    .locals 8

    .line 1
    new-instance v7, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 20
    .line 21
    invoke-virtual {v7, p1}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 25
    .line 26
    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 27
    .line 28
    const/16 v5, 0x3e8

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v1, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 46
    .line 47
    invoke-virtual {v2, v7, p1, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iput-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    :cond_0
    return-void
.end method
