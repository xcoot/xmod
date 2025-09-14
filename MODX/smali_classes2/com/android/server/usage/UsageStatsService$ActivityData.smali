.class public final Lcom/android/server/usage/UsageStatsService$ActivityData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public lastEvent:I

.field public final mTaskRootClass:Ljava/lang/String;

.field public final mTaskRootPackage:Ljava/lang/String;

.field public final mUsageSourcePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mUsageSourcePackage:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method
