.class public final synthetic Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsService$BinderService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService$BinderService;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsService$BinderService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsService$BinderService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    .line 9
    check-cast p1, Landroid/app/usage/AppStandbyInfo;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 12
    .line 13
    iget-object v4, p1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v3, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 31
    .line 32
    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 43
    :goto_1
    return p0
.end method
