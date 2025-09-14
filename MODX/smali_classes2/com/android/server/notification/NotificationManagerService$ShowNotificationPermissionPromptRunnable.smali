.class public final Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPkgName:Ljava/lang/String;

.field public final mPpi:Lcom/android/server/policy/PermissionPolicyService$Internal;

.field public final mTaskId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/android/server/policy/PermissionPolicyService$Internal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

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
    check-cast p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    .line 20
    .line 21
    iget v2, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    .line 26
    .line 27
    iget p1, p1, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    .line 28
    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPpi:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mPkgName:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mUserId:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;->mTaskId:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
