.class public final synthetic Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageStats;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageStats;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageStats;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 6
    .line 7
    invoke-interface {p1, v0, p0}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
