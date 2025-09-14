.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Predicate;

    .line 6
    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Predicate;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
