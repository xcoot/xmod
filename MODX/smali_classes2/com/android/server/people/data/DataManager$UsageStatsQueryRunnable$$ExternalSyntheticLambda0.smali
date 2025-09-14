.class public final synthetic Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
