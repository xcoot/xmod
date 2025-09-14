.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$14;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$activityManager:Landroid/app/ActivityManager;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/app/ActivityManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$activityManager:Landroid/app/ActivityManager;

    .line 5
    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$packageName:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$activityManager:Landroid/app/ActivityManager;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$packageName:Ljava/lang/String;

    .line 7
    iget v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 12
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 14
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 21
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$packageName:Ljava/lang/String;

    .line 23
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(IILjava/lang/String;)Z

    .line 32
    return-void
.end method
