.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/server/wm/SafeActivityOptions;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$6:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$2:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$4:Landroid/os/IBinder;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$6:Landroid/os/IBinder;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$2:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$4:Landroid/os/IBinder;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$6:Landroid/os/IBinder;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 18
    .line 19
    iget v6, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v7, 0x0

    .line 32
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object v9, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string/jumbo v10, "startActivityInTaskFragment"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v10}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 52
    .line 53
    iput-object v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 54
    .line 55
    iput-object v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 56
    .line 57
    iput-object v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 58
    .line 59
    const/4 v1, -0x1

    .line 60
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 61
    .line 62
    iput-object v9, v2, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 63
    .line 64
    iput v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 65
    .line 66
    iget v1, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 67
    .line 68
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 69
    .line 70
    iput v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 71
    .line 72
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 73
    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    iget v1, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 86
    .line 87
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 88
    .line 89
    iput-object p0, v2, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    return p0
.end method
