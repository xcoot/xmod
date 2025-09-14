.class public final synthetic Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageStats;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageStats;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageStats;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageStats;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 8
    .line 9
    invoke-interface {p1, v0, v1, p0}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
