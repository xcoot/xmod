.class public final synthetic Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

.field public final synthetic f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$2:Landroid/app/TaskInfo;

.field public final synthetic f$3:Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService$Internal$1;Landroid/content/pm/ActivityInfo;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/TaskInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/TaskInfo;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget v3, v2, Landroid/app/TaskInfo;->userId:I

    .line 15
    .line 16
    iget v2, v2, Landroid/app/TaskInfo;->taskId:I

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
