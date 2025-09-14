.class public final Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 6
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 8
    iput-object p3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 10
    iput-object p4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 12
    return-void
.end method
