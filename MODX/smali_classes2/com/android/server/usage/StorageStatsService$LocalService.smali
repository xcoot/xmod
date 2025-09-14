.class public final Lcom/android/server/usage/StorageStatsService$LocalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/StorageStatsManagerLocal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$LocalService;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final registerStorageStatsAugmenter(Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$LocalService;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
