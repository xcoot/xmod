.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field public final synthetic val$callingUid:I

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 3
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    .line 9
    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    .line 11
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 18
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 20
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    .line 31
    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    .line 33
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 36
    move-result p0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(IILjava/lang/String;)Z

    .line 44
    return-void
.end method
