.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService$Internal;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService$Internal;ILjava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$0:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$3:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$0:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;->f$3:[I

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-direct {v3, v4, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 61
    .line 62
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 63
    .line 64
    aput p1, p0, v8

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    :cond_0
    return v8
.end method
