.class public final synthetic Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 3
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    .line 8
    return-void
.end method
