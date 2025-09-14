.class public final synthetic Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageStats;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/PackageStats;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$2:Landroid/os/UserHandle;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/PackageStats;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$2:Landroid/os/UserHandle;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;->f$3:Z

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2, p0}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
