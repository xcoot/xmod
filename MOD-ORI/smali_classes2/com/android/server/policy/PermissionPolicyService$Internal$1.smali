.class public final Lcom/android/server/policy/PermissionPolicyService$Internal$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityInterceptorCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .locals 8

    .line 1
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCallingPackage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    move-object v1, p1

    .line 21
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    .line 47
    .line 48
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    .line 55
    .line 56
    const/16 v3, 0xa

    .line 57
    .line 58
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget v1, p1, Landroid/app/TaskInfo;->userId:I

    .line 66
    .line 67
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-wide/32 v2, 0xb9cec21

    .line 72
    .line 73
    .line 74
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v2, v3, v4, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal$1;Landroid/content/pm/ActivityInfo;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    return-void
.end method

.method public final onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
